package com.Student.jdbc;

public class SettersGetters {
	private int Id;
	private String Name;
	private String Gender;
	private String Email;
	private String Phone;
	
	public SettersGetters(int id, String name, String gender, String email, String phone) {
		super();
		Id = id;
		Name = name;
		Gender = gender;
		Email = email;
		Phone = phone;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	@Override
	public String toString() {
		return "SettersGetters [Id=" + Id + ", Name=" + Name + ", Gender=" + Gender + ", Email=" + Email + ", Phone="
				+ Phone + "]";
	}
	
	
	

}
