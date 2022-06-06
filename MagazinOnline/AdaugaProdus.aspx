<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AdaugaProdus.aspx.cs" Inherits="MagazinOnline.AdaugaProdus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class ="container">
       <div class ="form-horizontal">
           
            <br />
            <br />
            <h2>Adauga Produs</h2>
            <hr />

            <div class ="form-group">
                <asp:Label ID="Label1" runat="server" CssClass ="col-md-2 control-label" Text="Nume Produs"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtNumeProdus" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass ="col-md-2 control-label" Text="Preț"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPret" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass ="col-md-2 control-label" Text="Preț Vanzare"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPretVanzare" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass ="col-md-2 control-label" Text="Brand"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass ="col-md-2 control-label" Text="Categorie"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCategorie" CssClass="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlCategorie_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="Label6" runat="server" CssClass ="col-md-2 control-label" Text="SubCategorie"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlSubCategorie" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label19" runat="server" CssClass ="col-md-2 control-label" Text="Gen"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlGen" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label7" runat="server" CssClass ="col-md-2 control-label" Text="Mărime"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtMarimeDinamic" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label8" runat="server" CssClass ="col-md-2 control-label" Text="Descriere"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtDescriere" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label9" runat="server" CssClass ="col-md-2 control-label" Text="Detali Produs"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPDetali" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label10" runat="server" CssClass ="col-md-2 control-label" Text="Materiale și Îngrijire"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtMat" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label11" runat="server" CssClass ="col-md-2 control-label" Text="Adauga Imagini"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fulmg01" CssClass="form-control" runat="server" />

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label12" runat="server" CssClass ="col-md-2 control-label" Text="Adauga Imagini"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fulmg02" CssClass="form-control" runat="server" />

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label13" runat="server" CssClass ="col-md-2 control-label" Text="Adauga Imagini"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fulmg03" CssClass="form-control" runat="server" />

                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label14" runat="server" CssClass ="col-md-2 control-label" Text="Adauga Imagini"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fulmg04" CssClass="form-control" runat="server" />

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label15" runat="server" CssClass ="col-md-2 control-label" Text="Adauga Imagini"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fulmg05" CssClass="form-control" runat="server" />

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label16" runat="server" CssClass ="col-md-2 control-label" Text="Livrare gratuită"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="chLG" runat="server" />  
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label17" runat="server" CssClass ="col-md-2 control-label" Text="Return în 30 de zile"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="ch30Ret" runat="server" />  
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label18" runat="server" CssClass ="col-md-2 control-label" Text="COD"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="cbCOD" runat="server" />  
                </div>
            </div>

            <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAdd" CssClass="btn btn-success" runat="server" Text="Adauga Produs" OnClick="btnAdd_Click"  />
                      
                    </div>
                </div>


        </div>
    </div>

</asp:Content>
