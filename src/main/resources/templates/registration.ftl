<#import "parts/common.ftl" as c>

<@c.page>
<h3>Add new user</h3><br>
<i>${message!}</i>
<form action="/registration" method="post" class="mt-2">
    <div class="form-group row">
        <label class="col-sm-1 col-form-label"> Username: </label>
        <div  class="col-sm-5">
            <input type="text" name="username"
                   value="<#if user??>${user.username}</#if>"
                   class="form-control ${(usernameError??)?string('is-invalid', '')}"
                   placeholder="Enter username.."/>
            <#if usernameError??>
                <div class="invalid-feedback">
                ${usernameError}
                </div>
            </#if>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-1 col-form-label"> Password: </label>
        <div  class="col-sm-5">
            <input type="password" name="password"
                   class="form-control ${(passwordError??)?string('is-invalid', '')}"
                   placeholder="Enter password.."/>
            <#if passwordError??>
                <div class="invalid-feedback">
                ${passwordError}
                </div>
            </#if>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-1 col-form-label">Password:</label>
        <div class="col-sm-5">
            <input type="password" name="password2"
                   class="form-control ${(password2Error??)?string('is-invalid', '')}"
                   placeholder="Retype password.." />
            <#if password2Error??>
                <div class="invalid-feedback">
                ${password2Error}
                </div>
            </#if>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-1 col-form-label">Email:</label>
        <div class="col-sm-5">
            <input type="email" name="email"
                   value="<#if user??>${user.email}</#if>"
                   class="form-control ${(emailError??)?string('is-invalid', '')}"
                   placeholder="some@some.com.."/>
            <#if emailError??>
                <div class="invalid-feedback">
                ${emailError}
                </div>
            </#if>
        </div>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <div><button type="submit" class="btn btn-info">Create</button></div>
</form>
</@c.page>