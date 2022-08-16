/**
 * 
 */
 var adminNameCheck = function() {
    var nameRegex = new RegExp("^[a-zA-Z\s]+$");
    if(!document.form.adminName.value.match(nameRegex)){
           if(alert("Name can't be empty and must contain only alphabets")){ 
                document.form.adminName.focus();
           }
           else
               document.activeElement.blur();
       }
   else{
       return false;
   } 
  
}
var emailCheck = function() {
    var nameRegex = new RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$");
    if(!document.form.email.value.match(nameRegex)){
           if(alert("Email not in the correct format")){ 
                document.form.email.focus();
           }
           else
               document.activeElement.blur();
       }
   else{
       return false;
   } 
  
}

var passwordCheck = function() {
    var nameRegex = new RegExp("^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$");
    if(!document.form.password.value.match(nameRegex)){
           if(alert("Password must begin with letter and contain atleast one number and must have atleast 8 characters")){ 
                document.form.password.focus();
           }
           else
               document.activeElement.blur();
       }
   else{
       return false;
   } 
  
}