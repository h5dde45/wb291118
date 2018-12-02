<!DOCTYPE HTML>
<html>
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<div>
    <form action="/logout" method="post">
        <input type="submit" value="Sign Out"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
    </form>
</div>
<div>
    <form method="post">
        <input type="text" name="text" placeholder="Enter message">
        <input type="text" name="tag" placeholder="Enter tag">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit">Add</button>
    </form>
</div>
<div>
    <form method="post" action="filter">
        <input type="text" name="filter" placeholder="Enter filter">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit">Find</button>
    </form>
</div>
<div>List messages</div>
<#list messages as message>
<div>
    <b>${message.id}</b>
    <span>${message.text}</span>
    <i>${message.tag}</i>
    <strong>${message.authorName}</strong>
</div>
</#list>
</body>
</html>