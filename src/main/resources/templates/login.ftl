<#import "parts/common.ftl" as c>

<@c.page>
    <#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>
    <div class="alert alert-danger" role="alert">
    ${Session.SPRING_SECURITY_LAST_EXCEPTION.message}
    </div>
    </#if>
    <#if message??>
    <div class="alert alert-${messageType}" role="alert">
    ${message}
    </div>
    </#if>
<form action="/login" method="post" class="mt-3">
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
    <div><button type="submit" class="btn btn-info"/>Sign In</div>
</form>
<a href="/registration">Add new user</a>
</@c.page>