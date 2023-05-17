 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*"%>
<%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html lang="zxx">
    <%@include file="Head.jsp"%>
    <body>
    <%@include file="Preloader.jsp"%>

    <%@ include file= "Header.jsp" %> 
<!-----------------------------------------------------------------------------------BODY------------------------------------------------------------------------------------------------------------------------------------------------------------------>
<%String catn = (String)(request.getParameter("catn"));%>
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
                            ResultSet rs = DBLoader.executeQuery("SELECT * FROM carbikerental.vehicles where supercat='BIKE' and Categories='"+catn+"'");
                            while(rs.next())
                            {
                            int vid = rs.getInt("Vehicleid");
                            String cat = rs.getString("Categories");
                            String Name = rs.getString("VehicleName");
                            String photo = rs.getString("VehiclePhoto");
                            String price = rs.getString("Price");
                            String Offerprice = rs.getString("OfferPrice");
                            String TyreType= rs.getString("TyreType");
                            String mileage = rs.getString("mileage");
                            String Engine = rs.getString("Engine");
                            %>
                            <div class="col-xxl-3 col-xl-4 col-lg-6 col-md-6" data-aos="fade-right" data-aos-duration="1200" data-aos-delay="200">
                        <div class="product-card-two">
                            <div class="product-img">
                                <img src="<%=photo%>" alt="Image">
                                 <ul class="product-option list-style">
                                    <li><a onclick="CheckLogin(<%=vid%>)"><i class="flaticon-heart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product-info">
                                <a href="" class="product-category"><%=cat%></a>
                                <h3><a href="Details.jsp?Vehicleid=<%=vid%>"><%=Name%></a></h3>
                                <div class="product-price">Price: <%=Offerprice%></div>
                                <ul class="product-amenity list-style">
                                    <li>TyreType <span><%=TyreType%></span></li>
                                    <li>Engine <span><%=Engine%></span></li>
                                    <li>Mileage<span><%=mileage%></span></li>
                                </ul>
                                <a href="Details.jsp?Vehicleid=<%=vid%>" class="btn-one">View Details</a>
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
                          
<%String user = (String)(session.getAttribute("user"));%>
                    <script>
                        
                        
                        function CheckLogin(vid)
                        {
                              <%if(user!=null)
                              {
                              %>
                                      WishList(vid);
                                      <%
                              }
                              else
                              {
                              %>
                                      Swal.fire({
                                    title: "<h5 style='color:black !important'>Please Login First!</h5>",
                                      confirmButtonColor:`black`,confirmButtonText: 'ok'
                                });
                                      <%
                              }
                              %>
                        }
                        function WishList(vid)
                        {
                            let ser = '<%=user%>';
                            fetch(`addtowishlist?vid=` + vid+`&user=`+ser).then(data=>data.text()).then(resp=>{
                                resp==="success"?Swal.fire({position: 'top-end',icon: 'success', title: "<h5 style='color:black !important'>Added to your wishlist!</h5>",showConfirmButton: false,timer: 1500}):
                                        Swal.fire({position: 'top-end',icon: 'info', title: "<h5 style='color:black !important'>Already in your wishlist!</h5>",showConfirmButton: false,timer: 1500});
                            });
                        }
                            </script>
                </div>
            </div>
        </div>
        <!-- Product Section End -->

<!-----------------------------------------------------------------------------------BODY------------------------------------------------------------------------------------------------------------------------------------------------------------------>
        <%@include file="footer.jsp" %>
</html>