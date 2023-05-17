<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*"%>
<%@page import = "java.sql.*"%>

<%@page import = "CarBikeRental.carrental.database.*"%>
<!DOCTYPE html>
<html lang="zxx">
    <%@include file="Head.jsp"%>
    <body>
    <%@include file="Preloader.jsp"%>
    <%@ include file= "Header.jsp" %> 
<!-----------------------------------------------------------------------------------BODY------------------------------------------------------------------------------------------------------------------------------------------------------------------>
 <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap br-15 bg-f">
            <div class="container">
                <div class="breadcrumb-title">
                    <h2>Car Listings</h2>
                    <ul class="breadcrumb-menu list-style">
                        <li><a href="index.jsp">Home</a></li>
                        <li>Listings</li>
                    </ul>
                </div>  
            </div>
        </div>
        <!-- Breadcrumb End -->

      <!-- Product Section Start -->
        <div class="product-wrap pt-100 pb-70 bg_ash">
            <div class="container">
                <div class="section-title-two text-center mb-40">
                    <span>Popular Listings</span>
                    <h2>View Top Featured Listings</h2>
                </div>
                <div class="row justify-content-center">
                    <%
                        try{
                            ResultSet rs = DBLoader.executeQuery("SELECT * FROM carbikerental.vehicles");
                            while(rs.next())
                            {
                            String cat = rs.getString("Categories");
                            String Name = rs.getString("VehicleName");
                            String photo = rs.getString("VehiclePhoto");
                            String price = rs.getString("Price");
                            String Offerprice = rs.getString("OfferPrice");
                            String Transmission= rs.getString("Transmission");
                            String Drive = rs.getString("Drive");
                            %>
                            <div class="col-xxl-3 col-xl-4 col-lg-6 col-md-6" data-aos="fade-right" data-aos-duration="1200" data-aos-delay="200">
                        <div class="product-card-two">
                            <div class="product-img">
                                <img src="<%=photo%>" alt="Image">
                                 <ul class="product-option list-style">
                                    <li><a href="wishlist.html"><i class="flaticon-heart"></i></a></li>
                                    <li><a href="compare-2.html"><i class="flaticon-compare"></i></a></li>
                                </ul>
                            </div>
                            <div class="product-info">
                                <a href="listings.html" class="product-category"><%=cat%></a>
                                <h3><a href="listing-details.html"><%=Name%></a></h3>
                                <div class="product-price">Price: <%=Offerprice%></div>
                                <ul class="product-amenity list-style">
                                    <li>Transmission <span><%=Transmission%></span></li>
                                    <li>Drive <span><%=Drive%></span></li>
                                    <li>Mileage<span>1500 (Mi)</span></li>
                                </ul>
                                <div class="product-ratings">
                                    <ul class="list-style">
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                    </ul>
                                    <span>(4k+ Ratings)</span>
                                </div>
                                <a href="listing-details.html" class="btn-one">View Details</a>
                                <p class="product-listed-by">Listed By: <span>Midas International</span></p>
                            </div>
                        </div>
                    </div>
                            <%
                            }
                        }catch(Exception e)
                        {
                            e.printStackTrace();
                        }
                        %>
                    
                    <div class="col-xxl-3 col-xl-4 col-lg-6 col-md-6" data-aos="fade-right" data-aos-duration="1200" data-aos-delay="300">
                        <div class="product-card-two">
                            <div class="product-img">
                                <img src="assets/img/product/product-10.webp" alt="Image">
                                 <ul class="product-option list-style">
                                    <li><a href="wishlist.html"><i class="flaticon-heart"></i></a></li>
                                    <li><a href="compare-2.html"><i class="flaticon-compare"></i></a></li>
                                </ul>
                            </div>
                            <div class="product-info">
                                <a href="listings.html" class="product-category">Convertible</a>
                                <h3><a href="listing-details.html">Nissan Sports T10</a></h3>
                                <div class="product-price">Price: $35000</div>
                                <ul class="product-amenity list-style">
                                    <li>Transmission <span>Autometic</span></li>
                                    <li>Drive <span>4WD</span></li>
                                    <li>Mileage<span>1500 (Mi)</span></li>
                                </ul>
                                <div class="product-ratings">
                                    <ul class="list-style">
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                    </ul>
                                    <span>(3k+ Ratings)</span>
                                </div>
                                <a href="listing-details.html" class="btn-one">View Details</a>
                                <p class="product-listed-by">Listed By: <span>Tune Auto Care</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xxl-3 col-xl-4 col-lg-6 col-md-6" data-aos="fade-right" data-aos-duration="1200" data-aos-delay="400">
                        <div class="product-card-two">
                            <div class="product-img">
                                <img src="assets/img/product/product-11.webp" alt="Image">
                                 <ul class="product-option list-style">
                                    <li><a href="wishlist.html"><i class="flaticon-heart"></i></a></li>
                                    <li><a href="compare-2.html"><i class="flaticon-compare"></i></a></li>
                                </ul>
                            </div>
                            <div class="product-info">
                                <a href="listings.html" class="product-category">Sedan</a>
                                <h3><a href="listing-details.html">BMW Electric Model i4</a></h3>
                                <div class="product-price">Price: $94000</div>
                                <ul class="product-amenity list-style">
                                    <li>Transmission <span>Autometic</span></li>
                                    <li>Drive <span>4WD</span></li>
                                    <li>Mileage<span>1500 (Mi)</span></li>
                                </ul>
                                <div class="product-ratings">
                                    <ul class="list-style">
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                    </ul>
                                    <span>(2k+ Ratings)</span>
                                </div>
                                <a href="listing-details.html" class="btn-one">View Details</a>
                                <p class="product-listed-by">Listed By: <span>The Auto Hospital</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xxl-3 col-xl-4 col-lg-6 col-md-6" data-aos="fade-right" data-aos-duration="1200" data-aos-delay="500">
                        <div class="product-card-two">
                            <div class="product-img">
                                <img src="assets/img/product/product-12.webp" alt="Image">
                                 <ul class="product-option list-style">
                                    <li><a href="wishlist.html"><i class="flaticon-heart"></i></a></li>
                                    <li><a href="compare-2.html"><i class="flaticon-compare"></i></a></li>
                                </ul>
                            </div>
                            <div class="product-info">
                                <a href="listings.html" class="product-category">Wagon</a>
                                <h3><a href="listing-details.html">New 2022 Lexus RC4</a></h3>
                                <div class="product-price">Price: $65000</div>
                                <ul class="product-amenity list-style">
                                    <li>Transmission <span>Autometic</span></li>
                                    <li>Drive <span>4WD</span></li>
                                    <li>Mileage<span>1500 (Mi)</span></li>
                                </ul>
                                <div class="product-ratings">
                                    <ul class="list-style">
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                    </ul>
                                    <span>(4k+ Ratings)</span>
                                </div>
                                <a href="listing-details.html" class="btn-one">View Details</a>
                                <p class="product-listed-by">Listed By: <span>Total Care Auto</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xxl-3 col-xl-4 col-lg-6 col-md-6" data-aos="fade-right" data-aos-duration="1200" data-aos-delay="600">
                        <div class="product-card-two">
                            <div class="product-img">
                                <img src="assets/img/product/product-13.webp" alt="Image">
                                 <ul class="product-option list-style">
                                    <li><a href="wishlist.html"><i class="flaticon-heart"></i></a></li>
                                    <li><a href="compare-2.html"><i class="flaticon-compare"></i></a></li>
                                </ul>
                            </div>
                            <div class="product-info">
                                <a href="listings.html" class="product-category">Hybrid</a>
                                <h3><a href="listing-details.html">Volvo Electric Model A10</a></h3>
                                <div class="product-price">Price: $46000</div>
                                <ul class="product-amenity list-style">
                                    <li>Transmission <span>Autometic</span></li>
                                    <li>Drive <span>4WD</span></li>
                                    <li>Mileage<span>1500 (Mi)</span></li>
                                </ul>
                                <div class="product-ratings">
                                    <ul class="list-style">
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                    </ul>
                                    <span>(1k+ Ratings)</span>
                                </div>
                                <a href="listing-details.html" class="btn-one">View Details</a>
                                <p class="product-listed-by">Listed By: <span>Luxe Auto Care</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xxl-3 col-xl-4 col-lg-6 col-md-6" data-aos="fade-right" data-aos-duration="1200" data-aos-delay="700">
                        <div class="product-card-two">
                            <div class="product-img">
                                <img src="assets/img/product/product-14.webp" alt="Image">
                                 <ul class="product-option list-style">
                                    <li><a href="wishlist.html"><i class="flaticon-heart"></i></a></li>
                                    <li><a href="compare-2.html"><i class="flaticon-compare"></i></a></li>
                                </ul>
                            </div>
                            <div class="product-info">
                                <a href="listings.html" class="product-category">SUV</a>
                                <h3><a href="listing-details.html">Range Rover Evouque R5</a></h3>
                                <div class="product-price">Price: $842000</div>
                                <ul class="product-amenity list-style">
                                    <li>Transmission <span>Autometic</span></li>
                                    <li>Drive <span>4WD</span></li>
                                    <li>Mileage<span>1500 (Mi)</span></li>
                                </ul>
                                <div class="product-ratings">
                                    <ul class="list-style">
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                    </ul>
                                    <span>(7k+ Ratings)</span>
                                </div>
                                <a href="listing-details.html" class="btn-one">View Details</a>
                                <p class="product-listed-by">Listed By: <span>Eco Auto Service</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xxl-3 col-xl-4 col-lg-6 col-md-6" data-aos="fade-right" data-aos-duration="1200" data-aos-delay="800">
                        <div class="product-card-two">
                            <div class="product-img">
                                <img src="assets/img/product/product-23.webp" alt="Image">
                                 <ul class="product-option list-style">
                                    <li><a href="wishlist.html"><i class="flaticon-heart"></i></a></li>
                                    <li><a href="compare-2.html"><i class="flaticon-compare"></i></a></li>
                                </ul>
                            </div>
                            <div class="product-info">
                                <a href="listings.html" class="product-category">Hatchback</a>
                                <h3><a href="listing-details.html">Tesla 2022 Edition T10</a></h3>
                                <div class="product-price">Price: $54000</div>
                                <ul class="product-amenity list-style">
                                    <li>Transmission <span>Autometic</span></li>
                                    <li>Drive <span>4WD</span></li>
                                    <li>Mileage<span>1500 (Mi)</span></li>
                                </ul>
                                <div class="product-ratings">
                                    <ul class="list-style">
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                    </ul>
                                    <span>(3k+ Ratings)</span>
                                </div>
                                <a href="listing-details.html" class="btn-one">View Details</a>
                                <p class="product-listed-by">Listed By: <span>Auto Excellence</span></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xxl-3 col-xl-4 col-lg-6 col-md-6" data-aos="fade-right" data-aos-duration="1200" data-aos-delay="900">
                        <div class="product-card-two">
                            <div class="product-img">
                                <img src="assets/img/product/product-24.webp" alt="Image">
                                 <ul class="product-option list-style">
                                    <li><a href="wishlist.html"><i class="flaticon-heart"></i></a></li>
                                    <li><a href="compare-2.html"><i class="flaticon-compare"></i></a></li>
                                </ul>
                            </div>
                            <div class="product-info">
                                <a href="listings.html" class="product-category">Audi</a>
                                <h3><a href="listing-details.html">Hundai Kong GT Sports</a></h3>
                                <div class="product-price">Price: $72000</div>
                                <ul class="product-amenity list-style">
                                    <li>Transmission <span>Autometic</span></li>
                                    <li>Drive <span>4WD</span></li>
                                    <li>Mileage<span>1500 (Mi)</span></li>
                                </ul>
                                <div class="product-ratings">
                                    <ul class="list-style">
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                        <li><i class="ri-star-fill"></i></li>
                                    </ul>
                                    <span>(5k+ Ratings)</span>
                                </div>
                                <a href="listing-details.html" class="btn-one">View Details</a>
                                <p class="product-listed-by">Listed By: <span>Zoom Vroom Auto</span></p>
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