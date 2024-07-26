<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AuthorManagement.aspx.cs" Inherits="ELibraryManagement.AuthorManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author Details</h4>
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/writer.png" />      
                                </center>
                                <hr />
                            </div>
                        </div>
   
                        <div class="row">
                            <div class="col-md-4">
                                <label>Author ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                              
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="GO" OnClick="Button1_Click" />
                             
                                 </div>
                                    </div>
                                </div>
                          
                            <div class="col-md-8">
                                <label>Author Name</label>
                                <div class="form-group">
                                <center>
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" ></asp:TextBox>
                                </center>
                                 </div>
                                </div>
                            </div>
                        <div class="row">
                            <div class="col-md-4 ">
                                <div class="form-group">
                                    <asp:Button class="btn-lg btn-block btn-success " ID="Button5" runat="server" Text="Add" OnClick="Button5_Click" />
                                <%--<input id="button2" class="btn-lg btn-block btn-success " type="button" value="Add" />--%>
                                      </div>
                           </div>
                                   
                            <div class="col-md-4 ">
                                <div class="form-group">
                                    <asp:Button class="btn btn-lg btn-block btn-warning" ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
                                
                                      
                           </div>
                                   </div>
                       
                            <div class="col-md-4 ">
                                <div class="form-group">
                                    <asp:Button class="btn btn-danger btn-lg btn-block " ID="Button6" runat="server" Text="Delete" OnClick="Button6_Click" />
                                
                                      </div>
                           
                                   </div>
                        </div>
                      </div>
                </div>
                
               
                <div class="row">
                    <div class="col">
                        <a href="homepage.aspx"><<<"Back to home"</a><br /><br />
                    </div>
                </div>
              </div>
         
            <div class="col-md-7 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author List</h4>
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/writer.png" />
                                    
                                </center>
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ELibraryManagementConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                                 <hr />
                            </div>
                        </div>
                        
                       <div class="row">
                            <div class="col">
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                    </Columns>
                                </asp:GridView>
                                </div>
                           </div>
                        </div>
                    </div>
              </div>
           </div>
        </div>
       
</asp:Content>
