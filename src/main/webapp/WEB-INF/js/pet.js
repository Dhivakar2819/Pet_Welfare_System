/**
 * 
 */
 var petNameCheck = function() {
    var nameRegex = new RegExp("^[a-zA-Z\s]+$");
    if(!document.form.petName.value.match(nameRegex)){
           if(alert("Pet name can't be empty and must contain only alphabets")){ 
                document.form.petName.focus();
           }
           else
               document.activeElement.blur();
       }
   else{
       return false;
   } 
  
}