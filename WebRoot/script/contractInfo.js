function getAllInfo(internalId){
	
    		if(internalId!=''){
    			location.href="${pageContext.request.contextPath}/ServletPage?method=shenfen&identityid="+internalId;
    		}
    	}
 	function showAddContract(name){
		 $('#addContract').show();
		 $('#addContract').dialog({
			title:'和【'+name+'】签订合同',
			collapsible:false,  
			minimizable:false,
			maximizable:false,
			resizable:false,				
			modal:true
		 });
	 $('#moneyAmount').numberbox({min:0,max:900000000000,precision:2});
	 $('#area').numberbox({min:0,max:900000000000,precision:2});
	 $('#arrearage').numberbox({min:0,max:900000000000,precision:2});
	 	$('#signTime').datebox( {
			currentText : '今天',
			closeText : '关闭',
			disabled : false,
			required : true,
			missingMessage : '必填',
			formatter : formatDate
	
		});
		$('#effectiveDate').datebox( {
			currentText : '今天',
			closeText : '关闭',
			disabled : false,
			required : true,
			missingMessage : '必填',
			formatter : formatDate
	
		});
		$('#expireDate').datebox( {
			currentText : '今天',
			closeText : '关闭',
			disabled : false,
			required : true,
			missingMessage : '必填',
			formatter : formatDate
	
		});
	$('#dueDate').datebox( {
		currentText : '今天',
		closeText : '关闭',
		disabled : false,
		required : true,
		missingMessage : '必填',
		formatter : formatDate
	
	});
}