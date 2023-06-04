function validateForm() {
  var id = document.forms["stud"]["id"].value;
  var name = document.forms["stud"]["name"].value;
  var marks = document.forms["stud"]["marks"].value;

  if (id == "" || isNaN(id)) {
    document.forms["stud"]["id"].setCustomValidity("Please enter a valid ID.");
    return false;
  } else {
    document.forms["stud"]["id"].setCustomValidity("");
  }

  if (name == "") {
    document.forms["stud"]["name"].setCustomValidity("Please enter a name.");
    return false;
  } else {
    document.forms["stud"]["name"].setCustomValidity("");
  }

  if (marks == "" || isNaN(marks)) {
    document.forms["stud"]["marks"].setCustomValidity("Please enter valid marks.");
    return false;
  } else {
    document.forms["stud"]["marks"].setCustomValidity("");
  }

  return true;
}

function openForm(){
	document.getElementById("myForm").style.display="block";
}

function closeForm(){
	document.getElementById("myForm").style.display="none";
}