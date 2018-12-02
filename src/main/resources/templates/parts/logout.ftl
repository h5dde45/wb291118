<#macro lodout>
<form action="/logout" method="post">
    <input type="submit" value="Sign Out"/>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
</form>
</#macro>