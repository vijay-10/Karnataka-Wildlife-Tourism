package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import Model.Registration;
import Model.Destination;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "register", urlPatterns = { "/register" })
public class register extends HttpServlet {

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		// type of the response sent to the client or browser
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		Registration reg = new Registration(session);
	
		try {
			if (request.getParameter("adddestination") != null) {
				String name = request.getParameter("name");
				String category = request.getParameter("category");
				String image = request.getParameter("image");
				
				String info = request.getParameter("info");
				String status = reg.addDestination(name, category, image,  info);
				if (status.equals("Submitted")) {
					request.setAttribute("status", "New Destination Added");
					RequestDispatcher rd = request.getRequestDispatcher("AddDestination.jsp");
					rd.forward(request, response);
				} else if (status.equals("Already Added")) {
					request.setAttribute("status", "Already Added");
					RequestDispatcher rd = request.getRequestDispatcher("AddDestination.jsp");
					rd.forward(request, response);
				} else if (status.equals("Failed")) {
					request.setAttribute("status", "Failed To Add Event");
					RequestDispatcher rd = request.getRequestDispatcher("AddDestination.jsp");
					rd.forward(request, response);
				}
			}
			
			else if (request.getParameter("addpackage") != null) {
				String name = request.getParameter("name");
				String amount= request.getParameter("amount");
				String season = request.getParameter("season");
				String famousfor = request.getParameter("famousfor");
			
				String transportation = request.getParameter("transportation");
				String placestovisit = request.getParameter("placestovisit");
				
				String status = reg.addPackage(name,amount,season,famousfor, transportation,placestovisit );
				if (status.equals("Submitted")) {
					request.setAttribute("status", "New Package Added");
					RequestDispatcher rd = request.getRequestDispatcher("AddPackageinfo.jsp");
					rd.forward(request, response);
				} else if (status.equals("Already Added")) {
					request.setAttribute("status", "Already Added");
					RequestDispatcher rd = request.getRequestDispatcher("AddPackageinfo.jsp");
					rd.forward(request, response);
				} else if (status.equals("Failed")) {
					request.setAttribute("status", "Failed To Add Event");
					RequestDispatcher rd = request.getRequestDispatcher("AddPackageinfo.jsp");
					rd.forward(request, response);
				}
			}

		   else if (request.getParameter("register") != null) {

            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String pw = request.getParameter("pw");
            String cp = request.getParameter("cp");

            if (pw.equals(cp)) {
                String status = reg.registration(name, phone, email, pw);
                
                
                if (status.equals("existed")) {

                    request.setAttribute("status", "Existed record");
                    RequestDispatcher rd1 = request.getRequestDispatcher("Registration.jsp");
                    rd1.forward(request, response);

                } else if (status.equals("success")) {
                    request.setAttribute("status", "Successfully Registered");
                    RequestDispatcher rd1 = request.getRequestDispatcher("Registration.jsp");
                    rd1.forward(request, response);

                } else if (status.equals("failure")) {
                    request.setAttribute("status", "Registration failed");
                    RequestDispatcher rd1 = request.getRequestDispatcher("Registration.jsp");
                    rd1.forward(request, response);

                }
            }
		   }    
           else if (request.getParameter("login") != null) {
               String email = request.getParameter("email");
               String pass = request.getParameter("pw");
               String status = reg.login(email, pass);
               if (status.equals("success")) {

                   RequestDispatcher rd1 = request.getRequestDispatcher("Home.jsp");

                   rd1.forward(request, response);

               } else if (status.equals("failure")) {
                   request.setAttribute("status", "Login failed");
                   RequestDispatcher rd1 = request.getRequestDispatcher("login.jsp");
                   rd1.forward(request, response);
               }
           } else if (request.getParameter("logout") != null) {
               session.invalidate();
               RequestDispatcher rd1 = request.getRequestDispatcher("Home.jsp");
               rd1.forward(request, response);
           } 
           else if (request.getParameter("DeleteDestination") != null) {
   			String destination = request.getParameter("destination_name");
   			System.out.println("===================================================");
   			String status = reg.deletdestination(destination);
   			if (status.equals("success")) {
   				request.setAttribute("status", "Destination Deleted");
   				RequestDispatcher rd = request.getRequestDispatcher("DeleteDestination.jsp");
   				rd.forward(request, response);
   			} else if (status.equals("not available")) {
   				request.setAttribute("status", ":Destination name doesn't exist");
   				RequestDispatcher rd = request.getRequestDispatcher("DeleteDestination.jsp");
   				rd.forward(request, response);
   			} else if (status.equals("failed")) {
   				request.setAttribute("status", "Failed to Delete Destination");
   				RequestDispatcher rd = request.getRequestDispatcher("DeleteDestination.jsp");
   				rd.forward(request, response);
   			}
           }
   	
		
   		
       
		else if (session.getAttribute("uname") != null && request.getParameter("book") != null) {
			 String destinationName = request.getParameter("dname");
			    String userName = request.getParameter("uname");
			    String userID = request.getParameter("uid"); // User ID as an integer
			    String  packageAmount = request.getParameter("pamount"); // Package amount as a double
			    String trip = request.getParameter("tripdate");
			    String phoneNumber = request.getParameter("phoneNumber");
			    String  numberOfTravellers =request.getParameter("noOfTravellers"); // Number of travellers as an integer
			    String requirements = request.getParameter("requirements");

			String status = reg.Booknow(destinationName,userName,userID,packageAmount,trip,phoneNumber,numberOfTravellers,requirements);
			if (status.equals("success")) {
		          request.setAttribute("status", "Booking successful.<a href='Payment.jsp'>Click here</a> to Pay.");
				RequestDispatcher rd = request
						.getRequestDispatcher("Booking.jsp?pid=" + request.getParameter("pid"));
				rd.forward(request, response);
			} else if (status.equals("failure")) {
				request.setAttribute("status", "Booking failed");
				RequestDispatcher rd = request
						.getRequestDispatcher("Booking.jsp?pid=" + request.getParameter("pid"));
				rd.forward(request, response);
			} else if (status.equals("existed")) {
				request.setAttribute("status", "Date not available for Book Your trip");
				RequestDispatcher rd = request
						.getRequestDispatcher("Booking.jsp?pid=" + request.getParameter("pid"));
				rd.forward(request, response);
			}
		}
		else if (session.getAttribute("uname") != null && request.getParameter("pay") != null)
		{
				int  status = reg.acceptpayment();
            
			if (status > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("BookingStatus.jsp");
				rd.forward(request, response);
			}
				
	}
		
		else if (session.getAttribute("uname") != null && request.getParameter("cancelevent") != null) {
			int BookingId = Integer.parseInt(request.getParameter("BookingId"));
		int status = reg.deletetrip(BookingId);
			if (status > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("BookingStatus.jsp");
				rd.forward(request, response);
			}
			System.out.println("==============================================================");
		}
			
		else if (session.getAttribute("uname") != null && session.getAttribute("id").equals("1")
				&& request.getParameter("acceptbooking") != null) {
			int booking_id = Integer.parseInt(request.getParameter("booking_id"));
			int status = reg.accepttrip(booking_id);
			if (status > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("BookedTrip.jsp");
				rd.forward(request, response);
			}
		} else if (session.getAttribute("uname") != null && request.getParameter("cancelbooking") != null) {
			int booking_id = Integer.parseInt(request.getParameter("BookingId"));
			int status = reg.deletetrip(booking_id);
			if (status > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("BookingStatus.jsp");
				rd.forward(request, response);
			}
		} else if (session.getAttribute("uname") != null && request.getParameter("admincancelebooking") != null) {
			int booking_id = Integer.parseInt(request.getParameter("booking_id"));
			int status = reg.deletetrip(booking_id);
			if (status > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("BookedTrip.jsp");
				rd.forward(request, response);
			}
		} else if (session.getAttribute("uname") != null && session.getAttribute("id").equals("1")
				&& request.getParameter("acceptevent") != null) {
			int booking_id = Integer.parseInt(request.getParameter("booking_id"));
			int status = reg.accepttrip(booking_id);
			if (status > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("BookedTrip.jsp");
				rd.forward(request, response);
			}
		
}
			
		}
		catch (Exception e) {
           e.printStackTrace();
       }

	}
	

		
protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	processRequest(request, response);
}

protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	processRequest(request, response);
}

public String getServletInfo() {
	return "Short description";
}// </editor-fold>

}

