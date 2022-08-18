/**
 * 
 */
 function observationCheck() {
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
function dateObservCheck() {
	let date = document.getElementById('dateObserv').value;
	let now = new Date();
	let dt1 = Date.parse(now),
		dt2 = Date.parse(date);
	
	if (dt2 > dt1) {
		alert("Date must be in the past or present");
	}
}
function recoverDateCheck() {
	let date = document.getElementById('recoverDate').value;
	let dateObsev = document.getElementById('dateObserv').value;
	let now = new Date();
	let dt1 = Date.parse(now),
		dt2 = Date.parse(date),
		dt3 = Date.parse(dateObsev);
	if (dt2 >= dt1) {

		alert("Date must be in the past or present");
	}
	else if (dt3 > dt2) {
		alert("Date must be above the observe date")
	}
}