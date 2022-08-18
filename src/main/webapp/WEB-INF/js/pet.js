/**
 * 
 */
function petNameCheck() {
	let nameRegex = /^[a-zA-Z\s]+$/;
	if (!document.form.petName.value.match(nameRegex)) {
		if (alert("Pet name can't be empty and must contain only alphabets")) {
			document.form.petName.focus();
		}
		else
			document.activeElement.blur();
	}
	else {
		return false;
	}

}
function checkDate() {
	let dob = document.getElementById('dob').value;
	let now = new Date();
	let dt1 = Date.parse(now),
		dt2 = Date.parse(dob);
	
	if (dt2 > dt1) {
		alert("Date must be in the past or present");
	}
}
function checkDateOwner() {
	let date = document.getElementById('dateofOwnership').value;
	let dob = document.getElementById('dob').value;
	let now = new Date();
	let dt1 = Date.parse(now),
		dt2 = Date.parse(date);
	if (dt2 >= dt1) {

		alert("Date must be in the past or present");
	}
	else if (dob > date) {
		alert("Date must be above the date of birth")
	}
}