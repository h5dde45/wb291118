<#import "parts/common.ftl" as c>

<@c.page>
<h3>Add new user</h3><br>
<i>${message!}</i>
<form action="/registration" method="post" class="mt-2">
    <div class="form-group row">
        <label class="col-sm-1 col-form-label"> Username: </label>
        <div  class="col-sm-5">
            <input type="text" name="username" class="form-control"
                   placeholder="Enter username.."/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-1 col-form-label"> Password: </label>
        <div  class="col-sm-5">
            <input type="password" name="password" class="form-control"
                   placeholder="Enter password.."/>
        </div>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <div><button type="submit" class="btn btn-info"/>Create</div>
</form>
</@c.page>