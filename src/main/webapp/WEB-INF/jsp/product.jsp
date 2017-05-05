<%@include file="webtoolHeader.jsp"%>
<div class="tab-pane active">
	<div class="wrapper">
		<div id="UploadcollapseDiv" class="col-sm-06" style="display:none;">
			<form method="post" action="addProduct" enctype="multipart/form-data"  >
	             			<input type="hidden" name="productID" value="" id="productID"/>
			             	<div class="form-group"> 
			             		<label class="col-sm-3 control-label"><strong>Product Name</strong></label> 
			             		<div class="col-sm-6 m-b">
			             		<input type="text"  name="productName" cssClass="form-control"  id="productName" required />
			             		</div> 
			             	</div>
			             	<br/>
			             	<div class="line line-dashed line-lg pull-in"></div>
			              	 <div class="form-group">
			               		<label class="col-sm-3 control-label"><strong>Product Stock</strong></label> 
			               		<div class="col-sm-6 m-b"> 
			               			<input type="text"  name="productQuantity" cssClass="form-control"  id="productStock" required />
			               		</div>
			               	</div>
			               	<br/>
			             	<div class="line line-dashed line-lg pull-in"></div>
			             		<div class="form-group"> 
			             		<label class="col-sm-3 control-label"><strong>Product Price</strong></label> 
			             		<div class="col-sm-6 m-b">
			             		<input type="text"  name="productPrice" cssClass="form-control"  id="productPrice"  required />
			             		</div> 
			             	</div>
			             	<br/>
			             	<div class="line line-dashed line-lg pull-in"></div>
			             		<div class="form-group"> 
			             		<label class="col-sm-3 control-label"><strong>Product Weight</strong></label> 
			             		<div class="col-sm-6 m-b">
			             		<input type="text"  name="productWeight" cssClass="form-control"  id="productWeight" required />
			             		</div> 
			             	</div>
			             	<br/>
			             	<div class="line line-dashed line-lg pull-in"></div>
			             		<div class="form-group"> 
			             		<label class="col-sm-3 control-label"><strong>Product CartDesc</strong></label> 
			             		<div class="col-sm-6 m-b">
			             		<textarea style="width: 329px; height: 28px;" name="productCartDesc"  id="productCartDesc"></textarea>
<!-- 			             		<input type="text"  name="productCartDesc" cssClass="form-control"  id="CatalogName"/> -->
			             		</div> 
			             	</div>
			             	<br/>
			             	<div class="line line-dashed line-lg pull-in"></div>
			             	<div class="form-group"> 
			             		<label class="col-sm-3 control-label"><strong>Product ShortDesc</strong></label> 
			             		<div class="col-sm-6 m-b">
			             		<textarea style="width: 329px; height: 28px;" name="productShortDesc" required  id="productShortDesc"></textarea>
<!-- 			             		<input type="text"  name="productShortDesc" cssClass="form-control"  id="CatalogName" requird /> -->
			             		</div> 
			             	</div>
			             	<br/>
			             	<div class="line line-dashed line-lg pull-in"></div>
			             	<div class="form-group"> 
			             		<label class="col-sm-3 control-label"><strong>Product LongDesc</strong></label> 
			             		<div class="col-sm-6 m-b">
			             		<textarea style="width: 329px; height: 28px;" name="productLongDesc" required id="productLongDesc"></textarea>
<!-- 			             		<input type="text"  name="productLongDesc" cssClass="form-control"  id="CatalogName" requird /> -->
			             		</div> 
			             	</div>
			             	<br/>
			             	<div class="line line-dashed line-lg pull-in"></div>
			             	<div class="form-group"> 
			             		<label class="col-sm-3 control-label"><strong>Promotional products</strong></label> 
			             		<div class="col-sm-6 m-b">
			             			<select name="productLive" id="productLive">
			             				<option value="0">Non Promotional</option>
			             				<option value="1">Promotional</option>
			             			</select>
			             		</div> 
			             	</div>
			             	<br/>
			             	<div class="line line-dashed line-lg pull-in"></div>
			             	<div class="form-group"> 
			             		<label class="col-sm-3 control-label"><strong>Product Image</strong></label> 
			             		<div class="col-sm-6 m-b">
			             		<input type="file"  name="file" cssClass="form-control"  id="CatalogName" />
			             		</div> 
			             	</div>
			             	<br/>
			             	<div class="line line-dashed line-lg pull-in"></div>
			             	<div class="form-group"> 
			             		<label class="col-sm-3 control-label"><strong>Product CategoryID</strong></label> 
			             		<div class="col-sm-6 m-b">
			             		<select name="productCategoryID" id="productCategoryID">
			             			<c:if test="${not empty categoryList}">
			             				<c:forEach items="${categoryList}" var="item" > 
			             					<option value="${item.categoryID}">${item.categoryName}</option>
			             				</c:forEach>
			             			</c:if>
			             		</select>
			             		</div> 
			             	</div>
			             	<br/>
				           <div class="form-group">
					            <input type="submit" value="submit"   class="btn btn-info btn-s-xs"/>
								<button type="button" class="btn btn-danger btn-s-xs" onclick="load2Div()">Cancel</button>
						   </div>
			</form>
		</div>
	</div>
</div>

<!-- Email Div -->

<div id="EmailcollapseDiv" class="col-sm-12" >
	<div class="wrapper">
		<div id="AddWorkFlowID" class="col-sm-12" >
			<div class="col-sm-12">
            	<section class="panel">
				 	<div class="table-responsive" id="fileListDiv">
							<table class="table m-b-none b-none text-sm" id="idFileList">
								<tbody>
									<tr>
										<td><b>Product Image</b></td>
										<td><b>Product Name</b></td>
										<td><b>Product Price</b></td>
										<td><b>Product Stock</b></td>
										<td><b>Product Description</b></td>
										<td><b>Edit</b></td>
										<td><b>Delete</b></td>
									</tr>
									<c:if test="${not empty productList}">
										<c:forEach items="${productList}" var="item">
										   <tr >
												<td><b>
													<img src="${item.productImage}"  height="50" width="50" />
												</b></td>
												<td><b> ${item.productName} </b></td>
												<td><b> ${item.productPrice} </b></td>
												<td><b> ${item.productQuantity} </b></td>
												<td><b> ${item.productCartDesc} </b></td>
												<td><b><a onclick="editProduct('${item.productID}','${item.productName}','${item.productPrice}','${item.productQuantity}','${item.productWeight}','${item.productCartDesc}','${item.productShortDesc}','${item.productLongDesc}','${item.productCategoryID}','${item.productLive}')">Edit</a></b></td>
												<td><b><a href="Deleteproduct?productID=${item.productID}" >Delete</a></b></td>
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
		
			function callLoad(nodeid) {
						$('#alertDanger').hide();
						$('#alertSuccess').hide();
			}
			
			function load1Div(){
				$('#UploadcollapseDiv').show();
				$('#EmailcollapseDiv').hide();
				
			}
			
			function load2Div(){
				$('#EmailcollapseDiv').show();
				$('#UploadcollapseDiv').hide();
				
			}
			
			function editProduct(productID,productName,productPrice,productStock,productWeight,productCartDesc,productShortDesc,productLongDesc,productCategoryID,productLive){
				$('#productID').val(productID);
				$('#productName').val(productName);
				$('#productPrice').val(productPrice);
				$('#productStock').val(productStock);
				$('#productWeight').val(productWeight);
				$('#productCartDesc').val(productCartDesc);
				$('#productShortDesc').val(productShortDesc);
				$('#productLongDesc').val(productLongDesc);
				$('#productCategoryID').val(productCategoryID);
				$('#productLive').val(productLive);
				 load1Div();
			}
</script>
 <%@include file="webtoolFooter.jsp"%>	