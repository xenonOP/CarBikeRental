/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CarBikeRental.carrental.controller;

import CarBikeRental.carrental.database.*;
import jakarta.annotation.PostConstruct;
import jakarta.servlet.http.HttpSession;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.bind.annotation.RestController;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Kanish Rajput
 */
@RestController
public class restController {
    
    @Autowired
    private EmailSenderService service;
    @GetMapping("WAP")
    public void wap()
    {
        sendWAPIMessage.sendmessage("PHONE NUMBER HERE", "hello this is a custom message");
    }
    @PostMapping("Signup")
    public String Singup(@RequestParam String Name, @RequestParam String email, @RequestParam String phone, @RequestParam String pwd, HttpSession session) {
        try {
            ResultSet rs = DBLoader.executeQuery("select * from users where email = '" + email + "'");
            if (rs.next()) {
                return "User Already Exists";
            } else {
                rs.moveToInsertRow();
                rs.updateString("Email", email);
                rs.updateString("Name", Name);
                rs.updateString("Password", pwd);
                rs.updateString("Phone", phone);
                rs.insertRow();
                session.setAttribute("user", email);
                return "success";
            }
        } catch (Exception w) {
            return "error";
        }
    }
    
    
    @GetMapping("login")
    public String Login(@RequestParam String email, @RequestParam String pass, HttpSession session) {
        try {
            ResultSet rs = DBLoader.executeQuery("SELECT * FROM users");
            String u = "";
            String p = "";
            boolean found1 = true;
            boolean found2 = true;
            while (rs.next()) {
                u = rs.getString("Email");
                p = rs.getString("Password");
                if (u.equalsIgnoreCase(email)) {
                    found1 = true;
                    if (p.equals(pass)) {
                        found2 = true;
                        break;
                    } else {
                        found2 = false;
                        break;
                    }
                } else {
                    found1 = false;
                }
            }
            if (found1 == true && found2 == true) {
                String naa = rs.getString("Name");
                session.setAttribute("user", email);
                return "success";
            } else if (found1 == false && found2 == true) {
                return "Invalid Credentials";
            } else if (found2 == false && found1 == true) {
                return "Invalid Credentials";
            } else {
                return "Enter Correct Details";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "errors";
        }
    }

    @GetMapping("AdminLogin")
    public String AdminLogin(@RequestParam String email, @RequestParam String pass, HttpSession session) {
        try {
            ResultSet rs = DBLoader.executeQuery("SELECT * FROM carbikerental.admin");
            String u = "";
            String p = "";
            boolean found1 = true;
            boolean found2 = true;
            while (rs.next()) {
                u = rs.getString("adminEmail");
                p = rs.getString("adminPass");
                if (u.equalsIgnoreCase(email)) {
                    found1 = true;
                    if (p.equals(pass)) {
                        found2 = true;
                        break;
                    } else {
                        found2 = false;
                        break;
                    }
                } else {
                    found1 = false;
                }
            }
            if (found1 == true && found2 == true) {
                session.setAttribute("user", email);
                return "success";
            } else if (found1 == false && found2 == true) {
                return "Invalid Credentials";
            } else if (found2 == false && found1 == true) {
                return "Invalid Credentials";
            } else {
                return "Enter Correct Details";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "errors";
        }
    }

    @PostMapping("AddListing")
    public String AddListing(@RequestParam String Vname, @RequestParam String catname, @RequestParam String ppd, @RequestParam String Offppd, @RequestParam String brand, @RequestParam String Drive,
            @RequestParam String Transmission, @RequestParam String mileage, @RequestParam String Desss, @RequestParam String Year, @RequestParam MultipartFile mainImg) {
        try {
            String old_name = mainImg.getOriginalFilename();
            int pos = old_name.lastIndexOf(".");
            String ext = old_name.substring(pos);
            String new_name = System.currentTimeMillis() + ext;
            InputStream in = mainImg.getInputStream();
            FileOutputStream fout = new FileOutputStream("C:/Users/hp/Documents/NetBeansProjects/CarBikeRental/src/main/webapp/myuploads/" + new_name);
            long filesize = mainImg.getSize();
            long count = 0;
            int r;
            byte b[] = new byte[100000];
            while (true) {
                r = in.read(b, 0, 100000);
                fout.write(b, 0, r);
                count += r;
                if (count == filesize) {
                    break;
                }
            }
            fout.close();
            ResultSet rs = DBLoader.executeQuery("SELECT * FROM carbikerental.vehicles");
            rs.moveToInsertRow();
            rs.updateString("VehicleName", Vname);
            rs.updateString("VehiclePhoto", "myuploads/" + new_name);
            rs.updateString("Descrp", Desss);
            rs.updateString("year", Year);
            rs.updateString("Price", ppd);
            rs.updateString("OfferPrice", Offppd);
            rs.updateString("Categories", catname);
            rs.updateString("Drive", Drive);
            rs.updateString("Transmission", Transmission);
            rs.updateString("supercat", "CAR");
            rs.updateString("brand", brand);
            rs.updateString("mileage", mileage);
            rs.insertRow();
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    @PostMapping("booking")
    public String Booking(@RequestParam int carid, @RequestParam String strtdate, @RequestParam String enddate, @RequestParam String zuer) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/dd/yyyy");
        LocalDate date = LocalDate.parse(strtdate, formatter);
        String SrtDate = date.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        LocalDate date2 = LocalDate.parse(enddate, formatter);
        String endDat = date2.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        long daysBetween = ChronoUnit.DAYS.between(date, date2);
        int dats = (int)(daysBetween);
        try {
            int price = -1;
            String cname = "";
            String Price = "";
            String Ofprice = "";
            ResultSet rt = DBLoader.executeQuery("SELECT * FROM carbikerental.vehicles where Vehicleid="+carid);
            if(rt.next())
            {
                cname = rt.getString("VehicleName");
                Ofprice = rt.getString("OfferPrice");
                price=rt.getInt("Price");
            }
            int rate = price*dats;
            int tax = (rate*5)/100;
            int total = rate+tax;
            ResultSet rs = DBLoader.executeQuery("SELECT * FROM carbikerental.booking");
            rs.moveToInsertRow();
            rs.updateInt("vehid", carid);
            rs.updateString("StartDate", SrtDate);
            rs.updateString("EndDate", endDat);
            rs.updateString("user", zuer);
            rs.updateString("Rate", rate+"");
            rs.updateInt("DinBtw", dats);
            rs.updateString("vehiclename", cname);
            rs.updateString("offerprice", Ofprice);
            rs.updateString("tax", tax+"");
            rs.updateString("Total", total+"");
            rs.updateInt("price", price);
            rs.insertRow();
            return "success";
        } catch (Exception ex) {
            return ex.toString();
        }

    }

    @GetMapping("DispCarCatAdmin")
    public String Disp() {
        String CarCat = new RDBMStoJSON().generateJSON("SELECT * FROM carbikerental.categories where SuperCat='CAR'");
        return CarCat;
    }

    @GetMapping("DispBikeCatAdmin")
    public String BikeDisp() {
        String CarCat = new RDBMStoJSON().generateJSON("SELECT * FROM carbikerental.categories where SuperCat='BIKE'");
        return CarCat;
    }

    @GetMapping("DeleteCat")
    public String DeleteCat(@RequestParam int catid) {
        try {
            ResultSet rs = DBLoader.executeQuery("SELECT * FROM carbikerental.categories where Catid=" + catid);
            if (rs.next()) {
                rs.deleteRow();
                return "success";
            } else {
                return "No Such Category Found!";
            }
        } catch (Exception w) {
            return w.toString();
        }
    }

    @PostMapping("AddCat")
    public String AddCat(@RequestParam String CName, @RequestParam MultipartFile mainImg) {
        try {
            ResultSet rs = DBLoader.executeQuery("select * from carbikerental.categories where CatName='" + CName + "'");
            if (rs.next()) {
                return "already Exists";
            } else {
                String old_Name = mainImg.getOriginalFilename();
                int pos = old_Name.lastIndexOf(".");
                String ext = old_Name.substring(pos);
                String new_name = System.currentTimeMillis() + ext;
                InputStream in = mainImg.getInputStream();
                FileOutputStream fout = new FileOutputStream("C:/Users/hp/Documents/NetBeansProjects/CarBikeRental/src/main/webapp/myuploads/" + new_name);
                long filesize = mainImg.getSize();
                long count = 0;
                int r;
                byte b[] = new byte[100000];
                while (true) {
                    r = in.read(b, 0, 100000);
                    fout.write(b, 0, r);
                    count += r;
                    if (count == filesize) {
                        break;
                    }
                }
                fout.close();
                rs.moveToInsertRow();
                rs.updateString("CatName", CName);
                rs.updateString("CatPhoto", "myuploads/" + new_name);
                rs.updateString("SuperCat", "CAR");
                rs.insertRow();
                return "success";
            }
        } catch (Exception w) {
            return w.toString();
        }
    }

    @PostMapping("AddBikeCat")
    public String AddBikeCat(@RequestParam String CName, @RequestParam MultipartFile mainImg) {
        try {
            ResultSet rs = DBLoader.executeQuery("select * from carbikerental.categories where CatName='" + CName + "'");
            if (rs.next()) {
                return "already Exists";
            } else {
                String old_Name = mainImg.getOriginalFilename();
                int pos = old_Name.lastIndexOf(".");
                String ext = old_Name.substring(pos);
                String new_name = System.currentTimeMillis() + ext;
                InputStream in = mainImg.getInputStream();
                FileOutputStream fout = new FileOutputStream("C:/Users/hp/Documents/NetBeansProjects/CarBikeRental/src/main/webapp/myuploads/" + new_name);
                long filesize = mainImg.getSize();
                long count = 0;
                int r;
                byte b[] = new byte[100000];
                while (true) {
                    r = in.read(b, 0, 100000);
                    fout.write(b, 0, r);
                    count += r;
                    if (count == filesize) {
                        break;
                    }
                }
                fout.close();
                rs.moveToInsertRow();
                rs.updateString("CatName", CName);
                rs.updateString("CatPhoto", "myuploads/" + new_name);
                rs.updateString("SuperCat", "BIKE");
                rs.insertRow();
                return "success";
            }
        } catch (Exception w) {
            return w.toString();
        }
    }

    @PostMapping("AddBike")
    public String AddBike(@RequestParam String Vname, @RequestParam String catname, @RequestParam String ppd, @RequestParam String Offppd, @RequestParam String brand, @RequestParam String Tyres,
            @RequestParam String Engine, @RequestParam String mileage, @RequestParam String Desss, @RequestParam String Year, @RequestParam MultipartFile mainImg) {
        try {
            String old_name = mainImg.getOriginalFilename();
            int pos = old_name.lastIndexOf(".");
            String ext = old_name.substring(pos);
            String new_name = System.currentTimeMillis() + ext;
            InputStream in = mainImg.getInputStream();
            FileOutputStream fout = new FileOutputStream("C:/Users/hp/Documents/NetBeansProjects/CarBikeRental/src/main/webapp/myuploads/" + new_name);
            long filesize = mainImg.getSize();
            long count = 0;
            int r;
            byte b[] = new byte[100000];
            while (true) {
                r = in.read(b, 0, 100000);
                fout.write(b, 0, r);
                count += r;
                if (count == filesize) {
                    break;
                }
            }
            fout.close();
            ResultSet rs = DBLoader.executeQuery("SELECT * FROM carbikerental.vehicles");
            rs.moveToInsertRow();
            rs.updateString("VehicleName", Vname);
            rs.updateString("VehiclePhoto", "myuploads/" + new_name);
            rs.updateString("Descrp", Desss);
            rs.updateString("year", Year);
            rs.updateString("Price", ppd);
            rs.updateString("OfferPrice", Offppd);
            rs.updateString("Categories", catname);
            rs.updateString("TyreType", Tyres);
            rs.updateString("Engine", Engine);
            rs.updateString("supercat", "BIKE");
            rs.updateString("brand", brand);
            rs.updateString("mileage", mileage);
            rs.insertRow();
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    @GetMapping("DispCar")
    public String Disp(@RequestParam String Cat) {
        String Cars = new RDBMStoJSON().generateJSON("select * from vehicles where Categories='" + Cat + "'");
        return Cars;
    }

    @GetMapping("DeleteCars")
    public String DeleteCars(@RequestParam int catid) {
        try {
            ResultSet rs = DBLoader.executeQuery("SELECT * FROM carbikerental.vehicles where Vehicleid=" + catid);
            if (rs.next()) {
                rs.deleteRow();
                return "success";
            } else {
                return "No Such Car Found!";
            }
        } catch (Exception w) {
            return w.toString();
        }
    }

    @GetMapping("addtowishlist")
    public String addtowishlist(@RequestParam int vid, @RequestParam String user) {
        System.out.println(vid);
        System.out.println(user);
        try {
            ResultSet rs = DBLoader.executeQuery("select * from wishlist where vehid="+vid+" and username='"+user+"'");
            if (rs.next()) {
                return "already in your wishlist!";
            } else {
                rs.moveToInsertRow();
                rs.updateString("username", user);
                rs.updateInt("vehid", vid);
                rs.insertRow();
                return "success";
            }
        } catch (Exception e) {
            return "error";
        }
    }
    
    @GetMapping("ChekBill")
    public String Chekbill(@RequestParam String ser)
    {
       String checkBill = new RDBMStoJSON().generateJSON("SELECT * FROM carbikerental.booking where user ='"+ser+"'");
       return checkBill;
    }

    
       public static List<String> getBookedDates(String startDateStr, String endDateStr) {
        // Convert start and end date strings to LocalDate objects
       
        LocalDate startDate = LocalDate.parse(startDateStr);
        LocalDate endDate = LocalDate.parse(endDateStr);
        
        // Create an empty list to store the booked dates
        List<String> bookedDates = new ArrayList<>();
        
        // Loop over the range of dates between the start and end dates
        for (LocalDate date = startDate; !date.isAfter(endDate); date = date.plusDays(1)) {
            // Append each date to the booked dates list
            bookedDates.add(date.toString());
        }
        
        return bookedDates;
    }
       
     @GetMapping("Chlll")
     public List<String> Test(@RequestParam int vid)
     {
          String a[];
          List<String> al=new ArrayList<>();
         try{
             ResultSet rs = DBLoader.executeQuery("select * from orderdetail where vehid="+vid);
             while(rs.next())
             {
                 al.addAll(getBookedDates(rs.getString("StartDate"), rs.getString("EndDate")));
             }
             System.out.println(al);
             
             return al;
         }
         catch(Exception e)
         {
             e.printStackTrace();
             return null;
         }
     }
     
     
     @PostMapping("checkout")
     public String checkout(@RequestParam String fname, @RequestParam String lname, @RequestParam String user,
             @RequestParam String email, @RequestParam String phone, @RequestParam String company_name,
             @RequestParam String adhar, @RequestParam String State, @RequestParam String City, @RequestParam String street,
             @RequestParam String zip, @RequestParam String msg, @RequestParam String paymeth)
     {
         System.out.println(fname);
         System.out.println(lname);
         System.out.println(email);
         System.out.println(phone);
         System.out.println(company_name);
         System.out.println(adhar);
         System.out.println(State);
         System.out.println(City);
         System.out.println(street);
         System.out.println(zip);
         System.out.println(msg);
         System.out.println(paymeth);
         System.out.println(user);
         try{
             String Startdate="";
             String Enddate="";
             String total = "";
             String vehicleName = "";
             String rate = "";
             int bokid=-2;
             int vehid=-1;
             String dins = "";
             int Rakam = 0;
             ResultSet rs4 = DBLoader.executeQuery("select * from booking where user ='"+user+"'");
             while(rs4.next())
             {
                 Rakam+=Integer.parseInt(rs4.getString("Total"));
             }
              ResultSet rs = DBLoader.executeQuery("Select * from ordertable");
             rs.moveToInsertRow();
              rs.updateString("Name", fname+" "+lname);
              rs.updateString("Email", email);
              rs.updateString("Phone", phone);
              rs.updateString("CompanyName", company_name);
             rs.updateString("Adhaarcard", adhar);
             rs.updateString("state", State);
             rs.updateString("city", City);
             rs.updateString("street", street);
             rs.updateString("zip", zip);
             rs.updateString("ordernote", msg);
             rs.updateString("totalrate", Rakam+"");
             rs.updateString("payment", paymeth);
             rs.updateString("user", user);
             rs.insertRow();
            int orderid=0;
            ResultSet rs5 = DBLoader.executeQuery("select MAX(orderid) from ordertable");
            if(rs5.next())
            {
               orderid = rs5.getInt("MAX(orderid)");
               System.out.println(orderid);
           }
             ResultSet rs1 = DBLoader.executeQuery("select * from booking where user = '"+user+"'");
             while(rs1.next())
             {
                 Startdate= rs1.getString("StartDate");
                 Enddate = rs1.getString("EndDate");
                 total = rs1.getString("total");
                 vehicleName = rs1.getString("vehiclename");
                 rate = rs1.getString("Rate");
                 bokid = rs1.getInt("bookingid");
                 vehid=rs1.getInt("vehid");
                 dins = rs1.getString("DinBtw");
                 ResultSet rs2 = DBLoader.executeQuery("SELECT * FROM carbikerental.orderdetail");
                 rs2.moveToInsertRow();
                 rs2.updateString("rate", rate);
                 rs2.updateInt("orderid", orderid);
                 rs2.updateInt("vehid", vehid);
                 rs2.updateString("total", total);
                 rs2.updateString("dins", dins);
                 rs2.updateString("Startdate", Startdate);
                 rs2.updateString("EndDate", Enddate);
                 rs2.updateString("user",user);
                 rs2.insertRow();
                 ResultSet rs3 = DBLoader.executeQuery("SELECT * FROM carbikerental.booking where bookingid="+bokid);
                 if(rs3.next())
                 {
                     rs3.deleteRow();
                 }
             }
             
             service.sendSimpleEmail(user, "Dear \"" + user.split("@")[0] + "\",\n"
                    + "\n"
                    + "As part of our ongoing efforts to enhance account security, we have implemented a one-time password (OTP) system for your account. This means that in order to access your account, you will need to enter a unique OTP that will be sent to you via email.\n"
                    + "\n"
                    + "Please find below your one-time password: [KANISHKANISH]\n"
                    + "\n"
                    + "Please note that this OTP is valid for only one use and for a limited time period. Once used or expired, you will need to request a new OTP to access your account.\n"
                    + "\n"
                    + "If you did not request an OTP, or if you suspect any unauthorized access to your account, please contact our customer support team immediately.\n"
                    + "\n"
                    + "Thank you for your cooperation in maintaining the security of your account.\n"
                    + "\n"
                    + "Best regards,\n"
                    + "Zyth", "Your One time Password for ZYTH");
             
             
             return "success";
         }catch(Exception e)
         {
             e.printStackTrace();
             return e.toString();
         }
     }
     
     @GetMapping("Wishlist")
     public String Wishlist (@RequestParam String user)
     {
         String wishlist = new RDBMStoJSON().generateJSON("SELECT * FROM carbikerental.vehicles INNER JOIN carbikerental.wishlist ON vehicles.Vehicleid=wishlist.vehid where wishlist.username=\'"+user+"\' ");
         return wishlist;
     }
    
     @GetMapping("Vehicless")
     public String vehicle()
     {
         String Vehicle = new RDBMStoJSON().generateJSON("select  * from vehicles");
         return Vehicle;
     }
     
     
     @GetMapping("orders")
     public String orders(@RequestParam String email)
     {
         String order = new RDBMStoJSON().generateJSON("select * from (carbikerental.ordertable INNER JOIN carbikerental.orderdetail ON ordertable.orderid=orderdetail.orderid) INNER JOIN carbikerental.vehicles ON orderdetail.vehid=vehicles.Vehicleid where orderdetail.user='"+email+"'");
                 return order;
         

     }
}

