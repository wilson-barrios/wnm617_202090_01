<?php


function makeConn() {
   include_once "auth.php";
   try {
      $conn = new PDO(...makePDOAuth());
      $conn->setAttribute(
         PDO::ATTR_ERRMODE,
         PDO::ERRMODE_EXCEPTION
      );
   } catch(PDOException $e) {
      die('{"error":"'.$e->getMessage().'"}');
   }
   return $conn;
}


function fetchAll($r) {
   $a = [];
   while($row = $r->fetch(PDO::FETCH_OBJ))
      $a[] = $row;
   return $a;
}


// connection, prepared statement, parameters
function makeQuery($c,$ps,$p,$makeResults=true) {
   try {
      if(count($p)) {
         $stmt = $c->prepare($ps);
         $stmt->execute($p);
      } else {
         $stmt = $c->query($ps);
      }

      $r = $makeResults ? fetchAll($stmt) : [];

      return [
         "result"=>$r
      ];

   } catch(PDOException $e) {
      return [
         "error"=>"Query Failed: ".$e->getMessage()
      ];
   }
}








function makeUpload($file,$folder) {
   $filename = microtime(true) . "_" . $_FILES[$file]['name'];

   if(@move_uploaded_file(
      $_FILES[$file]['tmp_name'],
      $folder.$filename
   )) return ['result'=>$filename];
   else return [
      "error"=>"File Upload Failed",
      "_FILES"=>$_FILES,
      "filename"=>$filename
   ];
}









function makeStatement($data) {
   $c = makeConn();
   $t = $data->type;
   $p = $data->params;

   switch($t) {

      case "users_all":
         return makeQuery($c,"SELECT * FROM `track_users`",$p);
      case "trucks_all":
         return makeQuery($c,"SELECT * FROM `track_trucks`",$p);
      case "locations_all":
         return makeQuery($c,"SELECT * FROM `track_locations`",$p);


      case "user_by_id":
         return makeQuery($c,"SELECT id,name,username,email,date_create,img FROM `track_users` WHERE `id`=?",$p);
      case "truck_by_id":
         return makeQuery($c,"SELECT * FROM `track_trucks` WHERE `id`=?",$p);
      case "location_by_id":
         return makeQuery($c,"SELECT * FROM `track_locations` WHERE `id`=?",$p);


      case "trucks_by_user_id":
         return makeQuery($c,"SELECT * FROM `track_trucks` WHERE `user_id`=?",$p);
      case "locations_by_truck_id":
         return makeQuery($c,"SELECT * FROM `track_locations` WHERE `truck_id`=?",$p);


      case "check_signin":
         return makeQuery($c,"SELECT * FROM `track_users` WHERE `username`=? AND `password`=md5(?)",$p);


      case "recent_locations":
         return makeQuery($c,"SELECT *
            FROM `track_trucks` a
            RIGHT JOIN (
               SELECT * FROM `track_locations`
               ORDER BY `date_create` DESC
            ) l
            ON a.id = l.truck_id
            WHERE a.user_id=?
            GROUP BY l.truck_id
            ",$p);




      /* ----- SEARCH ------ */
      case "search_trucks":
         $p = ["%$p[0]%",$p[1]];
         return makeQuery($c,"SELECT * FROM
            `track_trucks`
            WHERE
               `name` LIKE ? AND
               `user_id` = ?
            ",$p);
      case "filter_trucks":
         return makeQuery($c,"SELECT * FROM
            `track_trucks`
            WHERE
               `$p[0]` = ? AND
               `user_id` = ?
            ",[$p[1],$p[2]]);





      /* ----- CRUD ------ */

      // INSERTS
      case "insert_user":

         // Check for duplicate users
         $r = makeQuery($c,"SELECT * FROM `track_users` WHERE `username`=? OR `email`=?",[$p[0],$p[1]]);
         if(count($r['result'])) return ["error"=>"Username or Email already exists"];

         // Create new user
         $r = makeQuery($c,"INSERT INTO
            `track_users`
            (`name`,`username`,`email`,`password`,`img`,`date_create`)
            VALUES
            ('',?, ?, md5(?), 'https://via.placeholder.com/400?text=USER', NOW())
            ",$p);
         return ["id"=>$c->lastInsertId()];

      case "insert_truck":
         $r = makeQuery($c,"INSERT INTO
            `track_trucks`
            (`user_id`,`name`,`type`,`dishes`,`description`,`img`,`date_create`)
            VALUES
            (?, ?, ?, ?, ?, 'https://via.placeholder.com/400?text=ANIMAL', NOW())
            ",$p);
         return ["id"=>$c->lastInsertId()];

      case "insert_location":
         $r = makeQuery($c,"INSERT INTO
            `track_locations`
            (`truck_id`,`lat`,`lng`,`description`,`photo`,`icon`,`date_create`)
            VALUES
            (?, ?, ?, ?, 'https://via.placeholder.com/400?text=Photo', 'https://via.placeholder.com/100?text=Icon', NOW())
            ",$p);
         return [
            "r"=>$r,
            "p"=>$p,
            "id"=>$c->lastInsertId()];



      // UPDATE

      case "update_user":
         $r = makeQuery($c,"UPDATE
            `track_users`
            SET
            `username` = ?,
            `name` = ?,
            `email` = ?
            WHERE `id` = ?
            ",$p,false);
         return ["result"=>"success"];
      case "update_user_image":
         $r = makeQuery($c,"UPDATE
            `track_users`
            SET
            `img` = ?
            WHERE `id` = ?
            ",$p,false);
         return ["result"=>"success"];

      case "update_truck":
         $r = makeQuery($c,"UPDATE
            `track_trucks`
            SET
            `name` = ?,
            `type` = ?,
            `dishes` = ?,
            `description` = ?
            WHERE `id` = ?
            ",$p,false);
         return ["result"=>"success"];


      // DELETE

      case "delete_truck":
         return makeQuery($c,"DELETE FROM `track_trucks` WHERE `id`=?",$p,false);

      case "delete_location":
         return makeQuery($c,"DELETE FROM `track_locations` WHERE `id`=?",$p,false);





      default: return ["error"=>"No Matched Type"];
   }
}





if(!empty($_FILES)) {
   $r = makeUpload("image","../uploads/");
   die(json_encode($r));
}






$data = json_decode(file_get_contents("php://input"));

echo json_encode(
   makeStatement($data),
   JSON_NUMERIC_CHECK
);