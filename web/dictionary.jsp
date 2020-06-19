<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: No Name
  Date: 6/19/2020
  Time: 2:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("hello", "xin chào");
    dic.put("book", "sách");
    dic.put("this", "đây");
    dic.put("that", "đó");
    String search = request.getParameter("search");
    String result = dic.get(search);
    if (result != null){
        out.println("Word: " + search);
        out.println("Result: "+ result);
    }else {
        out.println("Not found");
    }
%>
</body>
</html>
