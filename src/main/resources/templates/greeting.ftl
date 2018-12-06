<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">

<@c.page>
    <#if known>
    <meta http-equiv="refresh" content="0; /main">
    <#else >
    <h4>Add a new user or log in</h4>
    </#if>
</@c.page>