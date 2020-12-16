
const checkSignupForm = () => {
   let username = $("#signup-username").val();
   let email = $("#signup-email").val();
   let password = $("#signup-password").val();
   let passwordconfirm = $("#signup-password-confirm").val();

   if(password!=passwordconfirm) {
      throw "Passwords don't match";
      return;
   } else {
      query({type:'insert_user',params:[username,email,password]})
      .then(d=>{
         if(d.error) {
            throw d.error;
         }
         console.log(d);
         $.mobile.navigate("#signin-page");
      })
   }
}

const checkUserEditForm = () => {
   let username = $("#user-edit-username").val();
   let name = $("#user-edit-name").val();
   let email = $("#user-edit-email").val();

   query({
      type:'update_user',
      params:[username,name,email,sessionStorage.userId]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }
      window.history.go(-2);
   })
}



const checkTruckAddForm = () => {
   let name = $("#truck-add-name").val();
   let type = $("#truck-add-type").val();
   let breed = $("#truck-add-breed").val();
   let description = $("#truck-add-description").val();
   let image = $("#truck-add-image").val();

   query({
      type:'insert_truck',
      params:[sessionStorage.userId,name,type,breed,description,image]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }

      $("#truck-add-form")[0].reset();

      console.log(d);
      sessionStorage.truckId = d.id;
      $.mobile.navigate($("#truck-add-destination").val());
   })
}
const checkTruckEditForm = () => {
   let name = $("#truck-edit-name").val();
   let type = $("#truck-edit-type").val();
   let dishes = $("#truck-edit-dishes").val();
   let description = $("#truck-edit-description").val();
   let image = $("#truck-edit-image").val();

   query({
      type:'update_truck',
      params:[name,type,dishes,description,image,sessionStorage.truckId]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }
      window.history.back();
   })
}










const checkLocationAddForm = () => {
   let lat = $("#location-add-lat").val();
   let lng = $("#location-add-lng").val();
   let description = $("#location-add-description").val();

   query({
      type:'insert_location',
      params:[sessionStorage.truckId,+lat,+lng,description]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }

      $("#location-add-form")[0].reset();

      console.log(d);

      window.history.go(-2);
   })
}






const checktruckDelete = id => {
   query({
      type:'delete_truck',
      params:[id]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }
      window.history.back();
   })
}







const checkSearchForm = async() => {
   let s = $("#list-search-input").val()
   console.log(s);

   let r = await query({
      type:"search_trucks",
      params:[s,sessionStorage.userId]
   })

   drawtruckList(r.result,"Search produced no results.");

   console.log(r)
}



const checkListFilter = async ({field,value}) => {
   let r = value=="" ?
      await query({
         type:'trucks_by_user_id',
         params:[sessionStorage.userId]
      }) :
      await query({
         type:'filter_trucks',
         params:[field,value,sessionStorage.userId]
      });

   drawTruckList(r.result,"Search produced no results.");
}








const checkUpload = file => {
   let fd = new FormData();
   fd.append("image",file);

   return fetch('data/api.php',{
      method:'POST',
      body:fd
   }).then(d=>d.json());
}

const checkUserUploadForm = () => {
   let upload = $("#user-upload-image").val()
   if(upload=="") return;

   query({
      type:'update_user_image',
      params:[upload,sessionStorage.userId]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }
      window.history.back();
   })
}