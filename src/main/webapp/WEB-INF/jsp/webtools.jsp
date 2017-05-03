 <%@include file="webtoolHeader.jsp"%>
 <!-- Main Contain	-->
<div class="tab-pane active">
	<div class="wrapper">
		<div id="AddWorkFlowID" class="col-sm-12" >
			<div class="col-sm-12">
            	<section class="panel">
              		<div class="panel-body"> 
	             		<span role="form">
	             		<form method="post" action="CatalogController"  >
	             		 <input type="hidden" name="keyNote" value="create" />
			             	<div class="form-group"> 
			             		<label class="col-sm-3 control-label"><strong>Catalog Name</strong></label> 
			             		<div class="col-sm-6 m-b">
			             		<input type="text"  name="catalogName" cssClass="form-control" />
			             		</div> 
			             	</div>
			             	<br/>
			             	<div class="line line-dashed line-lg pull-in"></div>
			               <div class="form-group">
			               		<label class="col-sm-3 control-label"><strong>Catalog Description</strong></label> 
			               		<div class="col-sm-8 m-b"> 
			               			<input type="textarea"  name="catalogDesc" cssClass="form-control" rows="5" cols="30" />
			               		</div>
			               </div>
			               <br/>
			               <br/>
			               <div class="line line-dashed line-lg pull-in"></div>
				              <div class="form-group">
				               		<label class="col-sm-3 control-label"><strong>Catalog Image</strong></label> 
				               		<div class="col-sm-5 m-b">
				               			 <input type="file" class="form-control" name="file" required> 
				               		</div>
				              </div>
				            <br/>
				            <input type="submit" name="AddWorkFlowBtn"  type="submit" class="btn btn-info btn-s-xs"/>
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
										<td><b>Catalog Image</b></td>
										<td><b>Catalog Name</b></td>
										<td><b>Catalog Description</b></td>
										<td><b>Delete</b></td>
									</tr>
								</tbody>
							</table>
					</div>
				</section>
			</div>	
		</div>
	</div>
</div>
 <%@include file="webtoolFooter.jsp"%>									