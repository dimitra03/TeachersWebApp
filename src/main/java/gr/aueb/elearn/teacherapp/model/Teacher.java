package gr.aueb.elearn.teacherapp.model;

/**
 * Teacher POJO/Java Bean class. 
 * 
 * @author A. Androutsos
 * @version 0.1
 */
public class Teacher {
	private int id;
	private String firstName;
	private String lastName;
	
	public Teacher() {}
	
	public Teacher(int id, String firstName, String lastName) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Override
	public String toString() {
		return id + "\t" + firstName + "\t" + lastName;
	}
}
