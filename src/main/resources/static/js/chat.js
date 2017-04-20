
var oldUserListHTML = "";
var userId = "-1";

function init() {
	timerChatData = setTimeout("getChatData()", 0);
}

function onUserSelect(id) {
	if (userId != "-1" && userId != id) {
		document.getElementById(userId).style.color = "black";
	}
	document.getElementById(id).style.color = "red";
	userId = id;
}

function allTrim(inString) {
	return (inString.replace(/^\s*(.*\S|.*)\s*$/, "$1"));
}


var m_names = new Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec");
function getDate() {
	var d = new Date();
	var curr_hour = d.getHours();
	if (curr_hour < 10) {
		curr_hour = "0" + curr_hour;
	}
	var curr_min = d.getMinutes();
	if (curr_min < 10) {
		curr_min = "0" + curr_min;
	}
	var curr_date = d.getDate();
	if (curr_date < 10) {
		curr_date = "0" + curr_date;
	}
	var curr_month = d.getMonth();
	return (m_names[curr_month] + " " + curr_date + " " + curr_hour + ":" + curr_min);
}

function clearHistory() {
	document.getElementById("chatScroll").innerHTML = "";
} 