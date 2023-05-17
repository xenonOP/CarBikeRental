<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.*"%>
<%@page import = "java.sql.*"%>

<%@page import = "CarBikeRental.carrental.database.*"%>
<!DOCTYPE html>
<html lang="zxx">
    <%@include file="Head.jsp"%>
    <body onload="CATDIS()">
        <%@include file="Preloader.jsp"%>

        <%@ include file= "Header.jsp" %> 
        <!-----------------------------------------------------------------------------------BODY------------------------------------------------------------------------------------------------------------------------------------------------------------------>
<%String Cates = (String)(request.getParameter("Cat"));%>
        <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap br-16 bg-f">
            <div class="container">
                <div class="breadcrumb-title">
                    <h2>View BIKE Categories</h2>
                    <ul class="breadcrumb-menu list-style">
                        <li><a href="adminHome.jsp">Home </a></li>
                        <li>View & delete Bike Categories</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Breadcrumb End -->

        <!-- Dealer Section Start -->
        <div class="Dealer-wrap ptb-100">
            <div class="container">
                <div class="row">
                    <div class="col-xxl-12 col-xl-12 col-lg-12 order-xl-2 order-lg-1 order-md-1 order-1">
                        <div class="row justify-content-center" id="CARCAT">
                            <script>
                               function CATDIS()
                                {
                                    let cat = "<%=Cates%>";
                                    let xhr = new XMLHttpRequest();
                                    xhr.onreadystatechange=function()
                                    {
                                        if(this.readyState===4&&this.status===200)
                                        {
                                            let resp = this.responseText.trim();
                                            let mainobj = JSON.parse(resp);
                                            let arr  = mainobj.ans;
                                            console.log(arr);
                                            let ans = "";
                                            for(let i =0; i<arr.length; i++)
                                            {
                                                let obj  = arr[i];
                                                ans+='<div class="col-xxl-4 col-xl-3 col-lg-3 col-md-6">';
                                            ans+='<div class="dealer-card">';
                                            ans+='<div class="dealer-logo" style="color: white">';
                                            ans+='<img src="'+obj.VehiclePhoto+'" alt="Image">';
                                            ans+='</div>';
                                            ans+='<div class="dealer-info">';
                                            ans+=' <h3><a href="dealer-details.html">'+obj.VehicleName+'</a></h3>';
                                            ans+='<ul class="dealer-metainfo list-style">';
                                            ans+='<li style="cursor: pointer" onclick="DeleteCat('+obj.Vehicleid+')"><i class="flaticon-child"></i>Delete</li>';
                                            ans+='</ul>';
                                            ans+='</div></div>';
                                            ans+='</div>';
                                            }
                                             document.getElementById("CARCAT").innerHTML=ans;
                                        }
                                    };
                                    xhr.open("GET", "./DispCar?Cat="+cat, true);
                                    xhr.send();
                                };
                            </script>
                        </div>
                        <script>function DeleteCat(Catname)
                            {
                                Swal.fire({
                                    title: "<h5 style='color:black !important'>Are you Sure You Want to Delete <u>" + Catname + "</u>?</h5>",
                                    showDenyButton: true, showCancelButton: true, confirmButtonText: 'Delete', denyButtonText: `Don't Delete`
                                }).then((result) => {
                                    if (result.isConfirmed) {
                                        fetch(`DeleteCars?catid=` + Catname).then(data => data.text()).then(resp => {
                                                if(resp === "success"){
                                                    CATDIS();
                                                    Swal.fire('<h5 style="color:black !important">Deleted</h5>', '', 'success');
                                                }
                                                else
                                                {
                                                    Swal.fire('<h5 style="color:black !important">'+resp+'</h5>', '', 'error');
                                                }
                                        });
                                    } else if (result.isDenied) {
                                        Swal.fire('<h5 style="color:black !important">Changes not Saved</h5>', '', 'info');
                                    }
                                });
                            }</script>
                    </div>
                </div>
            </div>
        </div>
        <!-- Dealer Section End -->


        <!-----------------------------------------------------------------------------------BODY------------------------------------------------------------------------------------------------------------------------------------------------------------------>
        <%@include file="footer.jsp" %>
</html>