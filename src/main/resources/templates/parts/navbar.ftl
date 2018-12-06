<#include "security.ftl">
<#import "logout.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="/">WB</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">Home</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/main">Messages</span></a>
            </li>
        <#if user??>
            <li class="nav-item">
                <a class="nav-link" href="/user-messages/${currentUserId}">My messages</span></a>
            </li>
        </#if>
        <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/user">User List</span></a>
            </li>
        </#if>
        <#if user??>
            <li class="nav-item">
                <a class="nav-link" href="/user/profile">Profile List</span></a>
            </li>
        </#if>
        </ul>

        <div class="navbar-text mr-3">${name}</div>
    <#if known>
        <@l.lodout/>
    </#if>
    </div>
</nav>