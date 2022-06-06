<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdaugaGen.aspx.cs" Inherits="MagazinOnline.AdaugaGen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class ="container ">
                <div class ="form-horizontal ">
                    <br />
                    <br />
                    <h2>Adaugare Gen</h2>
                    <hr />
                    <div class ="form-group">
                        <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="Gen"></asp:Label>
                    <div class ="col-md-3 ">

                            <asp:TextBox ID="txtGen" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGen" runat="server" CssClass="text-danger" ErrorMessage="Gen M/F " ControlToValidate="txtGen" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>                                  
                    </div>


                      <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAdaugaGen" CssClass="btn btn-success" runat="server" Text="Adauga" OnClick="btnAdaugaBrand_Click" />
                      
                    </div>
                </div>


                    </div>
                    <h1>Gen</h1>
                    <hr />


                    <div class="panel panel-default">

                        <div class="panel-heading">Toate Genurile</div>
                       
                        
                        <asp:Repeater ID="rptrGen" runat="server">

                            <HeaderTemplate>
                                <table class="table">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Gen</th>
                                <th>Edit</th>
                            
                            </tr>
                            </thead>


                            <tbody>
                            </HeaderTemplate>
                            

                            <ItemTemplate>
                                <tr>
                                    <th> <%# Eval("GenID") %> </th>
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
