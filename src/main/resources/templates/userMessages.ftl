<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">

<@c.page>
    <#if isCurrentUser>
    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample"
       role="button" aria-expanded="false" aria-controls="collapseExample">
        Add new message
    </a>
    <div class="collapse  <#if message??>show</#if>" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <input type="text" name="text" placeholder="Enter message"
                           value="<#if message??>${message.text}</#if>"
                           class="form-control ${(textError??)?string('is-invalid', '')}">
                    <#if textError??>
                        <div class="invalid-feedback">
                        ${textError}
                        </div>
                    </#if>
                </div>
                <div class="form-group">
                    <input type="text" name="tag" placeholder="Enter tag"
                           class="form-control  ${(tagError??)?string('is-invalid', '')}"
                           value="<#if message??>${message.tag}</#if>">
                    <#if tagError??>
                        <div class="invalid-feedback">
                        ${tagError}
                        </div>
                    </#if>
                </div>
                <div class="form-group">
                    <div class="custom-file">
                        <input type="file" id="customFile" name="file">
                        <label class="custom-file-label" for="customFile">
                            Select the file in png format..</label>
                    </div>
                </div>
                <input type="hidden" name="id" value="<#if message??>${message.id}</#if>"/>
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <div class="form-group">
                    <button type="submit" class="btn btn-info">Add</button>
                </div>
            </form>
        </div>
    </div>
    </#if>
<div class="card-columns">
    <#list messages as message>
        <div class="card my-3">
            <#if message.image??>
                <img src="/img/${message.id}" alt="" class="card-img-top">
            </#if>
            <div class="m-2">
                <span>${message.text}</span><br>
                <i>${message.tag}</i>
            </div>
            <div class="card-footer text-muted">
                <a href="/user-messages/${message.author.id}"> ${message.authorName}</a>
                <#if message.author.id == currentUserId>
                    <a class="btn btn-info"
                       href="/user-messages/${message.author.id}?message=${message.id}">
                        Edit
                    </a>
                </#if>
            </div>
        </div>
    <#else>
        No messages
    </#list>
</div>
</@c.page>