<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="ELibraryManagement.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="images/home-bg.jpg" class="img-fluid"/>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                    <h2> Our Features</h2>
                    <p>show 3 primary features-</p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                    <img  src="images/digital-inventory.png" width="150px"/>
                    <h4> Digitial Book Iventory</h4>
                    <p class="text-justify">A digital book inventory in online library management refers to the systematic tracking and management of digital books (e-books) within an online library system. </p>
                </center>
                </div>
           
                <div class="col-md-4">
                    <center>
                    <img src="images/search-online.png" width="150px" />
                    <h4> Search Result</h4>
                    <p class="text-justify"> This system allows users to search for various resources available in the library, such as books, journals, articles, e-books, and other media</p>
                </center>
                </div>

                <div class="col-md-4">
                    <center>
                     <img src="images/defaulters-list.png" width="150px" />
                    <h4> Default List</h4>
                    <p class="text-justify">In an online library management system, the "Default List" typically refers to a pre-defined list of books or resources that are commonly used or recommended</p>
                </center>
                </div>
            </div>
            </div>
    </section>
  
    <section>
        <img src="images/in-homepage-banner.jpg" class="img-fluid"/>
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                    <h2> Our Process</h2>
                    <p><b>we have simple 3 steps</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img src="images/sign-up.png"  width="150px"/>
                    <h4> Sign up</h4>
                    <p class="text-justify">This process typically involves collecting essential information from the user, verifying their identity, and creating an account for them. Here are the key steps and components of the Signup process in an online library management system</p>
                </center>
                </div>
           
                <div class="col-md-4">
                    <center>
                    <img src="images/search-online.png" width="150px" />
                    <h4> Search Books</h4>
                    <p class="text-justify">In an online library management system, the "Search Books" feature allows users to find books in the library's catalog by using various search criteria</p>
                </center>
                </div>

                <div class="col-md-4">
                    <center>
                        <img src="images/library.png" width="150px"/>
                    <h4> Visit</h4>
                    <p class="text-justify">In the context of an online library management system, a "Visit" typically refers to a session or an interaction a user has with the library's digital platform.</p>
                </center>
                </div>
            </div>
    </section>
</asp:Content>
