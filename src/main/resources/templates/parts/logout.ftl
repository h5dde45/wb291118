<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button class="btn btn-info ml-3" type="submit">Log Out</button>
</form>