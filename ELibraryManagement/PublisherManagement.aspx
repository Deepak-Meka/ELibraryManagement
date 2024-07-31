<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PublisherManagement.aspx.cs" Inherits="ELibraryManagement.PublisherManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();

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
                                    <h4>Publisher Details</h4>
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/publisher.png" />    
                                </center>
                                 <hr />
                            </div>
                        </div>
   
                        <div class="row">
                            <div class="col-md-4">
                                <label>Publisher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="GO" OnClick="Button1_Click1" />
                             
                                 </div>
                                    </div>
                                </div>
                          
                            <div class="col-md-8">
                                <label>Publisher Name</label>
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
                                    <asp:Button class="btn-lg btn-block btn-success" ID="Button5" runat="server" Text="Add" OnClick="Button5_Click1" />
                                
                                      </div>
                           </div>
                                   
                            <div class="col-md-4 ">
                                <div class="form-group">
                                    <asp:Button class="btn btn-lg btn-block btn-warning" ID="Button2" runat="server" Text="Update" OnClick="Button2_Click1" />
                                
                                      
                           </div>
                                   </div>
                       
                            <div class="col-md-4 ">
                                <div class="form-group">
                                    <asp:Button class="btn btn-danger btn-lg btn-block" ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />
                                
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
                                    <h4>Publisher List</h4>
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/publisher.png" />
                                                                    </center>
                                 <hr />
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ELibraryManagementConnectionString %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                                    </Columns>
                                    </asp:GridView>
                                    

                            </div>
                        </div>
                        
                       <div class="row">
                            <div class="col">
                                </div>
                           </div>
                        </div>
                    </div>
              </div>
           </div>
        </div>
</asp:Content>
