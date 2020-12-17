
const makeTruckList = templater(o=>`
   <div class="trucklist-item js-truck-jump" data-id="${o.id}">
      <div class="trucklist-icon">
         <img src="${o.img}" alt="">
      </div>
      <div class="trucklist-description">
         <div class="trucklist-name">${o.name}</div>
         <div class="trucklist-type"><strong>Type</strong> ${o.type}</div>
         <div class="trucklist-dishes"><strong>dishes</strong> ${o.dishes}</div>
      </div>
   </div>
   `);

const makeUserProfile = templater(o=>`
   <div class="user-profile-image">
      <img src="${o.img}" alt="">
      <a href="#user-upload-page" class="floater bottom right">
                  <i class="fas fa-edit ico-bg"></i>
               </a>
   </div>
   <div style="padding:1em">
      <h2>${o.name}</h2>
      <h3>@${o.username}</h3>
      <h3>${o.email}</h3>
      <div class="floater top right"><a href="#user-settings-page"><i class="fas fa-cogs ico-bg"></i></a></div>
   `);

const makeTruckProfile = templater(o=>`
<div class="truck-profile">
   <div class="truck-profile-image">
      <img src="${o.img}" alt="">
   </div>
   <h2>${o.name}</h2>
   <div><strong>Type </strong>${o.type}</div>
   <div><strong>Dishes </strong>${o.dishes}</div>
   <div><p>${o.description}</p></div>
   <div><a href="#" class="js-truck-delete" data-id="${o.id}">Delete</a></div></div>
</div>`);


const makeTruckPopup = o => `
<div class="display-flex truck-popup" style="flex-wrap:wrap">
   <div class="flex-none">
      <div class="truck-image">
         <img src="${o.img}" alt="">
      </div>
   </div>
   <div class="flex-none truck-popup-description">
      <h2>${o.name}</h2>
      <div>${o.type}</div>
      <div>${o.dishes}</div>
   </div>
   <div class="form-button js-truck-jump" data-id="${o.truck_id}" style="width:100%">Visit</div>
</div>
`;





const FormControl = ({namespace,name,displayname,type,placeholder,value}) => {
   return `<div class="form-control">
   <label for="${namespace}-${name}" class="form-label">${displayname}</label>
   <input id="${namespace}-${name}" type="${type}" class="form-input" data-role="none" placeholder="${placeholder}" value="${value}">
   </div>`;
}

const makeUserEditForm = o => `
${FormControl({
   namespace:'user-edit',
   name:'username',
   displayname:'Username',
   type:'text',
   placeholder:'Type your user name',
   value:o.username
})}
${FormControl({
   namespace:'user-edit',
   name:'name',
   displayname:'Name',
   type:'text',
   placeholder:'Type your full name',
   value:o.name
})}
${FormControl({
   namespace:'user-edit',
   name:'email',
   displayname:'Email',
   type:'text',
   placeholder:'Type your email',
   value:o.email
})}
`;




const makeTruckEditForm = o => `
<input type="hidden" id="truck-edit-image" value="${o.img}">
<label class="image-uploader thumbnail picked" style="background-image:url('${o.img}')">
   <input type="file" data-role="none" id="truck-edit-input">
</label>
${FormControl({
   namespace:'truck-edit',
   name:'name',
   displayname:'Name',
   type:'text',
   placeholder:'Type the truck name',
   value:o.name
})}
${FormControl({
   namespace:'truck-edit',
   name:'type',
   displayname:'Type',
   type:'text',
   placeholder:'Type the type',
   value:o.type
})}
${FormControl({
   namespace:'truck-edit',
   name:'dishes',
   displayname:'dishes',
   type:'text',
   placeholder:'Type the dishes',
   value:o.dishes
})}
<div class="form-control">
   <label for="truck-edit-description" class="form-label">Description</label>
   <textarea id="truck-edit-description" class="form-input" data-role="none" placeholder="Type a description" style="height:6em">${o.description}</textarea>
</div>
`;





const drawTruckList = (a,empty_phrase="No trucks yet, you should add some.") => {
   $("#list-page .trucklist").html(
      a.length ? makeTruckList(a) : empty_phrase
   )
}



const capitalize = s => s[0].toUpperCase()+s.substr(1);

const filterList = (trucks,type) => {
   let a = [...(new Set(trucks.map(o=>o[type])))];
   return templater(o=>`<div class="filter" data-field="${type}" data-value="${o}">${capitalize(o)}</div>`)(a);
}

const makeFilterList = (trucks) => {
   return `
   <div class="filter" data-field="type" data-value="">All</div>
   |
   ${filterList(trucks,'type')}
   |
   
   `
}





const makeUploaderImage = (el, name, folder='') => {

   $(el).parent().css({'background-image':`url(${folder+name}`}).addClass('picked')
      .prev().val(folder+name);
}