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
        <%int vehid = Integer.parseInt(request.getParameter("Vehicleid"));
            String suser = (String)(session.getAttribute("user"));
        %>
        <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap br-3 bg-f">
            <div class="container">
                <div class="breadcrumb-title">
                    <h2>Product Details</h2>
                    <ul class="breadcrumb-menu list-style">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="shop.html">Product</a></li>
                        <li>Product Details</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Breadcrumb End -->
        <%
        String Ctty= "";
        try{
        ResultSet rts = DBLoader.executeQuery("select * from vehicles where Vehicleid="+vehid);
        if(rts.next())
        {
        String phto = rts.getString("VehiclePhoto");
        String nmae = rts.getString("VehicleName");
        String pr = rts.getString("Price");
        String ofp = rts.getString("OfferPrice");
        String Catname = rts.getString("Categories");
        Ctty =Catname;
        String Descrp = rts.getString("Descrp");
        String transmission = rts.getString("Transmission");
        String DRIVE =rts.getString("Drive");
        String YEAR = rts.getString("YEAR");
        String MIL = rts.getString("mileage");
        String COMP = rts.getString("brand");
        %>
        <!-- Product Details section start -->
        <section class="product-details-wrap ptb-100">
            <div class="container">
                <div class="row gx-5 align-items-xxl-center">
                    <div class="col-xxl-4 col-xl-5 col-lg-6">
                        <div class="single-product-gallery">
                            <img src="<%=phto%>" alt="Image">
                        </div>
                    </div>

                    <div class="col-xxl-7 col-xl-7 col-lg-6">
                        <div class="single-product-details">
                            <div class="single-product-title">
                                <h2><%=nmae%></h2>
                                <h3><span>&#8377;<%=ofp%></span> <span class="discount">&#8377;<%=pr%></span></h3>
                            </div>
                            <p></p>
                            <div class="product-more-option">
                                <div class="product-more-option-item">
                                    <h5>Transmission</h5>
                                    <span><%=transmission%></span>
                                </div>
                                <div class="product-more-option-item">
                                    <h5>Drive :</h5>
                                    <span><%=DRIVE%></span>
                                </div>
                                <div class="product-more-option-item">
                                    <h5>Build Year :</h5>
                                    <span><%=YEAR%></span>
                                </div>
                                <div class="product-more-option-item">
                                    <h5>Mileage:</h5>
                                    <span><%=MIL%></span>
                                </div>
                                <div class="product-more-option-item">
                                    <h5>Company:</h5>
                                    <span><%=COMP%></span>
                                </div>

                            </div>
                            <!--<a href="cart.html" class="btn-two mt-4">Add To Cart</a>-->
                            <div class="row">
                                <form action="" id="bokform">
                                    <div class="col-md-6">
                                        <input type="text" class="btn-two mt-4" id="datepicker1" placeholder="Start Date" style="width: 250px" data-rule-required="true"></div>
                                    <div class="col-md-6">
                                        <input type="text" class="btn-two mt-4" id="datepicker2" placeholder="End Date" style="width: 250px" data-rule-required="true"></div> 
                                </form>
                            </div>
                            <div class="row">
                                <div class="col-md-11">
                                    <input type="button" value="BookNow" onclick="helpd('<%=vehid%>')" class="btn-two mt-4"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>  

        <!-- Product Details section end -->

        <!-- Product Info Start -->
        <section class="product-info-wrap bg_ash ptb-100">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <ul class="nav nav-tabs product-tablist" role="tablist">
                            <li class="nav-item">
                                <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#tab_1"
                                        type="button" role="tab">Description</button>
                            </li>
                            <li class="nav-item">
                                <button class="nav-link" data-bs-toggle="tab" data-bs-target="#tab_2"
                                        type="button" role="tab">Additional Information</button>
                            </li>
                           
                        </ul>
                        <div class="tab-content product-tab-content">
                            <div class="tab-pane fade show active" id="tab_1" role="tabpanel">
                                <div class="product_desc">
                                    <p><%=Descrp%></p>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="tab_2" role="tabpanel">
                                <ul class="product_features list-style">
                                    <li><b>Company: </b> <%=COMP%></li>
                                    <li><b>Transmission: </b> <%=transmission%></li>
                                    <li><b>Mileage:</b> <%=MIL%></li>
                                    <li><b>Year:</b><%=YEAR%></li>
                                    <li><b>Drive:</b><%=DRIVE%></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Product Info End -->
        <%
                                        }
                                        }catch(Exception e)
                                        {
                                            e.printStackTrace();
                                         }
        %>
        <!-- Product Section Start -->
        <div class="product-wrap ptb-100">
            <div class="container">
                <div class="section-title-two text-center mb-30">
                    <h3>Related Products</h3>
                </div>
                <div class="row justify-content-center">
                    <% 
                    try{
                            ResultSet rd = DBLoader.executeQuery("SELECT * FROM carbikerental.vehicles where Categories='"+Ctty+"'");
                           
                            while(rd.next())
                            {
                                int vd = rd.getInt("Vehicleid");
                                 String n = rd.getString("VehicleName");
                                 String pix = rd.getString("VehiclePhoto");
                                String prce = rd.getString("Price");
                                String ofprce = rd.getString("OfferPrice");
                                String trans = rd.getString("Transmission");
                                String DR =rd.getString("Drive");
                                String MI = rd.getString("mileage");
                    %>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <div class="product-card-three">
                            <div class="product-img">
                                <img src="<%=pix%>" alt="Image">
                            </div>
                            <div class="product-info">
                                <div class="product-cat-wrap">
                                    <a href="Details.jsp?Vehicleid=<%=vd%>" class="product-category"><%=Ctty%></a>
                                    <div class="product-price">Price: &#8377; <%=ofprce%></div>
                                </div>
                                <h3><a href="listing-details.html"><%=n%></a></h3>
                                <ul class="product-amenity list-style">
                                    <li><i class="flaticon-settings"></i> <%=trans%></li>
                                    <li><i class="flaticon-gas-station"></i><%=DR%></li>
                                    <li><i class="flaticon-speedometer"></i><%=MI%></li>
                                </ul>
                                <div class="product-action-two">
                                    <a href="Details.jsp?Vehicleid=<%=vd%>" class="btn-one">View Details</a>
                                    <a href="wishlist.html" class="add-to-wishlist"><i class="flaticon-heart"></i></a>
                                    <a href="compare-2.html" class="add-to-wishlist"><i class="flaticon-compare"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
                    %>
                </div>

            </div>
        </div>
        <!-- Product Section End -->


        <!-----------------------------------------------------------------------------------BODY------------------------------------------------------------------------------------------------------------------------------------------------------------------>
        <%@include file="footer.jsp" %>
        <script src="assets/js/jquery-ui.js" type="text/javascript"></script>
                                        <script>
                                        let stringArray = [];
                                        window.onload = function ()
                                        {
                                            let vid = '<%=vehid%>';
                                            fetch('Chlll?vid='+vid)
                                                    .then(response => response.json())
                                                    .then(data => {
                                                        console.log(data);
                                                        // Assign the received list to the global array variable
                                                        stringArray = [...data];

                                                        // Handle the array here
                                                        console.log(stringArray);
                                                    })
                                                    .catch(error => console.error(error));
                                        };
                                        
//                                        var disabledDates = {};
                                        $(function () {
                                            function disableBookedDates(date) {
                                                var dateString = $.datepicker.formatDate('yy-mm-dd', date);
                                                return [stringArray.indexOf(dateString) === -1];
                                            }
                                            $('#datepicker1').datepicker({
                                                minDate: 0,
                                                beforeShowDay: disableBookedDates
                                            });
                                        });


                                        $(function () {
                                            function disableBookedDates(date) {
                                                var dateString = $.datepicker.formatDate('yy-mm-dd', date);
                                                return [stringArray.indexOf(dateString) === -1];
                                            }
                                            $('#datepicker2').datepicker({
                                                minDate:0,
                                                beforeShowDay: disableBookedDates
                                            });
                                        });

            <%
                String man = (String)(session.getAttribute("user"));
            %>
                                        function helpd(Carid)
                                        {
                                            <% 
                                                  if(man!=null){
                                            %>
                                            if ($("#bokform").valid())
                                            {
                                                let vehid = "<%=vehid%>";
                                                let zuer = "<%=suser%>";
                                                let strtdate = document.getElementById("datepicker1").value;
                                                let enddate = document.getElementById("datepicker2").value;
                                                let rata = new FormData();
                                                rata.append("strtdate", strtdate);
                                                rata.append("enddate", enddate);
                                                rata.append("zuer", zuer);
                                                rata.append("carid", Carid);
                                                fetch(`./booking`, {method: "POST", body: rata}).then(data => data.text()).then(resp => {
                                                    if (resp === "success")
                                                    {
                                                        window.location.href = "CheckOut.jsp";
                                                    } else
                                                    {
                                                        alert("error");
                                                    }
                                                });
                                            }
                                         <%
                                            }
                                            else
                                            {
%>
        Swal.fire("<h5 style='color:black !important'>Please Login first to Book ahead</h5>");
        <%

                                            }%>
                                        }
        </script>

</html>