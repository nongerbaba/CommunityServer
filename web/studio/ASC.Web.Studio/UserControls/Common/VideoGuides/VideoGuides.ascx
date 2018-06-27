﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VideoGuides.ascx.cs" Inherits="ASC.Web.Studio.UserControls.Common.VideoGuides.VideoGuidesControl" %>
<%@ Import Namespace="Resources" %>

    <% if (!DisableVideo)
       { %>
<li class="menu-item none-sub-list video-guides add-block">
    <-- 注释掉视频指南
    <div class="category-wrapper">
        <a class="menu-item-label outer-text text-overflow video-link" href="<%= AllVideoLink %>" target="_blank">
            <span class="menu-item-icon video-guides"></span>
            <span class="menu-item-label inner-text">
                <%= Resource.VideoGuides%>
            </span>
        </a>
        <span class="new-label-menu" title="<%=Resource.VideoShowUnwatchedVideo %>"></span>

    </div>
    -->
    
</li>

        <div id="studio_videoPopupPanel" class="video-popup-panel studio-action-panel">
            <div id="dropVideoList" class="drop-list">
                <ul class="video-list">
                    <% foreach (var data in VideoGuideItems)
                       { %>
                        <li>
                            <a class="link" id="<%= data.Id %>" href="<%= data.Link %>" target="_blank"><%= data.Title %></a>
                        </li>
                    <% } %>
                </ul>
            </div>
            <a class="video-link" href="<%= AllVideoLink %>">
                <%= Resource.SeeAllVideos %>
            </a> 
            <a id="markVideoRead" class="video-link" href="javascript:void(0);">
                <%= Resource.MarkAllAsRead %>
            </a>
        </div>
 <% } %>
