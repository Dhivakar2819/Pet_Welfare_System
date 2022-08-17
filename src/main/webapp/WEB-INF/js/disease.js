/**
 * 
 */
 let diseaseNameCheck = function() {
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
let medicineCheck = function() {
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
let priceCheck = function() {
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