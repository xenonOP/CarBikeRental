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

        <!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap br-16 bg-f">
            <div class="container">
                <div class="breadcrumb-title">
                    <h2>View CAR Categories</h2>
                    <ul class="breadcrumb-menu list-style">
                        <li><a href="adminHome.jsp">Home </a></li>
                        <li>View & delete Car Categories</li>
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
                                            ans+='<img src="'+obj.CatPhoto+'" alt="Image">';
                                            ans+='</div>';
                                            ans+='<div class="dealer-info">';
                                            ans+=' <h3><a href="CatDetail.jsp?Cat='+obj.CatName+'">'+obj.CatName+'</a></h3>';
                                            ans+='<ul class="dealer-metainfo list-style">';
                                            ans+='<li style="cursor: pointer" onclick="DeleteCat('+obj.Catid+')"><i class="flaticon-child"></i>Delete</li>';
                                            ans+='</ul>';
                                            ans+='</div></div>';
                                            ans+='</div>';
                                            }
                                             document.getElementById("CARCAT").innerHTML=ans;
                                        }
                                    };
                                    xhr.open("GET", "./DispCarCatAdmin", true);
                                    xhr.send();
                                };
                            </script>
                            <%
                                try{
                                    ResultSet rs = DBLoader.executeQuery("SELECT * FROM carbikerental.categories");
                                    while(rs.next())
                                    {
                                        String name = rs.getString("CatName");
                                        String photo = rs.getString("CatPhoto");
                            %>
                            <div class="col-xxl-4 col-xl-3 col-lg-3 col-md-6">
                                <div class="dealer-card">
                                    <div class="dealer-logo" style="color: white">
                                        <img src="<%=photo%>" alt="Image">
                                    </div>
                                    <div class="dealer-info">
                                        <h3><a href="dealer-details.html"><%=name%></a></h3>
                                        <ul class="dealer-metainfo list-style">
                                            <li style="cursor: pointer" onclick="DeleteCat('<%=name%>')"><i class="flaticon-child"></i>Delete</li>
                                        </ul>
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
                        <script>function DeleteCat(Catname)
                            {
                                Swal.fire({
                                    title: "<h5 style='color:black !important'>Are you Sure You Want to Delete <u>" + Catname + "</u>?</h5>",
                                    showDenyButton: true, showCancelButton: true, confirmButtonText: 'Delete', denyButtonText: `Don't Delete`
                                }).then((result) => {
                                    if (result.isConfirmed) {
                                        fetch(`DeleteCat?catid=` + Catname).then(data => data.text()).then(resp => {
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