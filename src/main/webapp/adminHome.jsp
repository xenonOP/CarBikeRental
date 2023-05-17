<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*"%>
<%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html lang="zxx">
    <%@include file="Head.jsp"%>
    <body>
    <%@include file="Preloader.jsp"%>

    <%@ include file= "Header.jsp" %> 
<!------------------------------
-----------------------------------------------------BODY------------------------------------------------------------------------------------------------------------------------------------------------------------------>
<!-- Product Section Start -->
<%String adminn = (String)(session.getAttribute("user"));%>
            <div class="container">
                <div class="section-title-two text-center mb-40"></div></div>
        <div class="product-wrap pt-100 pb-70 bg_ash">
            <div class="container">
                <div class="section-title-two text-center mb-40">
                   
                </div>
                <div class="row justify-content-center">
                    <div class="col-xxl-3 col-xl-4 col-lg-6 col-md-6" data-aos="fade-right" data-aos-duration="1200" data-aos-delay="200">
                        <div class="product-card-two">
                            
                            <div class="product-info">
                                <h3><a href="listing-details.html">Categories</a></h3>
                                <div class="product-price">View N Manage Categories</div>
                                
                                    
                                <a href="CarCAT.jsp" class="btn-one">Manage Car Categories</a><a href="BikeCAT.jsp" class="btn-one">View Bike Categories</a>
                                <p class="product-listed-by">Only Access to: <span><%=adminn%></span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xxl-3 col-xl-4 col-lg-6 col-md-6" data-aos="fade-right" data-aos-duration="1200" data-aos-delay="300">
                        <div class="product-card-two">
                            <div class="product-info">
                                <h3><a href="addVehicle.jsp">Add Vehicles To Inventory</a></h3>
                                    <div class="product-price">Add New Vehicles</div>
                                <a href="addVehicle.jsp" class="btn-one">Add Cars</a>
                                <a href="addBike.jsp" class="btn-one">Add Bikes</a>
                                <p class="product-listed-by">Only Access to: <span><%=adminn%></span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xxl-3 col-xl-4 col-lg-6 col-md-6" data-aos="fade-right" data-aos-duration="1200" data-aos-delay="400">
                        <div class="product-card-two">
                            <div class="product-info">
                                <h3><a href="listing-details.html">Add Categories</a></h3>
                                <div class="product-price">Add New Categories for Cars&Bikes</div>
                                
                                <a href="AddCarCat.jsp" class="btn-one">Add New Category for Car</a><a href="AddBikeCat.jsp" class="btn-one">Add New Category for Bike</a>
                                <p class="product-listed-by">Only Access to: <span><%=adminn%></span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Product Section End -->

<!-----------------------------------------------------------------------------------BODY------------------------------------------------------------------------------------------------------------------------------------------------------------------>
        <%@include file="footer.jsp" %>
</html>