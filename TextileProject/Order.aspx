<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="TextileProject.Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="order" class="order">
        <h1 class="heading">Your <span>Orders</span></h1>

        <table border="1" cellpadding="auto" cellspacing="auto" width="100%" align="center">
            <caption>
                <asp:Label ID="lblCompany" runat="server" Text="Label"></asp:Label></caption>
            <thead>
                <tr>
                    <th>Ordering Company</th>
                    <th>Name</th>
                    <th>Order Status</th>
                    <th>Payment Status</th>
                    <th>Order Date</th>
                    <th>Estimated Delivery Date</th>
                    <th>Actual Delivery Date</th>
                    <th>Factory Date</th>
                    <th>Shipping Methods</th>
                    <th>Delivery Address</th>
                    <th>Product Name</th>
                    <th>Product Size</th>
                    <th>Product Amount</th>
                    <th>Unit Price</th>
                    <th>Total Price</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="orderRepeater" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("OrderingCompany") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("OrderStatus") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("PaymentStatus") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("OrderDate") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("EstimatedDeliveryDate") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("ActualDeliveryDate") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("FactoryDate") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("ShippingMethods") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("DeliveryAddress") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("ProductSize") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label13" runat="server" Text='<%# Eval("ProductAmount") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label14" runat="server" Text='<%# Eval("UnitPrice") %>'></asp:Label></td>
                            <td>
                                <asp:Label ID="Label15" runat="server" Text='<%# Eval("TotalPrice") %>'></asp:Label></td>

                        </tr>

                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </section>


</asp:Content>
