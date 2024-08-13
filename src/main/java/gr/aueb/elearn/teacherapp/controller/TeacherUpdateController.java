package gr.aueb.elearn.teacherapp.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gr.aueb.elearn.teacherapp.dao.ITeacherDAO;
import gr.aueb.elearn.teacherapp.dao.TeacherDAOImpl;
import gr.aueb.elearn.teacherapp.dto.TeacherDTO;
import gr.aueb.elearn.teacherapp.service.ITeacherService;
import gr.aueb.elearn.teacherapp.service.TeacherServiceImpl;

/**
 * Servlet implementation class TeacherUpdateController
 */
public class TeacherUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TeacherDTO oldTeacherDTO;
		TeacherDTO newTeacherDTO;
		ITeacherDAO teacherDAO = new TeacherDAOImpl();
		ITeacherService teacherServ = new TeacherServiceImpl(teacherDAO);
		
		response.setContentType("text/html");
		int id = Integer.parseInt(request.getParameter("id"));
		
		String oldLastName = request.getParameter("lastName");
	    String oldFirstName = request.getParameter("firstName");
	    String newLastName = request.getParameter("newLastName");
	    String newFirstName = request.getParameter("newFirstName");
		
		oldTeacherDTO = new TeacherDTO(id, oldFirstName, oldLastName);
		newTeacherDTO = new TeacherDTO(id, newFirstName, newLastName);
		
		try {
			teacherServ.updateTeacher(oldTeacherDTO, newTeacherDTO);
			request.setAttribute("updatedTeacher", newTeacherDTO);
			request.getRequestDispatcher("/jsps/teacherupdated.jsp").forward(request, response);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
	}

}
