<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="cookNook._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Welcome to cookNook!</h2>
            </hgroup>
            <p>
                This website is dedicated to people who can't cook. We feel it necessary to help fix this issue by creating a collection of recipes, providing a chat room, and other things we really want to show off. <br />In any case - enjoy!
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Get Started</h5>
            Take a quick tour of the website and get a feel for the way it looks!
        </li>
        <li class="two">
            <h5>Start cooking!</h5>
            Learn some special tricks from other users in our chat room, or, check our recipes list!
        </li>
        <li class="three">
            <h5>Share your recipes!</h5>
            With registration comes the ability to post your recipes.
        </li>
        <li class="four">
            <h5>Buy our products!</h5>
            We have stuff to sell. It's probably crap, but you don't know that!  
        </li>
    </ol>
    <asp:AdRotator ID="adrAds" AdvertisementFile="~/adfile.xml" runat="server" Height="200px" Width="200px" />
</asp:Content>
