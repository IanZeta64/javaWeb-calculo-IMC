package com.example.demo666;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "IMCServlet", urlPatterns = "/calc")
public class IMCServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double peso = Double.parseDouble(req.getParameter("peso"));
        double altura = Double.parseDouble(req.getParameter("altura"));

        Double imc = peso / Math.pow(altura, 2);

        req.setAttribute("imc", String.format("%.2f %%", imc));
        req.getRequestDispatcher("/index.jsp").forward(req, resp);

    }
}
