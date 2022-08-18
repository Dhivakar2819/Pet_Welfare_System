/**
 * 
 */
 function diseaseNameCheck () {
    let nameRegex = /^[a-zA-Z\s]+$/;
    if(!document.form.diseaseName.value.match(nameRegex)){
           if(alert("Disease name can't be empty and must contain only alphabets")){ 
                document.form.diseaseName.focus();
           }
           else
               document.activeElement.blur();
       }
   else{
       return false;
   } 
}
function medicineCheck() {
    let nameRegex = /^[a-zA-Z\s]+$/;
    if(!document.form.medicine.value.match(nameRegex)){
           if(alert("Medicine can't be empty or must contain only alphabets")){ 
                document.form.medicine.focus();
           }
           else
               document.activeElement.blur();
       }
   else{
       return false;
   } 
}
function priceCheck() {
    let nameRegex = /\d+\.?\d/;
    if(!document.form.price.value.match(nameRegex)){
           if(alert("Price can't be empty or must contain only alphabets")){ 
                document.form.price.focus();
           }
           else
               document.activeElement.blur();
       }
   else{
       return false;
   } 
}