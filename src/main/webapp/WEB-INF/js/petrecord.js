/**
 * 
 */
 var observationCheck = function() {
    if(document.form.observation.value == ""){
           if(alert("Observation cannot be blank")){ 
                document.form.observation.focus();
           }
           else
               document.activeElement.blur();
       }
    else{
           return false;
       }
}