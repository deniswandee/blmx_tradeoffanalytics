package net.tutorial.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.tutorial.utilities.TradeOffService;


@WebServlet({"home", ""})
public class MainController extends HttpServlet {
	
	RequestDispatcher dispatcher;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/home.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		TradeOffService toa = new TradeOffService();
		
		resp.setContentType("application/json");
		PrintWriter out = resp.getWriter();
		String text = req.getParameter("params");
		
		out.print(toa.analyzeTradeOff(text));
		out.flush();
	}
	
	
	
}
