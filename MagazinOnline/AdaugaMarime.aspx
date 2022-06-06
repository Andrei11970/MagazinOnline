<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdaugaMarime.aspx.cs" Inherits="MagazinOnline.AdaugaMarime" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class ="container ">
                <div class ="form-horizontal ">
                    <br />
                    <br />
                    <h2>Adaugare Marime</h2>
                    <hr />

                    <div class ="form-group">
                        <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="Marime"></asp:Label>
                    <div class ="col-md-3 ">

                            <asp:TextBox ID="txtMarime" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMarime" runat="server" CssClass="text-danger" ErrorMessage="Introdu Marimea " ControlToValidate="txtMarime" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>                                  
                    </div>

                    <div class ="form-group">
                    <asp:Label ID="Label3" CssClass ="col-md-2 control-label " runat="server" Text="Brand"></asp:Label>
                    <div class ="col-md-3 ">

                            <asp:DropDownList ID="ddlBrand" CssClass ="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlBrand" runat="server" CssClass="text-danger" ErrorMessage="Introdu Brand " ControlToValidate="ddlBrand" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>                                  
                    </div>

                    <div class ="form-group">
                    <asp:Label ID="Label4" CssClass ="col-md-2 control-label " runat="server" Text="Categorie"></asp:Label>
                    <div class ="col-md-3 ">

                            <asp:DropDownList ID="ddlCategorie" CssClass ="form-control" runat="server" OnSelectedIndexChanged="ddlCategorie_SelectedIndexChanged" AutoPostBack="true" ></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategorie" runat="server" CssClass="text-danger" ErrorMessage="Introdu Categoria" ControlToValidate="ddlCategorie" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>                                  
                    </div>




                    <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Sub Categorie"></asp:Label>
                    <div class ="col-md-3 ">

                            <asp:DropDownList ID="ddlSubCategorie" CssClass ="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCategorie" runat="server" CssClass="text-danger" ErrorMessage="Introdu sub Categoria" ControlToValidate="ddlSubCategorie" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>                                  
                    </div>

                    <div class ="form-group">
                    <asp:Label ID="Label5" CssClass ="col-md-2 control-label " runat="server" Text="Gen"></asp:Label>
                    <div class ="col-md-3 ">

                            <asp:DropDownList ID="ddlGen" CssClass ="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGen" runat="server" CssClass="text-danger" ErrorMessage="Introdu Genul" ControlToValidate="ddlGen" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>                                  
                    </div>


                      <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAdaugaMarime" CssClass="btn btn-success" runat="server" Text="Adauga Marime" OnClick="btnAdaugaMarime_Click" />
                      
                    </div>
                </div>


                    </div>
                    <h1>Marime</h1>
                    <hr />


                    <div class="panel panel-default">

                        <div class="panel-heading">Toate Marimile</div>
                       
                        
                        <asp:Repeater ID="rptrMarime" runat="server">

                            <HeaderTemplate>
                                <table class="table">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Marime</th>
                                <th>Brand</th>
                                <th>Categorii</th>
                                <th>SubCategorii</th>
                                <th>Gen</th>
                                <th>Edit</th>
                            
                            </tr>
                            </thead>


                            <tbody>
                            </HeaderTemplate>
                            

                            <ItemTemplate>
                                <tr>
                                    <th> <%# Eval("MarimeID") %> </th>
                                    <td><%# Eval("MarimeName") %></td>
                                    <td><%# Eval("Name") %></td>
                                    <td><%# Eval("CatName") %></td>
                                    <td><%# Eval("SubCatName") %></td>
                                    <td><%# Eval("GenName") %></td>
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
