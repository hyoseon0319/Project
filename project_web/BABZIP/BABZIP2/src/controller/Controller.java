package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.FoodDAO;
import model.ReviewVO;

@WebServlet("/controller")
public class Controller extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String command = request.getParameter("command");
		System.out.println(command);
		if (command == null) {
			command = "list";
		}
		if (command.equals("list")) {
			list(request, response);
		} else if (command.equals("write")) {
			write(request, response);
		} else if (command.equals("read")) {
			read(request, response);
		} else if (command.equals("update")) {
			update(request, response);
		} else if (command.equals("delete")) {
			delete(request, response);
		} else if (command.equals("flist")) {
			flist(request, response);
		}
	}

	public void flist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "error.jsp";
		try {
			request.setAttribute("flist", FoodDAO.getAllFood());
			url = "flist.jsp";
		} catch (SQLException e) {
			request.setAttribute("errorMsg", "맛집 찾기에 문제 발생!");
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	public void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "error.jsp";
		try {
			request.setAttribute("list", FoodDAO.getAllContents());
			url = "clist.jsp";
		} catch (SQLException e) {
			request.setAttribute("errorMsg", "한줄평 찾기에 문제 발생!");
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	public void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReviewVO gContent = null;
		String url = "error.jsp";

		try {
			gContent = FoodDAO.getContent(Integer.parseInt(request.getParameter("num")));
			if (gContent == null) {
				request.setAttribute("error", "해당 한줄평이 없습니다.");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			} else {
				request.setAttribute("resultContent", gContent);
				url = "/read1.jsp";
			}
		} catch (SQLException e) {
			request.setAttribute("errorMsg", "해당 한줄평 검색 실패");
			e.printStackTrace();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	public void write(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		int star = Integer.parseInt(request.getParameter("star"));
		String review = request.getParameter("review");
		int resnum = Integer.parseInt(request.getParameter("resnum"));
		ReviewVO gContent = new ReviewVO(name, pwd, star, review, resnum);

		try {
			FoodDAO.writeContent(gContent);
			request.setAttribute("gContent", gContent);
			System.out.println("write" + gContent);
		} catch (SQLException e) {
			e.printStackTrace();
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}

	}

	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "error.jsp";
		int num = Integer.parseInt(request.getParameter("num"));
		String password = request.getParameter("password");

		try {
			FoodDAO.deleteContent(num, password);
			request.setAttribute("allList", FoodDAO.getAllContents());
			url = "list.jsp";
		} catch (SQLException e) {
			e.printStackTrace();
			request.setAttribute("errorMsg", "해당 한줄평 삭제 실패");
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url = "error.jsp";
		int num = Integer.parseInt(request.getParameter("num"));
		int star = Integer.parseInt(request.getParameter("star"));
		String review = request.getParameter("review");
		String pwd = request.getParameter("pwd");

		try {
			FoodDAO.updateContent(new ReviewVO(num, pwd, star, review));
			url = "updateSuccess.jsp";
		} catch (SQLException e) {
			e.printStackTrace();
			request.setAttribute("errorMsg", "해당 한줄평 수정 실패");
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}