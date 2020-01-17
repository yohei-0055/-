<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>おみくじの結果</title>
</head>
</head>
<body>
    <c:choose>
        <c:when test="${errors != null}">
            <h1>入力内容にエラーがあります</h1>
            <ul>
                <li><c:out value="${errors}" /></li>
            </ul>
        </c:when>
        <c:when test="${username == username }">
            <h1>おみくじの結果</h1>
            <ul style="list-style: none">
                <li><c:out value="${username}" />さんの今日の運勢は<c:out value="${omikuji_results}" />です。</li>
            </ul>
        </c:when>
    </c:choose>
</body>
</html>