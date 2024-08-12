package gr.aueb.elearn.teacherapp.service;

import java.sql.SQLException;
import java.util.List;

import gr.aueb.elearn.teacherapp.dao.ITeacherDAO;
import gr.aueb.elearn.teacherapp.dto.TeacherDTO;
import gr.aueb.elearn.teacherapp.model.Teacher;
import gr.aueb.elearn.teacherapp.service.exceptions.TeacherIdAlreadyExistsException;

public class TeacherServiceImpl implements ITeacherService {
	
	private final ITeacherDAO teacherDAO;
	
	public TeacherServiceImpl(ITeacherDAO teacherDAO) {
		this.teacherDAO = teacherDAO;
	}

	@Override
	public void insertTeacher(TeacherDTO teacherDTO) 
			throws TeacherIdAlreadyExistsException, SQLException {
		
		Teacher newTeacher = new Teacher();
		newTeacher.setId(teacherDTO.getId());
		newTeacher.setLastName(teacherDTO.getLastName());
		newTeacher.setFirstName(teacherDTO.getFirstName());	
		
		if ((teacherDAO.getTeacherById(newTeacher.getId())) == null) 
			teacherDAO.insert(newTeacher);
		else {
			throw new TeacherIdAlreadyExistsException(newTeacher);
		}
	}

	@Override
	public void deleteTeacher(TeacherDTO teacherDTO) throws SQLException {
		Teacher teacherToDelete = new Teacher();
		teacherToDelete.setId(teacherDTO.getId());
		teacherDAO.delete(teacherToDelete);
	}

	@Override
	public void updateTeacher(TeacherDTO oldTeacherDTO, TeacherDTO newTeacherDTO) 
			throws SQLException {
		Teacher teacherToUpdate = new Teacher();
		teacherToUpdate.setId(oldTeacherDTO.getId());
		
		Teacher newTeacher = new Teacher();
		newTeacher.setLastName(newTeacherDTO.getLastName());
		newTeacher.setFirstName(newTeacherDTO.getFirstName());	
		teacherDAO.update(teacherToUpdate, newTeacher);
	}

	@Override
	public List<Teacher> getTeachersBySurname(String surname) throws SQLException {	
		return teacherDAO.getTeachersBySurname(surname);
	}
	
	public List<Teacher> getTeacherById(int id) throws SQLException {	
		return teacherDAO.getTeacherById(id);
	}
}
