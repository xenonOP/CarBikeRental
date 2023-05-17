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
                <h2>Add Bike Category</h2>
                <div class="add-listing-box">

                    <form id="addVehicle" class="add-listing-form">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="Vname">Category Name</label>
                                    <input type="text" id="CName" placeholder="Enter Title Here" data-rule-required="true" data-msg-required="Category Name Required">
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
                formdata.append("CName", document.getElementById("CName").value); 
                formdata.append("mainImg", document.getElementById("mainImg").files[0]);
                fetch(`AddBikeCat`, {method:"POST", body:formdata}).then(data=>data.text()).then(resp=>{
                    if(resp==="success"){Qual.successd("Success", "Category Added SuccessFully"); document.getElementById("addVehicle").reset();document.getElementById("3333").src="";}
                    else{Qual.errord("Oh no !","Something wrong happened");}
                });
               }
            }
            </script>
</html>