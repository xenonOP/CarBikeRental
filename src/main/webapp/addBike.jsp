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
                    <h2>Add Listings</h2>
                    <ul class="breadcrumb-menu list-style">
                        <li><a href="index.jsp">Home </a></li>
                        <li>Add Listing</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Breadcrumb End -->

        <!-- Add Listing Section Start -->
        <div class="add-listing-wrap ptb-100">
            <div class="container">
                <h2>Add Listing</h2>
                <div class="add-listing-box">

                    <form id="addVehicle" class="add-listing-form">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="Vname">Vehicle Name</label>
                                    <input type="text" id="Vname" placeholder="Enter Title Here" data-rule-required="true" data-msg-required="Vehicle Name Required">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Category Type</label>
                                    <select id="catname"  data-msg-required = "Select Category" required data-rule-required="true">
                                        <option value="">Select</option>
                                        <%
                                            try{
                                                ResultSet rs = DBLoader.executeQuery("SELECT * FROM carbikerental.categories where SuperCat ='BIKE'");
                                                while(rs.next())
                                                {
                                                    String CatName = rs.getString("CatName");
                                            %>        
                                                <option value="<%=CatName%>"><%=CatName%></option>
                                            <%
                                                }
                                            }
                                            catch(Exception e)
                                            {
                                              e.printStackTrace();
                                            }
                                            %>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="ppd">Price Per Day</label>
                                    <input type="text" id="ppd" placeholder="Enter Price per Day Here" data-rule-required="true" data-msg-required="Enter Price">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="Offppd">OfferPrice Per Day</label>
                                    <input type="text" id="Offppd" placeholder="Enter OfferPrice per Day Here" data-rule-required="true" data-msg-required="Enter OfferPrice">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="brand">BRAND</label>
                                    <input type="text" id="brand" placeholder="Enter Brand Here" data-rule-required="true" data-msg-required="Enter Brand">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Engine</label>
                                    <input type="text" id="Engine" placeholder="Enter Engine Here" data-rule-required="true" data-msg-required="Mention Engine">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Year</label>
                                    <select data-rule-required="true" id="Year" required>
                                        <option value="select">Select</option>
                                        <option value="2022">2022</option>
                                        <option value="2021">2021</option>
                                        <option value="2020">2020</option>
                                        <option value="2019">2019</option>
                                        <option value="2018">2018</option>
                                        <option value="2017">2017</option>
                                        <option value="2016">2016</option>
                                        <option value="2015">2015</option>
                                        <option value="2014">2014</option>
                                        <option value="2013">2013</option>
                                        <option value="2012">2012</option>
                                        <option value="2011">2011</option>
                                        <option value="2010">2010</option>
                                        <option value="2009">2009</option>
                                        <option value="2008">2008</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Tyre Type</label>
                                    <input type="text" id="Tyres" placeholder="Enter Tyre Type Here" data-rule-required="true" data-msg-required="Enter Tyre Type">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Mileage</label>
                                    <input type="text" data-rule-required="true" id="mileage" placeholder="Enter Mileage">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea cols="30" rows="10" data-rule-required="true" id="Desss"></textarea>
                                </div>
                            </div>
                            <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

                            <script>
                                function read(input)
                                {
                                    document.getElementById("3333").style.display = "block";
                                    if (input.files && input.files[0])
                                    {
                                        var reader = new FileReader();
                                        reader.onload = function (e) {
                                            $('#3333')
                                                    .attr('src', e.target.result);
                                        };
                                        reader.readAsDataURL(input.files[0]);
                                    }

                                }
                            </script>
                        </div>
                    </form>
                </div>
                <div class="row mb-40 align-items-center">
                    <div class="col-lg-12">
                        <h2>Choose Main Image Here</h2>
                    </div>
                </div>
                <div class="add-listing-box">
                    <div class="row align-items-center">
                        <div class="col-lg-6">
                            <!--<div class="add-listing-box" >-->
                            <div class="form-group photo-upload">
                                <div class="add-listing__input-file-box">
                                    <input class="add-listing__input-file" type="file" name="file" onchange="read(this)" id="mainImg">
                                    <div class="add-listing__input-file-wrap">
                                        <p>Add Images</p>
                                    </div>
                                </div>

                                <!--</div>-->
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <img src=""  class="img img-fluid rounded" style="display:none; height: 334px; width: 100%" id="3333" alt="avatar" data-rule-required="true">
                        </div>
                    </div>
                </div>
                                    <button type="button" class="btn-two" onclick="vent()">Add Listing</button> 
            </div>
        </div>
        <!--  Add Listing Section End -->


        <!-----------------------------------------------------------------------------------BODY------------------------------------------------------------------------------------------------------------------------------------------------------------------>
        <%@include file="footer.jsp" %>
        <script>
            function vent()
            {
                if($('#addVehicle').valid())
               {
                    let formdata = new FormData();
                formdata.append("Vname", document.getElementById("Vname").value); formdata.append("catname", document.getElementById("catname").value);
                formdata.append("ppd", document.getElementById("ppd").value); formdata.append("Offppd", document.getElementById("Offppd").value);
                formdata.append("brand", document.getElementById("brand").value);formdata.append("Engine", document.getElementById("Engine").value);
                formdata.append("Tyres", document.getElementById("Tyres").value);formdata.append("mileage", document.getElementById("mileage").value);
                formdata.append("Desss", document.getElementById("Desss").value);formdata.append("Year", document.getElementById("Year").value);
                formdata.append("mainImg", document.getElementById("mainImg").files[0]);
                fetch(`AddBike`, {method:"POST", body:formdata}).then(data=>data.text()).then(resp=>{
                    if(resp==="success"){Qual.successd("Success", "Car Added to Inventory SuccessFully"); document.getElementById("addVehicle").reset();document.getElementById("3333").src="";}
                    else{Qual.errord("Oh no !","Something wrong happened");}
                });
               }
            }
            </script>
</html>