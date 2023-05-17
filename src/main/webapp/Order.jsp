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
<!-- Breadcrumb Start -->
        <div class="breadcrumb-wrap br-4 bg-f">
            <div class="container">
                <div class="breadcrumb-title">
                    <h2>Orders</h2>
                    <ul class="breadcrumb-menu list-style">
                        <li><a href="index.jsp">Home</a></li>
                        <li>ORDERS</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Breadcrumb End -->

         <!-- Cart section start -->
         <div class="cart-wrap ptb-100">
            <div class="container">
                <div class="cart-table ">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Vehicle Name </th>
                                <th scope="col">Start Date</th>
                                <th scope="col">End Date</th>
                                <th scope="col">Days</th>
                                <th scope="col">Payment method</th>
                                <th scope="col">Price Paid</th>
                            </tr>
                        </thead>
                        
                        <script>
                            window.onload=function go()
                            {
                                let email = '<%=press1%>';
                                fetch(`orders?email=`+email).then(data=>data.json()).then(resp=>{
                                    let arr = resp.ans;
                                    let ans="";
                                    for(let i =0; i<arr.length; i++)
                                    {
                                        let obj = arr[i];
                                        ans+='<tr>';
                                        ans+='<td>';
                                        ans+='<a class="cart-item" href="Details.jsp?Vehicleid='+obj.Vehicleid+'">';
                                        ans+='<span>'+obj.VehicleName+'</span>';
                                        ans+='</a>';
                                        ans+='</td>';
                                        ans+='<td>';
                                        ans+='<span>'+obj.Startdate+'</span>';
                                        ans+='</td>';
                                        ans+='<td>';
                                        ans+='<span>'+obj.EndDate+'</span>';
                                        ans+='</td>';
                                        ans+='<td>';
                                        ans+='<span>'+obj.dins+'</span>';
                                        ans+='</td>';
                                        ans+='<td>';
                                        ans+='<span>'+obj.payment+'</span>';
                                        ans+='</td>';
                                        ans+='<td>';
                                        ans+='<span>'+obj.total+'</span>';
                                        ans+='</td>';
                                        ans+="</tr>";
                                    }
                                    document.getElementById("tdb1").innerHTML=ans;
                                });
                            }
                        </script>
                        <tbody id="tdb1">
                            
                                
                                    
                                
                             
                        </tbody>
                    </table>
                </div>
               
            </div>
        </div>
        <!-- Cart section end -->

<!-----------------------------------------------------------------------------------BODY------------------------------------------------------------------------------------------------------------------------------------------------------------------>
        <%@include file="footer.jsp" %>
</html>