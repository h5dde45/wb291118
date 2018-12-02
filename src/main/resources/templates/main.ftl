<#import "parts/common.ftl" as c>
<#import "parts/logout.ftl" as l>

<@c.page>
<div>
    <@l.lodout/>
    <span><a href="/user">Users list</a></span>
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
    <form method="get" action="/main">
        <input type="text" name="filter"
               placeholder="Enter filter" value="${filter!}">
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
    <#else>
    No messages
    </#list>
</@c.page>