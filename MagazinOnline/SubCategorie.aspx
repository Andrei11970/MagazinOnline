<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="SubCategorie.aspx.cs" Inherits="MagazinOnline.SubCategorie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="container ">
                <div class ="form-horizontal ">
                    <br />
                    <br />
                    <h2>Adaugare SubCategorie</h2>
                    <hr />

                    <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Categorie Principala"></asp:Label>
                    <div class ="col-md-3 ">

                            <asp:DropDownList ID="ddlMainCatID" CssClass ="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMainCatID" runat="server" CssClass="text-danger" ErrorMessage="Introdu categoriaID principala " ControlToValidate="ddlMainCatID" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>                                  
                    </div>

                    <div class ="form-group">
                        <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="Nume SubCategorie"></asp:Label>
                    <div class ="col-md-3 ">

                            <asp:TextBox ID="txtSubCategorie" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNumeSubCategorie" runat="server" CssClass="text-danger" ErrorMessage="Introdu numele SubCategorie " ControlToValidate="txtSubCategorie" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>                                  
                    </div>


                      <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAdaugaSubCategorie" CssClass="btn btn-success" runat="server" Text="Adauga SubCategorie" OnClick="btnAdaugaSubCategorie_Click"  />
                      
                    </div>
                </div>


                    </div>
               <h1>SubCategorie</h1>
                    <hr />


                    <div class="panel panel-default">

                        <div class="panel-heading">Toate SubCategoriile</div>
                       
                        
                        <asp:Repeater ID="rptrSubCat" runat="server">

                            <HeaderTemplate>
                                <table class="table">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Sub-Categorie</th>
                                <th>Categoria principala</th>
                                <th>Edit</th>
                            
                            </tr>
                            </thead>


                            <tbody>
                            </HeaderTemplate>
                            

                            <ItemTemplate>
                                <tr>
                                    <th> <%# Eval("SubCatID") %> </th>
                                    <td><%# Eval("SubCatName") %></td>
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
