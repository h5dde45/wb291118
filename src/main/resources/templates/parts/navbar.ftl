<#include "security.ftl">

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
        <#if known>
            <li class="nav-item">
                <a class="nav-link" href="/main">Messages</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/user-messages/${currentUserId}">My messages</span></a>
            </li>
        </#if>
        <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/user">User List</span></a>
            </li>
        </#if>
        <#if known>
            <li class="nav-item">
                <a class="nav-link" href="/user/profile">Profile List</span></a>
            </li>
        </#if>
        </ul>

    <#if known>
        <div class="navbar-text">${name}</div>
        <#include "logout.ftl">
    <#else >
        <a class="btn btn-success ml-3" href="/registration">Add new user</a>
        <a class="btn btn-warning ml-3" href="/login">Log In</a>
    </#if>
    </div>
</nav>