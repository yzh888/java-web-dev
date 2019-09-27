package com.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if ("admin".equals(username) && "111".equals(password)) {
            HttpSession session = req.getSession();
            session.setAttribute("username", username);
            resp.sendRedirect("index");
        } else {
            resp.setCharacterEncoding("UTF-8");
            resp.setContentType("text/html;charset=UTF-8");
            PrintWriter writer = resp.getWriter();
            writer.print("<script>alert('登录失败');location.href='/';</script>");

        }
    }
}