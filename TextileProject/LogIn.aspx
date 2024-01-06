<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="TextileProject.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section id="login" class="login">
        <h1 class="heading">LOG <span>IN</span></h1>
        <div class="row">


            <div class="button-container">

                <a href="LogInAdmin.aspx" class="btn">Administrator</a>
                <br />
                <p>If you are a member of our textile company, log in as an administrator.</p>
                <br />

                <hr />
                <a href="LogInUser.aspx" class="btn">User</a>
                <br />
                <p>If you are a member of a company that orders from our textile company, log in as a user.</p>
                <br />

                <hr />

                <a href="LogInVendor.aspx" class="btn">Vendor</a>
                <br />
                <p>If you are a member of a company that is the supplier of our textile company, log in as a vendor.</p>
                <br />

            </div>
        </div>
    </section>


</asp:Content>
