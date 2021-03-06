﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Photograph_mvc.Models.Blog>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Blog</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.bId) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.bId) %>
            <%: Html.ValidationMessageFor(model => model.bId) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.userId, "User") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("userId", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.userId) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.subject) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.subject) %>
            <%: Html.ValidationMessageFor(model => model.subject) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.message) %>
        </div>
        <div class="editor-field">
            <%: Html.TextAreaFor(model => model.message, new { rows=5})%>
            <%: Html.ValidationMessageFor(model => model.message) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.image) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.image) %>
            <%: Html.ValidationMessageFor(model => model.image) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.postDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.postDate) %>
            <%: Html.ValidationMessageFor(model => model.postDate) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
