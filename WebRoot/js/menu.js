function expand(el) {
	childObj = document.getElementById("child" + el);

	if (childObj.style.display == 'none') {
		childObj.style.display = 'block';
	} else {
		childObj.style.display = 'none';
	}
	return;
}

function display(e2){
	showobj = document.getElementById("show" + e2);
	if (showobj.style.display == 'none') {
		showobj.style.display = 'block';
	} else {
		showobj.style.display = 'none';
	}
	return;
}