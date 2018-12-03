<#import "parts/common.ftl" as c>

<@c.page>
<div class="form-row">
    <div class="form-group col-md-6">
        <form method="get" action="/main" class="form-inline">
            <input type="text" name="filter"
                   placeholder="Enter filter" value="${filter!}" class="form-control">
            <button type="submit" class="btn btn-success ml-2">Find</button>
        </form>
    </div>
</div>

<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample"
   role="button" aria-expanded="false" aria-controls="collapseExample">
    Add new message
</a>
<div class="collapse" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" name="text" placeholder="Enter message" class="form-control">
            </div>
            <div class="form-group">
                <input type="text" name="tag" placeholder="Enter tag" class="form-control">
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" id="customFile" name="file">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <div class="form-group">
                <button type="submit" class="btn btn-info">Add</button>
            </div>
        </form>
    </div>
</div>
<div class="card-columns">
    <#list messages as message>
        <div class="card my-3">
            <#if message.image??>
                <img src="/img/${message.id}" alt="" class="card-img-top">
            </#if>
            <div class="m-2">
                <span>${message.text}</span>
                <i>${message.tag}</i>
            </div>
            <div class="card-footer text-muted">
            ${message.authorName}
            </div>
        </div>
    <#else>
        No messages
    </#list>
</div>
</@c.page>