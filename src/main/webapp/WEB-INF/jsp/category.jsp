 <%@include file="webtoolHeader.jsp"%>
 <!-- Main Contain	-->
<div class="tab-pane active">
	<div class="wrapper">
		<div id="AddWorkFlowID" class="col-sm-12" >
			<div class="col-sm-12">
            	<section class="panel">
              		<div class="panel-body"> 
	             		<span role="form">
	             		<form method="post" action="addCategory"  enctype="multipart/form-data" >
	             		 <input type="hidden" name="categoryID" value="" id="categoryID"/>
			             	<div class="form-group"> 
			             		<label class="col-sm-3 control-label"><strong>Category Name</strong></label> 
			             		<div class="col-sm-6 m-b">
			             		<input type="text"  name="categoryName" cssClass="form-control" id="categoryName" required/>
			             		</div> 
			             	</div>
			             	<br/>
			             	<div class="line line-dashed line-lg pull-in"></div>
			             	<div class="form-group"> 
			             		<label class="col-sm-3 control-label"><strong>Catalog</strong></label> 
			             		<div class="col-sm-6 m-b">
			             		<select name="catalogID" id="catalogID">
			             			<c:if test="${not empty catalogList}">
			             				<c:forEach items="${catalogList}" var="item" > 
			             					<option value="${item.catalogID}">${item.catalogName}</option>
			             				</c:forEach>
			             			</c:if>
			             		</select>
			             		</div> 
			             	</div>
			             	<br/>
			             	<div class="line line-dashed line-lg pull-in"></div>
			               <div class="form-group">
			               		<label class="col-sm-3 control-label"><strong>Category Description</strong></label> 
			               		<div class="col-sm-8 m-b"> 
			               			<input type="textarea"  name="categoryDescription" cssClass="form-control" rows="5" cols="30" required id="categoryDescription"/>
			               		</div>
			               </div>
			               <br/>
			               <br/>
			               <div class="line line-dashed line-lg pull-in"></div>
				              <div class="form-group">
				               		<label class="col-sm-3 control-label"><strong>Category Image</strong></label> 
				               		<div class="col-sm-5 m-b">
				               			 <input type="file" class="form-control" name="file" > 
				               		</div>
				              </div>
				            <br/>
				            <input type="submit" value="submit"  type="submit" class="btn btn-info btn-s-xs"/>
								<button type="button" class="btn btn-danger btn-s-xs">Cancel</button>
								</form>
				          </span> 
				              <br/>
					  </div>
	            </section>
			</div>	
		</div>
	</div>
</div>
<div class="tab-pane active">
	<div class="wrapper">
		<div id="AddWorkFlowID" class="col-sm-12" >
			<div class="col-sm-12">
            	<section class="panel">
				 	<div class="table-responsive" id="fileListDiv">
							<table class="table m-b-none b-none text-sm" id="idFileList">
								<tbody>
									<tr>
										<td><b>Category Image</b></td>
										<td><b>Category Name</b></td>
										<td><b>Category Description</b></td>
										<td><b>Edit</b></td>
										<td><b>Delete</b></td>
									</tr>
									<c:if test="${not empty categoryList}">
										<c:forEach items="${categoryList}" var="item">
										   <tr >
												<td><b>
													<img src="${item.categoryImage}"  height="50" width="50" />
												</b></td>
												<td><b> ${item.categoryName} </b></td>
												<td><b> ${item.categoryDescription} </b></td>
												<td><b><a onclick="editCategory('${item.categoryID}','${item.categoryName}','${item.categoryDescription}','${item.catalogID}')">Edit</a></b></td>
												<td><b><a href="DeleteCategory?categoryID=${item.categoryID}" >Delete</a></b></td>
										   </tr>
										</c:forEach>
									</c:if>
									
								</tbody>
							</table>
					</div>
				</section>
			</div>	
		</div>
	</div>
</div>
<script type="text/javascript">

function editCategory(categoryID,categoryName,categoryDescription,catalogID){
	$('#categoryID').val(categoryID);
	$('#categoryName').val(categoryName);
	$('#catalogID').val(catalogID);
	$('#categoryDescription').val(categoryDescription);
}

</script>

 <%@include file="webtoolFooter.jsp"%>									