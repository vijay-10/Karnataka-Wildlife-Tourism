package Model;

public class Booking {
	
	    private int booking_id;                 // Primary Key, Auto Increment
	    private String destination_name;
	    private String user_name;
	    private int user_id;
	    private double package_amount;
	    private String trip_date;               // Using String for simplicity, can be Date type
	    private String phone_number;
	    private int number_of_travellers;
	    private String requirements;
	    private String status;
	    private String date;                    // Timestamp stored as String, can use Date type if needed
	    private String payment;
	     private String total;

	    // Getter and Setter Methods

	    public String getTotal() {
			return total;
		}

		public void setTotal(String total) {
			this.total = total;
		}

		public int getBookingId() {
	        return booking_id;
	    }

	    public void setBookingId(int booking_id) {
	        this.booking_id = booking_id;
	    }

	    public String getDestinationName() {
	        return destination_name;
	    }

	    public void setDestinationName(String destination_name) {
	        this.destination_name = destination_name;
	    }

	    public String getUserName() {
	        return user_name;
	    }

	    public void setUserName(String user_name) {
	        this.user_name = user_name;
	    }

	    public int getUserId() {
	        return user_id;
	    }

	    public void setUserId(int user_id) {
	        this.user_id = user_id;
	    }

	    public double getPackageAmount() {
	        return package_amount;
	    }

	    public void setPackageAmount(double package_amount) {
	        this.package_amount = package_amount;
	    }

	    public String getTripDate() {
	        return trip_date;
	    }

	    public void setTripDate(String trip_date) {
	        this.trip_date = trip_date;
	    }

	    public String getPhoneNumber() {
	        return phone_number;
	    }

	    public void setPhoneNumber(String phone_number) {
	        this.phone_number = phone_number;
	    }

	    public int getNumberOfTravellers() {
	        return number_of_travellers;
	    }

	    public void setNumberOfTravellers(int number_of_travellers) {
	        this.number_of_travellers = number_of_travellers;
	    }

	    public String getRequirements() {
	        return requirements;
	    }

	    public void setRequirements(String requirements) {
	        this.requirements = requirements;
	    }

	    public String getStatus() {
	        return status;
	    }

	    public void setStatus(String status) {
	        this.status = status;
	    }

	    public String getDate() {
	        return date;
	    }

	    public void setDate(String date) {
	        this.date = date;
	    }

	    public String getPayment() {
	        return payment;
	    }

	    public void setPayment(String payment) {
	        this.payment = payment;
	    }
	}


