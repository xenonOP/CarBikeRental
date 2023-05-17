<!-- Category Section Start -->
<%@page import="CarBikeRental.carrental.database.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<div class="category-wrap ptb-100">
    <div class="container">
        <div class="section-title-one text-center mb-30">
            <span>Categories</span>
            <h2>Find Your Dream Car</h2>
        </div>
        <div class="category-slider-one owl-carousel">
            <% 
                try{
                ResultSet rs = DBLoader.executeQuery("SELECT * FROM carbikerental.categories where SuperCat ='CAR'");
                        while(rs.next())
                        {
                        String catname = rs.getString("CatName");
                        String catphoto = rs.getString("CatPhoto");
            %>
            <div class="category-card-one">
                <div class="cat-img" style="background: white">
                    <img src="<%=catphoto%>" alt="Image">
                </div>
                <h3><a href="CARCATSHOW.jsp?catn=<%=catname%>"><%=catname%></a></h3>
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
<!-- Category Section End -->