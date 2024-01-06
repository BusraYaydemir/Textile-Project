<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="LogInAdmin.aspx.cs" Inherits="TextileProject.LogInAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="specialLogin" class="specialLogin">
        <h1 class="heading">ADMIN <span>LOG IN</span></h1>

        <asp:Panel ID="pnlLogIn" runat="server">
             <table>
                <tr>
                    <td>Name : </td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server" CssClass="textbox"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password : </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="textbox" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btnlog" OnClick="btnRegister_Click" />
                        <asp:Button ID="btnLogIn" runat="server" Text="Log In" CssClass="btn btnlog" OnClick="btnLogIn_Click" />

                    </td>
                </tr>

            </table>
        </asp:Panel>

        <asp:Panel ID="pnlUser" runat="server">
            <h1 class="headingName">Welcome <span>
                <asp:Label ID="lblName" runat="server" Text="Label" CssClass="lblName"></asp:Label></span>
                <span> : 
                <asp:Label ID="lblCompany" runat="server" Text="" CssClass="lblName"></asp:Label></span>
            </h1>
            <asp:Button ID="btnLogOut" runat="server" Text="Log Out" CssClass="btn" OnClick="btnLogOut_Click" />
        </asp:Panel>
    </section>
</asp:Content>

