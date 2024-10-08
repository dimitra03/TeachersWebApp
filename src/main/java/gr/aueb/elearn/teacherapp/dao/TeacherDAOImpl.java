package gr.aueb.elearn.teacherapp.dao;

import static gr.aueb.elearn.teacherapp.dao.dbutil.DBUtil.openConnection;
import static gr.aueb.elearn.teacherapp.dao.dbutil.DBUtil.closeConnection;
import static gr.aueb.elearn.teacherapp.dao.dbutil.DBUtil.closeRS;
import static gr.aueb.elearn.teacherapp.dao.dbutil.DBUtil.closeStmt;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import gr.aueb.elearn.teacherapp.model.Teacher;

public class TeacherDAOImpl implements ITeacherDAO {
	
	@Override
	public void insert(Teacher teacher) throws SQLException {
		String sql = "INSERT INTO TEACHERS VALUES (?, ?, ?)";
		
		PreparedStatement pst = openConnection().prepareStatement(sql);
		pst.setInt(1, teacher.getId());
		pst.setString(2, teacher.getLastName());
		pst.setString(3, teacher.getFirstName());

		pst.executeUpdate();
		
		closeStmt(pst);
		closeConnection();
	}

	@Override
	public void delete(Teacher teacher) throws SQLException {
		String sql = "DELETE FROM TEACHERS WHERE TEACHER_ID = ?";
		
		PreparedStatement pst = openConnection().prepareStatement(sql);
		pst.setInt(1, teacher.getId());
		
		pst.executeUpdate();
        	
        closeStmt(pst);
      	closeConnection();
	}

	@Override
	public void update(Teacher oldTeacher, Teacher newTeacher) throws SQLException {
		String sql = "UPDATE TEACHERS SET S_NAME = ?, F_NAME = ? WHERE TEACHER_ID = ?";
				
		PreparedStatement pst = openConnection().prepareStatement(sql);
		pst.setString(1, newTeacher.getLastName());
		pst.setString(2, newTeacher.getFirstName());
		pst.setInt(3, oldTeacher.getId());
		
		pst.executeUpdate();

	    closeStmt(pst);
		closeConnection();
	}

	@Override
	public List<Teacher> getTeachersBySurname(String surname) throws SQLException {
		String sql = "SELECT TEACHER_ID, S_NAME, F_Name FROM TEACHERS WHERE S_NAME LIKE ?";
		
	    PreparedStatement pst =  openConnection().prepareStatement(sql);
	    pst.setString(1, surname + "%");
	    
	    ResultSet rs = pst.executeQuery();
	    
	    List<Teacher> teachers = new ArrayList<>();
	    
	    while (rs.next()) {
	    	Teacher teacher = new Teacher();
	    	teacher.setId(rs.getInt("TEACHER_ID"));
	    	teacher.setLastName(rs.getString("S_NAME"));
	    	teacher.setFirstName(rs.getString("F_NAME"));
	    	teachers.add(teacher); 	
	    }
	    
	    closeRS(rs);
	    closeStmt(pst);
	    closeConnection();
	    
	    return (!teachers.isEmpty()) ? teachers : null;
	}

	@Override
	public List<Teacher> getTeacherById(int id) throws SQLException {
		boolean teacherFound = false;
		
		String sql = "SELECT * FROM TEACHERS WHERE TEACHER_ID = ?" ;
			
	    PreparedStatement pst =  openConnection().prepareStatement(sql);
	    pst.setInt(1, id);
	    ResultSet rs = pst.executeQuery();
	    
	    List<Teacher> teachers = new ArrayList<>();
	    
	    if (rs.next()) {
	    	Teacher teacher = new Teacher();
	    	teacher.setId(rs.getInt("TEACHER_ID"));
	    	teacher.setLastName(rs.getString("S_NAME"));
	    	teacher.setFirstName(rs.getString("F_NAME"));
	    	teachers.add(teacher); 	
	    	
	    	teacherFound = true;
	    }
	    
	    closeRS(rs);
	    closeStmt(pst);
	    closeConnection();
	    
	    return (teacherFound) ? teachers : null;
	}
	
}
