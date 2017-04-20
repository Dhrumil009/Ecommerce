try {
	
	function getFileList(nodeId) {
		$.ajax({url :"<portlet:resourceURL id='getFileList'/>",             
      		data: {"nodeId" : nodeId},
      		type: "GET",
      		dataType: "text",
    		success: function(data) {
     			$("#idFileList").html(data);
    		}
		});
	}
	
	function downloadFile(id) {
		$.ajax({url :"<portlet:resourceURL id='downloadFile'/>",             
      		data: {"fileId" : id},
      		type: "GET",
      		dataType: "text",
    		success: function(data) {
     			
    		}
		});
	}
	
	function favouriteFile(id) {
		$.ajax({url :"<portlet:resourceURL id='favouriteFile'/>",             
      		data: {"fileId" : id},
      		type: "GET",
      		dataType: "text",
    		success: function(data) {
     			
    		}
		});
	}
	
	function deleteFile(id, flag) {
		$.ajax({url :"<portlet:resourceURL id='deleteFile'/>",             
      		data: {"fileId" : id, "dFlag":flag},
      		type: "GET",
      		dataType: "text",
    		success: function(data) {
    			$("#idFileList").html(data);
    		}
		});
	}
	
	function restoreFile(id, flag) {
		$.ajax({url :"<portlet:resourceURL id='deleteFile'/>",             
      		data: {"fileId" : id, "dFlag":flag},
      		type: "GET",
      		dataType: "text",
    		success: function(data) {
    			$("#idFileList").html(data);
    		}
		});
	} 
	
	function getTrashFile() {
		$.ajax({url :"<portlet:resourceURL id='getTrashFile'/>",             
      		data: {},
      		type: "GET",
      		dataType: "text",
    		success: function(data) {
     			$("#idFileList").html(data);
    		}
		});
	}
	
	
	
	function addFolder() {
		$.ajax({url :"<portlet:resourceURL id='addFolder'/>",             
      		data: {"id": $("#nodeId").val()},
      		type: "GET",
      		dataType: "text",
    		success: function(data) {
    			console.log(data);
    		}
		});
	}
	
	function deleteFolder() {
		$.ajax({url :"<portlet:resourceURL id='deleteFolder'/>",             
      		data: {"id": $("#nodeId").val()},
      		type: "GET",
      		dataType: "text",
    		success: function(data) {
    			console.log(data);
    		}
		});
	}
	
	function renameFolder() {
		$.ajax({url :"<portlet:resourceURL id='renameFolder'/>",             
      		data: {"id": $("#nodeId").val()},
      		type: "GET",
      		dataType: "text",
    		success: function(data) {
    			console.log(data);
    		}
		});
	}
} catch(e){
	alert(e);
}