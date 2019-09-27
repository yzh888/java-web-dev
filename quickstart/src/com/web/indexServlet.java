package com.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet(urlPatterns = "/index")
public class indexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Book[] books = {
                new Book("北上", "a.jpg", "许忠胜"),
                new Book("边城", "b.jpg", "许仲琳"),
                new Book("初心", "z.jpg", "徐妍"),
                new Book("一个陌生女人的来信", "s.jpg", "徐文红"),
                new Book("锦上", "a.jpg", "王生皓"),
                new Book("简爱", "b.jpg", "仲秋生"),
                new Book("边城", "b.jpg", "许仲琳"),
                new Book("简爱", "z.jpg", "徐妍"),
                new Book("西游记", "a.jpg", "许仲琳")
        };
        List<Book> bookList = Arrays.asList(books);
        req.setAttribute("bookList",bookList);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}