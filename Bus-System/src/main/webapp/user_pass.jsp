<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.connection.connection"%>
<%@page import="com.model.bus_model"%>
<%@page import="com.entity.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Bus-System</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    
    
     <link rel="icon" type="image/png" sizes="16x16" href="dashboard_assest/images/favicon.png">
    <!-- Custom Stylesheet -->
    <link href="dashboard_assest/plugins/tables/css/datatable/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="dashboard_assest/css/style.css" rel="stylesheet">
    <style>
        .services-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
        }

        .service-item {
            
            margin: 15px;
            background-color: #fff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
        }

        .service-item img {
            width: 100%;
            height: auto;
            border-radius: 10px 10px 0 0;
        }

        .services-wrapper {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            align-items: flex-start;
            margin-top: 20px;
        }
    </style>
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light shadow border-top border-5 border-primary sticky-top p-0">
        <a href="index.html" class="navbar-brand bg-primary d-flex align-items-center px-4 px-lg-5">
            <h2 class="mb-2 text-white">Bus-System</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                 <a href="index.jsp" class="nav-item nav-link ">Home</a>
                <a href="about.jsp" class="nav-item nav-link">About</a>
                <a href="services.jsp" class="nav-item nav-link active">Services</a>
                <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                
        </div>
    </nav>
    <!-- Navbar End -->


    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5" style="margin-bottom: 6rem;">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">Passes</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <!-- <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-white active" aria-current="page">Services</li>
                </ol> -->
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Service Start -->
     
     <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Registered-User</h4>
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered zero-configuration">
                                        <thead>
                                            <tr>
                                                <th scope="col">Stop-No</th> 
											     <th scope="col">Unique-Id</th>
											    
											      
											       <th scope="col">Student-Name</th> 
											      
											      <th scope="col">Print</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        
                                        <%
						                    try{
						                        bus_model b=new bus_model(connection.getconnection());
						                        List<pass_entity> al=b.pass_response();
						                      
						                        for(pass_entity s:al) {
						                        	
						                        	
						                        	
						                %>
                                            <tr>
                                                 <td><%=s.getStop_no() %></td>
											      <td><%=s.getU_id() %></td>
											      <td><%=s.getStud_name() %></td>
											      <td><a href="passcreate1.jsp?id=<%=s.getId() %>" class="btn btn-primary">Preview</a></td>
                                            </tr>
                                       <%
						                        	
                                            }}catch(Exception e)
                                        {
                                            	e.printStackTrace();
                                        }
                                       %>
                                        
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    
    
    
    <!-- Service End -->


   


     <!-- Footer Start -->
   <%@include file="component/footer_index.jsp" %>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>



 <script src="dashboard_assest/plugins/common/common.min.js"></script>
    <script src="dashboard_assest/js/custom.min.js"></script>
    <script src="dashboard_assest/js/settings.js"></script>
    <script src="dashboard_assest/js/gleek.js"></script>
    <script src="dashboard_assest/js/styleSwitcher.js"></script>

    
    
    
    
    

    <script src="dashboard_assest/plugins/tables/js/jquery.dataTables.min.js"></script>
    <script src="dashboard_assest/plugins/tables/js/datatable/dataTables.bootstrap4.min.js"></script>
    <script src="dashboard_assest/plugins/tables/js/datatable-init/datatable-basic.min.js"></script>
    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>