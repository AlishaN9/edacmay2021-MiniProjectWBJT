package com.cdac.entity;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class users {
	

		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		@Column(name = "id")
		private int id;
		
		@Column(name = "name")
		private String name;
		
		@Column(name = "bkgdate")
		private String bookingDate;
		
		@Column(name = "adharno")
		private  String AadharNo;
		
		@Column(name = "email")
		private String email;
		
		@Column(name = "address")
		private String address;
		
		@Column(name = "ph")
		private String ph;

		public users() {
			super();
			
		}

		public users(String name, String bookingDate, String aadharNo, String email, String address, String ph) {
			super();
			this.name = name;
			this.bookingDate = bookingDate;
			AadharNo = aadharNo;
			this.email = email;
			this.address = address;
			this.ph = ph;
		}

		public users(int id, String name, String bookingDate, String aadharNo, String email, String address,
				String ph) {
			super();
			this.id = id;
			this.name = name;
			this.bookingDate = bookingDate;
			AadharNo = aadharNo;
			this.email = email;
			this.address = address;
			this.ph = ph;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getBookingDate() {
			return bookingDate;
		}

		public void setBookingDate(String bookingDate) {
			this.bookingDate = bookingDate;
		}

		public String getAadharNo() {
			return AadharNo;
		}

		public void setAadharNo(String aadharNo) {
			AadharNo = aadharNo;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getPh() {
			return ph;
		}

		public void setPh(String ph) {
			this.ph = ph;
		}

		@Override
		public String toString() {
			return "users [id=" + id + ", name=" + name + ", bookingDate=" + bookingDate + ", AadharNo=" + AadharNo
					+ ", email=" + email + ", address=" + address + ", ph=" + ph + "]";
		}

}
		
		
		

