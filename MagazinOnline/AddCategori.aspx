<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddCategori.aspx.cs" Inherits="MagazinOnline.ADdCategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="container ">
                <div class ="form-horizontal ">
                    <br />
                    <br />
                    <h2>Adaugare Categorie</h2>
                    <hr />
                    <div class ="form-group">
                        <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="Nume Categorie"></asp:Label>
                    <div class ="col-md-3 ">

                            <asp:TextBox ID="txtCategorie" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNumeCategorie" runat="server" CssClass="text-danger" ErrorMessage="Introdu Categoria " ControlToValidate="txtCategorie" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>                                  
                    </div>


                      <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAdaugaCategorie" CssClass="btn btn-success" runat="server" Text="Adauga Categorie" OnClick="btnAdaugaCategorie_Click" />
                      
                    </div>
                </div>


                    </div>
                    
                     <h1>Categorie</h1>
                    <hr />


                    <div class="panel panel-default">

                        <div class="panel-heading">Toate Categoriile</div>
                       
                        
                        <asp:Repeater ID="rptrCategori" runat="server">

                            <HeaderTemplate>
                                <table class="table">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Categorie</th>
                                <th>Edit</th>
                            
                            </tr>
                            </thead>


                            <tbody>
                            </HeaderTemplate>
                            

                            <ItemTemplate>
                                <tr>
                                    <th> <%# Eval("CatID") %> </th>
                                    <td><%# Eval("CatName") %></td>

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
