package gr.aueb.elearn.teacherapp.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gr.aueb.elearn.teacherapp.dao.ITeacherDAO;
import gr.aueb.elearn.teacherapp.dao.TeacherDAOImpl;
import gr.aueb.elearn.teacherapp.model.Teacher;
import gr.aueb.elearn.teacherapp.service.ITeacherService;
import gr.aueb.elearn.teacherapp.service.TeacherServiceImpl;



/**
 * Servlet implementation class TeacherSearchByIdController
 */

public class TeacherSearchByIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ITeacherDAO teacherDAO = new TeacherDAOImpl();
		ITeacherService teacherServ = new TeacherServiceImpl(teacherDAO);
		List<Teacher> teachers = new ArrayList<>();
		
		response.setContentType("text/html");
		Integer id = Integer.parseInt(request.getParameter("searchInput1"));
		
		try {
			teachers = teacherServ.getTeacherById(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if (teachers != null) {
			request.setAttribute("teachers", teachers);
			request.getRequestDispatcher("/jsps/teachers.jsp").forward(request, response);
		} else {
			String error = "idmissing";
			request.setAttribute("error", error);
			request.getRequestDispatcher("/jsps/errorpage.jsp").forward(request, response);
		}
	}

	
}
