/**
 * 
 */
 var breedTypeCheck = function() {
    var nameRegex = new RegExp("^[a-zA-z\s]+$");
    if(!document.form.breedType.value.match(nameRegex)){
           if(alert("Name can't be empty and must contain only alphabets")){ 
                document.form.breedType.focus();
           }
           else
               document.activeElement.blur();
       }
   else{
       return false;
   } 
  
}