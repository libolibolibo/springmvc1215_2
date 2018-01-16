<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>

<script type="text/javascript">
//请求json响应json
function requestjson(){
	
	$.ajax({
		
		type:'post',
		url:'${pageContext.request.contextPath }/requestJson.action',
		contentType:'application/json;charset=utf-8',
		data:'{"name":"张三","age":12}',//json串
		success:function(data){
			
			alert(data.name);
		}
		
	});
	
	
}

//请求key/value响应json
function responsejson(){
	
$.ajax({
		
		type:'post',
		url:'${pageContext.request.contextPath }/responseJson.action',
		data:'name=张三&age=12',//key/value
		success:function(data){
			alert(data.name);
		}
		
	});
	
	
}
</script>
<title>json测试 </title>
</head>
<body>

<input type="button" value="请求json响应json" onclick="requestjson()"/>
<input type="button" value="请求key/value响应json" onclick="responsejson()"/>
</body>
</html>