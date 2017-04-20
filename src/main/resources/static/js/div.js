function toggle(contentdiv) {
	var expand = (contentdiv.style.display == "none");
	contentdiv.style.display = (expand ? "block" : "none");
  
  	var titleNode = contentdiv.parentNode.childNodes[1].childNodes[1];
    var imgNode = titleNode.nextSibling.childNodes[1];
    imgNode.src = imgNode.src
    	.split(expand ? "expand.gif" : "collapse.gif")
    	.join(expand ? "collapse.gif" : "expand.gif");
       
    imgNode.title = expand ? ("Hide "+ titleNode.innerHTML) : ("Show " + titleNode.innerHTML);
}

function showUploadDiv() {
	uploadDiv = document.getElementById('uploadDiv');
	var expand = (uploadDiv.style.display == "none");
	uploadDiv.style.display = (expand ? "block" : "none");
  
  	var titleNode = uploadDiv.parentNode.childNodes[1].childNodes[1];
    var imgNode = titleNode.nextSibling.childNodes[1];
    imgNode.src = imgNode.src
    	.split(expand ? "expand.gif" : "collapse.gif")
    	.join(expand ? "collapse.gif" : "expand.gif");
       
    imgNode.title = expand ? ("Hide "+ titleNode.innerHTML) : ("Show " + titleNode.innerHTML);
}