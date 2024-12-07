package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import jakarta.servlet.http.HttpSession;

import java.lang.ProcessHandle.Info;
import java.sql.*;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author BSIL
 */
public class Registration {

    Connection con;
    Statement st;
    ResultSet rs;
    ResultSet rs1;
    HttpSession se;

	
	public Registration(HttpSession session) {
		try {

			Class.forName("com.mysql.jdbc.Driver"); // load the drivers
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wildlife", "root", "vijigowda@10");
			// connection with data base
			se = session;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

    
    
    
//    public Registration(HttpSession session) {
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver"); // Load the MySQL driver
//            // Establish connection
//           
//            con = DriverManager.getConnection("jdbc:mysql://localhost/3306/wildlife", "root", "vijigowda@10");
//            se = session; // Assign session
//        } catch (ClassNotFoundException e) {
//            System.err.println("JDBC Driver not found.");
//            e.printStackTrace();
//        } catch (SQLException e) {
//            System.err.println("Connection to database failed. Check URL, username, or password.");
//            e.printStackTrace();
//        }
//    }
////    
//    
//    public Registration(HttpSession session) {
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wildlife", "root", "vijigowda@10");
//            se = session;
//        } catch (ClassNotFoundException e) {
//            System.err.println("JDBC Driver not found.");
//            e.printStackTrace();
//        } catch (SQLException e) {
//            System.err.println("Connection to database failed.");
//            e.printStackTrace();
//        }
//    }
    
    
    
//    //TO STORE THE DATA IN THE REGISTRATION TABLE
	public String registration(String name, String phone, String email, String pw) {
		// TODO Auto-generated method stub
		
		PreparedStatement ps;
        String status = "";
        try {
            
            ResultSet rs = null;
            st = con.createStatement();
            rs = st.executeQuery("select * from registration where cphone='" + phone + "' or cemail='" + email + "';");
            boolean b = rs.next();
            if (b) {
                status = "existed";
            } else {
                ps = (PreparedStatement) con.prepareStatement("insert into registration values(0,?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, phone);
                ps.setString(3,email);
                ps.setString(4, pw);
                int a = ps.executeUpdate();
                if (a > 0) {
                    status = "success";
                } else {
                    status = "failure";
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
	}
   
    // USING THE DATA STORED IN REGISTRATION TABLE AND USED TO LOGIN PURPOSE
    public String login(String email, String pass) {
		// TODO Auto-generated method stub
		String status1 = "", id = "";
		String name = "", emails = "";

		try {
			
			ResultSet rs = null;
			st = con.createStatement();

			rs = st.executeQuery("select * from registration  where cemail='" + email + "' and cpswd='" + pass + "';");
			boolean b = rs.next();
			if (b == true) {
				id = rs.getString("cid");
				name = rs.getString("cname");
				emails = rs.getString("cemail");
			
				se.setAttribute("uname", name);
				se.setAttribute("email", emails);
				se.setAttribute("id", id);
			
				status1 = "success";
			} else {
				status1 = "failure";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status1;
	}
    
    //ADDING DESTINATION  TO THE DESTINATION TABLE 
 public String addDestination( String name,  String category, String  image,  String info){
    	
		String status = "";
		try {
			Statement st = null;
			ResultSet rs = null;
			
				PreparedStatement ps;
				ps = (PreparedStatement) con.prepareStatement("insert into destination values (0,?,?,?,?)");
				ps.setString(1, name);
				ps.setString(2, category);
				ps.setString(3, image);
				
				ps.setString(4, info);
				int a = ps.executeUpdate();
				if (a > 0)
					status = "Submitted";
				else
					status = "Failed";
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
 
 public String addPackage( String name,String  amount,String season,  String famousfor,   String transportation,String placestovisit){
	
			String status = "";
			try {
				Statement st = null;
				ResultSet rs = null;
				
					PreparedStatement ps;
					ps = (PreparedStatement) con.prepareStatement("insert into package values (?,0,?,?,?,?,?)");
					ps.setString(1, name);
					ps.setString(2, amount);
					ps.setString(3, season);
					ps.setString(4, famousfor);
					
					ps.setString(5, transportation);
					ps.setString(6, placestovisit);
					int a = ps.executeUpdate();
					if (a > 0)
						status = "Submitted";
					else
						status = "Failed";
				
			}catch (Exception e) {
		e.printStackTrace();
	}
	return status;
}
 
	// UISING ANIMAL AS PARAMETER GETTINNG THE DAATA FROM THE DESTINATION TABLE
    public ArrayList<Destination> get_wildlifeinfo(String animal) {
        ArrayList<Destination> al = new ArrayList<Destination>();
        try {
        	Statement st = null;
			ResultSet rs = null;
			
            String qry = "SELECT * FROM destination WHERE dcategory = '" + animal + "';";
            PreparedStatement pst = con.prepareStatement(qry);
            rs = pst.executeQuery();
            while (rs.next()) {
                Destination p = new Destination();
                p.setId(rs.getInt("did"));
                p.setDname(rs.getString("dname"));
                
                String dname = rs.getString("dname");
           	 se.setAttribute("Dname", dname);
                p.setDcategory(rs.getString("dcategory"));
                p.setDimage(rs.getString("dimage"));
              
                p.setDinfo(rs.getString("dinfo"));
                al.add(p);
            	
            	
                System.out.println(al);
            
                         }
           
        } catch (Exception e) {
            e.printStackTrace();
        }

      
        return al;
    }



public String  deletdestination (String destination) {
	int count = 0;
	Statement st = null;
	String status = "";
	try {
		st = con.createStatement();
		count = st.executeUpdate("delete from destination where dname='"+destination+"';");
		if (count > 0) {
			status = "success";
		} else {
			status = "failed";
			System.out.println(count);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return status;
}
    public ArrayList<Package> getPackageinfo(String animalname) {
        ArrayList<Package> al = new ArrayList<Package>();
       
        try {
        	   System.out.println(se.getAttribute("Dname") );
            String qry = "SELECT * FROM Package WHERE dname= '" + animalname+ "';";
            PreparedStatement pst = con.prepareStatement(qry);
            rs = pst.executeQuery();
            while (rs.next()) {
                Package p = new Package();
                p.setPid(rs.getString("pid"));
                p.setPamount(rs.getString("pamount"));
                p.setSeason_to_visit(rs.getString("season_to_visit"));
                p.setFamous_for(rs.getString("famous_for"));
                p.setTransport_info(rs.getString("transport_info"));
                p.setPlaces_to_visit(rs.getString("places_to_visit"));
                al.add(p);
                
                String pamount = rs.getString("pamount");
           	 se.setAttribute("Amount", pamount);
           	
                         }
            System.out.println();
            System.out.println(al);
        } catch (Exception e) {
            e.printStackTrace();
        }

      
        return al;
        
    }
    public ArrayList<Destination> get_productinfo1(int animalId) {
        ArrayList<Destination> al = new ArrayList<>();
        try {
            String qry = "SELECT * FROM destination WHERE did = ?";
            PreparedStatement pst = con.prepareStatement(qry);
            pst.setInt(1, animalId); 
            ResultSet rs = pst.executeQuery(); 
            while (rs.next()) {
                Destination p = new Destination();
                p.setId(rs.getInt("did"));
                p.setDname(rs.getString("dname"));
                p.setDcategory(rs.getString("dcategory"));
                p.setDimage(rs.getString("dimage"));
               
                p.setDinfo(rs.getString("dinfo"));
                al.add(p);
                String dname = rs.getString("dname");
             	 se.setAttribute("Dname", dname);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return al;
    }
    public String Booknow(String destinationName,String userName,String userID, String packageAmount,String trip, String phoneNumber,String numberOfTravellers,String  requirements) {
    	PreparedStatement ps;
		String status = "";
		ResultSet rs = null;
		try {
			Statement st = con.createStatement();
			rs = st.executeQuery(
					"select booking_id from bookings where trip_date= '" + trip+ "'");
			System.out.println("checked");
			boolean b = rs.next();
			if (b == true) {
				status = "existed";
			} else {
				ps= (PreparedStatement) con.prepareStatement("INSERT INTO Bookings values (0,?, ?, ?, ?, ?, ?, ?, ?, 'pending', NOW(),'pending')");

ps.setString(1, destinationName);               // for booking_id
ps.setString(2,userName);          // for destination_name
                 // for user_name
ps.setString(3, userID);                   // for user_id
ps.setString(4, packageAmount);            // for package_amount (assuming it's a double)
ps.setString(5, trip);                 // for trip_date
ps.setString(6, phoneNumber);              // for phone_number
ps.setString(7, numberOfTravellers);         // for number_of_travellers (assuming it's an integer)
ps.setString(8, requirements);              // for requirements
                  // for status
 
				int a = ps.executeUpdate();
				if (a > 0) {
					status = "success";
					Statement st1 = con.createStatement();
					rs = st1.executeQuery("SELECT booking_id FROM bookings WHERE user_name = '" + se.getAttribute("uname") + "' ORDER BY booking_id DESC LIMIT 1;");
							
					System.out.println("checked");
					String bookingid = (String.valueOf(rs.getInt("booking_id")));
	             	 se.setAttribute("Booking-Id", bookingid);
				} else {
					status = "failure";
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
    public ArrayList<Booking> getbookingstatus() {
		ArrayList<Booking> al = new ArrayList<Booking>();
		try {
			ResultSet rs = null;
			Statement st = null;
			st = con.createStatement();
			String qry = " select *,date_format(date,'%d %b,%Y') as date1,date_format(trip_date,'%d %b,%Y') as date2 from bookings where user_id='"
					+ se.getAttribute("id") + " ';";
			rs = st.executeQuery(qry);
			//System.out.println("changed");
			while (rs.next()) {
				//System.out.println("comeing");
				Booking d = new Booking(); // 1..r---db 2.. pass the data or value to Dproduct class set method
				d.setBookingId(rs.getInt("booking_id"));
				d.setDestinationName(rs.getString("destination_name"));
				d.setUserName(rs.getString("user_name"));
				d.setUserId(rs.getInt("user_id"));
				d.setPackageAmount(Double.parseDouble(rs.getString("package_amount")));
				d.setPhoneNumber(rs.getString("phone_number"));
				d.setNumberOfTravellers(Integer.parseInt(rs.getString("number_of_travellers")));
				
				
				d.setStatus(rs.getString("status"));
				d.setPayment(rs.getString("payment"));
				d.setDate(rs.getString("date1"));
				d.setTripDate(rs.getString("date2"));
				d.setStatus(rs.getString("status"));
				al.add(d);
				System.out.println(al);
				 String bookingid = (String.valueOf(rs.getInt("booking_id")));
             	 se.setAttribute("Booking-Id", bookingid);
             	String tripdate = (rs.getString("date2"));
            	 se.setAttribute("TripDate", tripdate);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}
    public int deletetrip(int BookingId) {
        int status = 0;
        try {
            Statement st = null;
            st = con.createStatement();
            String qry = "update bookings set status='cancelled' where booking_id=' " + BookingId + "' ";
            status = st.executeUpdate(qry);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    public ArrayList<Booking> getpaymentinfo() {
        ArrayList<Booking> al = new ArrayList<Booking>();
        try {
            st = con.createStatement();
            String qry = ("select *  from bookings where user_id=" + se.getAttribute("id") + " and status='pending';");
            rs = st.executeQuery(qry);
            while (rs.next()) {
                Booking p = new Booking();
                p.setUserId(rs.getInt("user_id"));
                p.setNumberOfTravellers(Integer.parseInt(rs.getString("number_of_travellers")));
                p.setUserName(rs.getString("user_name"));
                p.setPackageAmount(Double.parseDouble(rs.getString("package_amount")));
                al.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;
    }
    public int acceptpayment() {
        int status = 0;
       
        try {
            Statement st = null;
            st = con.createStatement();
            String qry =  "UPDATE bookings SET payment = 'payment done' WHERE user_name= '" + se.getAttribute("uname") + 
            		 "'";


            status = st.executeUpdate(qry);
            System.out.println("updated");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    public ArrayList<Booking> getbookingstatusAdmin() {
        ArrayList<Booking> al = new ArrayList<Booking>();
        try {
        	ResultSet rs = null;
    		Statement st = null;

            st = con.createStatement();
            String qry = 
            " select *,date_format(date,'%d %b,%Y') as date1,date_format(Trip_date,'%d %b,%Y') as date2 from bookings;";

            rs = st.executeQuery(qry);
            while (rs.next()) {
                Booking d = new Booking(); // 1..r---db 2.. pass the data or value to Dproduct class set method
               
                d.setBookingId(rs.getInt("booking_id"));
				d.setUserName(rs.getString("user_name"));
				
				d.setPackageAmount(Double.parseDouble(rs.getString("package_amount")));
			
			
				
				d.setStatus(rs.getString("status"));
				d.setPayment(rs.getString("payment"));
				d.setDate(rs.getString("date1"));
				d.setTripDate(rs.getString("date2"));
			
                al.add(d);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return al;

    }
    public int deletettrip(int booking_id) {
        int status = 0;
        try {
            Statement st = null;
            st = con.createStatement();
            String qry = "update bookings set status='cancelled' where booking_id=' " + booking_id + "' ";
            status = st.executeUpdate(qry);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
    public int accepttrip(int booking_id) {
        int status = 0;
        try {
            Statement st = null;
            st = con.createStatement();
            String qry = "update bookings set status='booked' where booking_id=' " + booking_id + "' ";
            status = st.executeUpdate(qry);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }


    
}