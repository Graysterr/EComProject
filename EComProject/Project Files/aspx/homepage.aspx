<%@ Page Title="" Language="C#" MasterPageFile="~/Project Files/aspx/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="EComProject.Project_Files.aspx.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <main>
      
        <div class="row">
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">Related products</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <a class="nav-link" runat="server" href="~/About">  
                                <img class="card-img-top"  src="images/1.jpg" alt="..." />

                            </a>
              
                           
                        </div>
                    </div>
                     <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <a class="nav-link" runat="server" href="~/productDetails">  
                                <img class="card-img-top"  src="images/2.jpeg" alt="..." />
                            </a>
                        </div>
                    </div>
                             <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <a class="nav-link" runat="server" href="~/productDetails">  
                                <img class="card-img-top"  src="images/3.jpeg" alt="..." />
                            </a>
                        </div>
                    </div>
                             <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <a class="nav-link" runat="server" href="~/productDetails">  
                                <img class="card-img-top"  src="images/4.jpeg" alt="..." />
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            </section>
        </div>
    </main>


</asp:Content>
