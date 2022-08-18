/**
 * 
 */
 function vaccineNameCheck() {
		 let nameRegex = /^[a-zA-Z\s]+$/;
		 if(!document.form.vaccineName.value.match(nameRegex)){
				if(alert("Vaccine name can't be empty and must contain only alphabets")){ 
					 document.form.vaccineName.focus();
			    }
				else
					document.activeElement.blur();
			}
	    else{
	        return false;
	    } 
	   
	}