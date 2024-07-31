<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="IssueBook.aspx.cs" Inherits="ELibraryManagement.IssueBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Issuing</h4>
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/books.png" />
                                </center>
                                 <hr />
                            </div>
                        </div>
   
                        <div class="row">
                            <div class="col-md-6">
                                <label>MemberID</label>
                                <div class="form-group">
                                    
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                 </div>
                                    </div>
                          
                            <div class="col-md-6">
                                <label>Book ID </label>
                                <div class="form-group">
                                    <div class="input-group">
                               
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Book ID" ></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button5" runat="server" Text="GO" OnClick="Button5_Click" />
                                 </div>
                                    </div>
                                </div>
                            </div>
                         <div class="row">
                            <div class="col-md-6">
                                <label>Member Name</label>
                                <div class="form-group">                                   
                                    <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Member Name" ReadOnly="true"></asp:TextBox>
                                 </div>
                                    </div>
                          
                            <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group">
                                    
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Book Name" ReadOnly="true" ></asp:TextBox>
                                 </div>
                                    </div>
                                </div>
                          

                        <div class="row">
                            <div class="col-md-6">
                                <label>Start Date</label>
                                <div class="form-group">                                   
                                    <asp:TextBox class="form-control" ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
                                 </div>
                                    </div>
                          
                            <div class="col-md-6">
                                <label>Due Date</label>
                                <div class="form-group">
                                    
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" TextMode="Date" ></asp:TextBox>
                                 </div>
                                    </div>
                                </div>
                           

                        <div class="row">
                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <asp:Button class="btn btn-lg btn-block btn-primary " ID="Button6" runat="server" Text="Issue" OnClick="Button6_Click" />
                                
                                      </div>
                           </div>
                                   
                            <div class="col-md-6 ">
                                <div class="form-group">
                                    <asp:Button class="btn btn-lg btn-block btn-warning  " ID="Button1" runat="server" Text="Return" OnClick="Button1_Click" />
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
                                    <h4>Issued Book List</h4>
                                </center>  
                            </div>
                        </div>
                       
                        
                       <div class="row">
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ELibraryManagementConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member_ID" SortExpression="member_id" />
                                        <asp:BoundField DataField="member_name" HeaderText="Member_Name" SortExpression="member_name" />
                                        <asp:BoundField DataField="book_id" HeaderText="Book_ID" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="Book_Name" SortExpression="book_name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="Issue_Date" SortExpression="issue_date" />
                                        <asp:BoundField DataField="due_date" HeaderText="Due_Date" SortExpression="due_date" />
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
