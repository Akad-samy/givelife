<%-- 
    Document   : uploadFile
    Created on : 16 avr. 2016, 23:16:42
    Author     : ABDELADIM ABID
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Uploading using Java</title>
</head>
<body>
<form method="post" action="${ pageContext.request.contextPath}/Uploader"
encType="multipart/form-data">
<input type="file" name="file" value="select images..."/>
<input type="submit" value="start upload"/>
</form>
</body>
</html>