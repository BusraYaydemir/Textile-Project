<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="TextileProject.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- PRODUCTS SECTION STARTS -->




        <section id="menu" class="menu">
            <h1 class="heading">Our <span>Products</span></h1>
            <div class="box-container">




                <asp:Repeater ID="menuRepeater" runat="server">
                    <ItemTemplate>
                        <div class="box">
                            <div class="box-head">
                                <span class="title">
                                    <asp:Label ID="itemMainGroupLabel" runat="server" Text='<%# Eval("MainCategory") %>'></asp:Label> / 
                                    <asp:Label ID="itemSubGroupLabel" runat="server" Text='<%# Eval("SubCategory") %>'></asp:Label>
                                </span>
                                <a href="#" class="name">
                                    <asp:Label ID="itemNameLabel" runat="server" Text='<%# Eval("Name") %>' CssClass="itemTitle"></asp:Label>
                                </a>
                            </div>
                            <div class="image">
                                <img src='<%# Eval("Picture") %>' alt="" />
                            </div>
                            <div class="box-bottom">
                                <div class="info">
                                    <b class="price">
                                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("Price") %>'></asp:Label> ₺ 
                                    </b>

                                </div>
                                
                                <div class="vendor"> 
                                <span>
                                    Vendor : <asp:Label ID="itemVendorLabel" runat="server" Text='<%# Eval("Vendor") %>' CssClass="vendor"></asp:Label>
                                </span>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>


            </div>
        </section>

        <!-- PRODUCTS SECTION ENDS -->


</asp:Content>
