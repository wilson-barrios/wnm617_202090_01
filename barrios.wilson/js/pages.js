
// go look up async and await
const ListPage = async() => {
   let d = await query({type:'trucks_by_user_id',params:[sessionStorage.userId]});

   console.log(d);

   $("#list-page .filter-list").html(makeFilterList(d.result));

   drawTruckList(d.result);
}





const RecentPage = async() => {
   let d = await query({type:'recent_locations',params:[sessionStorage.userId]});

   console.log(d)

   let valid_trucks = d.result.reduce((r,o)=>{
      o.icon = o.img;
      if(o.lat && o.lng) r.push(o);
      return r;
   },[]);

   let map_el = await makeMap("#recent-page .map");

   makeMarkers(map_el,valid_trucks);

   map_el.data("markers").forEach((o,i)=>{
      o.addListener("click",function(){

         /*
         // SIMPLE EXAMPLE
         sessionStorage.truckId = valid_trucks[i].truck_id;
         $.mobile.navigate("#truck-profile-page")
         */

         
         //INFOWINDOW EXAMPLE
         map_el.data("infoWindow")
            .open(map_el.data("map"),o);
         map_el.data("infoWindow")
            .setContent(makeTruckPopup(valid_trucks[i]));
         

         /*
         // ACTIVE EXAMPLE
         $("#recent-drawer").addClass("active");
         $("#recent-drawer .modal-body")
            .html(makeTruckPopup(valid_trucks[i]));
         */   
      })
   });
}






const UserProfilePage = async() => {
   let d = await query({type:'user_by_id',params:[sessionStorage.userId]});

   console.log(d);

   $("#user-profile-page .profile")
      .html(makeUserProfile(d.result))
}

const UserEditPage = async() => {
   let d = await query({type:'user_by_id',params:[sessionStorage.userId]});

   console.log(d);

   $("#user-edit-form")
      .html(makeUserEditForm(d.result[0]))
}
const UserUploadPage = async() => {
   query({
      type:'user_by_id',
      params:[sessionStorage.userId]
   }).then(d=>{
      makeUploaderImage({
         namespace:'user-upload',
         folder:'',
         name:d.result[0].img
      })
   })
}





const TruckProfilePage = async() => {
   query({type:'truck_by_id',params:[sessionStorage.truckId]})
   .then(d=>{
      console.log(d);
      $("#truck-profile-page .profile")
         .html(makeTruckProfile(d.result))
   });

   query({type:'locations_by_truck_id',params:[sessionStorage.truckId]})
   .then(d=>{
      console.log(d);
      makeMap("#truck-profile-page .map").then(map_el=>{
         makeMarkers(map_el,d.result)
      });
   });


   
}

const TruckEditPage = async() => {
   let d = await query({type:'truck_by_id',params:[sessionStorage.truckId]});

   console.log(d);

   $("#truck-edit-form")
      .html(makeTruckEditForm(d.result[0]))
}



const LocationAddPage = async() => {
   let map_el = await makeMap("#location-add-page .map");
   makeMarkers(map_el,[]);

   let map = map_el.data('map');

   map.addListener("click",function(e){
      console.log(e)
      let posFromClick = {lat:e.latLng.lat(),lng:e.latLng.lng()};
      let posFromCenter = {lat:map.getCenter().lat(),lng:map.getCenter().lng()};
      console.log(posFromClick,posFromCenter)
      $("#location-add-lat").val(posFromClick.lat)
      $("#location-add-lng").val(posFromClick.lng)

      makeMarkers(map_el,[posFromClick],false);
   });


}