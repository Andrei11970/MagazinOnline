<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddBrand.aspx.cs" Inherits="MagazinOnline.AddBrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class ="container ">
                <div class ="form-horizontal ">
                    <br />
                    <br />
                    <h2>Adaugare Brand</h2>
                    <hr />
                    <div class ="form-group">
                        <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="NumeBrand"></asp:Label>
                    <div class ="col-md-3 ">

                            <asp:TextBox ID="txtBrand" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNumeBrand" runat="server" CssClass="text-danger" ErrorMessage="Introdu numele Brandului " ControlToValidate="txtBrand" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>                                  
                    </div>


                      <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAdaugaBrand" CssClass="btn btn-success" runat="server" Text="Adauga" OnClick="btnAdaugaBrand_Click" />
                      
                    </div>
                </div>


                    </div>
               
                    <h1>Branduri</h1>
                    <hr />


                    <div class="panel panel-default">

                        <div class="panel-heading">Toate Brandurile</div>
                       
                        
                        <asp:Repeater ID="rptrBrand" runat="server">

                            <HeaderTemplate>
                                <table class="table">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Brand</th>
                                <th>Edit</th>
                            
                            </tr>
                            </thead>


                            <tbody>
                            </HeaderTemplate>
                            

                            <ItemTemplate>
                                <tr>
                                    <th> <%# Eval("BrandID") %> </th>
                                    <td><%# Eval("Name") %></td>

                                    <td>Edit</td>
                                </tr>
                            </ItemTemplate>


                            <FooterTemplate>
                                   </tbody>

                                    </table>
                            </FooterTemplate>

                        </asp:Repeater>

                        
                                                     
                    </div>
                    

                 </div>

</asp:Content>
