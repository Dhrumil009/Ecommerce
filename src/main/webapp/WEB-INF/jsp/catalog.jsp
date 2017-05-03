 <%@include file="webtoolHeader.jsp"%>
 <!-- Main Contain	-->
<div class="tab-pane active">
	<div class="wrapper">
		<div id="AddWorkFlowID" class="col-sm-12" >
			<div class="col-sm-12">
            	<section class="panel">
              		<div class="panel-body"> 
	             		<span role="form">
	             		<form method="post" action="addCatalog" enctype="multipart/form-data"  >
	             			<input type="hidden" name="catalogID" value="" id="catalogID"/>
			             	<div class="form-group"> 
			             		<label class="col-sm-3 control-label"><strong>Catalog Name</strong></label> 
			             		<div class="col-sm-6 m-b">
			             		<input type="text"  name="CatalogName" cssClass="form-control"  id="CatalogName" required/>
			             		</div> 
			             	</div>
			             	<br/>
			             	<div class="line line-dashed line-lg pull-in"></div>
			               <div class="form-group">
			               		<label class="col-sm-3 control-label"><strong>Catalog Description</strong></label> 
			               		<div class="col-sm-8 m-b"> 
			               			<input type="textarea"  name="CatalogDesc" cssClass="form-control" rows="5" cols="30"  id="CatalogDesc" required/>
			               		</div>
			               </div>
			               <br/>
			               <br/>
			               <div class="line line-dashed line-lg pull-in"></div>
			              <div class="form-group">
			               		<label class="col-sm-3 control-label"><strong>Catalog Image</strong></label> 
			               		<div class="col-sm-5 m-b">
			               			 <input type="file" class="form-control" name="file" > 
			               		</div>
			              </div>
				            <br/>
				           <div class="form-group">
					            <input type="submit" value="submit"   class="btn btn-info btn-s-xs"/>
								<button type="button" class="btn btn-danger btn-s-xs">Cancel</button>
						   </div>
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
										<td><b>Catalog Image</b></td>
										<td><b>Catalog Name</b></td>
										<td><b>Catalog Description</b></td>
										<td><b>Edit</b></td>
										<td><b>Delete</b></td>
									</tr>
									<c:if test="${not empty catalogList}">
										<c:forEach items="${catalogList}" var="item">
										   <tr >
												<td><b>
													<img src="${item.catalogImage}"  height="50" width="50" />
												</b></td>
												<td><b> ${item.catalogName} </b></td>
												<td><b> ${item.catalogDesc} </b></td>
												<td><b><a onclick="editCatalog('${item.catalogID}','${item.catalogName}','${item.catalogDesc}')">Edit</a></b></td>
												<td><b><a href="DeleteCatalog?catalogId=${item.catalogID}" >Delete</a></b></td>
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

function editCatalog(catalogID,catalogName,catalogDesc){
	$('#catalogID').val(catalogID);
	$('#CatalogName').val(catalogName);
	$('#CatalogDesc').val(catalogDesc);
}

</script>
 <%@include file="webtoolFooter.jsp"%>									