package com.abc.controller;

import com.abc.dao.ProductDAO;
import com.abc.dao.CustomerDAO;
import com.abc.dao.OfferDAO;
import com.abc.dao.StaffDAO;
import com.abc.dao.ReservationDAO;
import com.abc.dao.ServiceDAO;
import com.abc.model.Product;
import com.abc.model.Admin;
import com.abc.model.Customer;
import com.abc.model.Offer;
import com.abc.model.Staff;
import com.abc.service.AdminService;
import com.abc.model.Reservation;
import com.abc.model.Service;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/admin")

public class AdminController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductDAO productDAO;
    private CustomerDAO customerDAO;
    private StaffDAO staffDAO;
    private ReservationDAO reservationDAO;
    private ServiceDAO serviceDAO;
    private OfferDAO offerDAO;


    @Override
    public void init() {
        productDAO = new ProductDAO();
        customerDAO = new CustomerDAO();
        staffDAO = new StaffDAO();
        reservationDAO = new ReservationDAO();
        serviceDAO = new ServiceDAO();
        offerDAO = new OfferDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            handleRequest(request, response);
        } catch (SQLException e) {
            throw new ServletException("Database access error", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            handleRequest(request, response);
        } catch (SQLException e) {
            throw new ServletException("Database access error", e);
        }
    }

    private void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "dashboard";
        }

        switch (action) {
            case "listProducts":
                showListProducts(request, response);
                break;
            case "listCustomers":
                showListCustomers(request, response);
                break;
            case "listStaff":
                showListStaff(request, response);
                break;
            case "listReservations":
                showListReservations(request, response);
                break;
            case "listServices":
                showListServices(request, response);
                break;
            case "listOffers":
                showListOffers(request, response);
                break;
            case "login":
                loginAdmin(request, response);
                break;
            case "logout":
                logoutAdmin(request, response);
                break;
            default:
                response.sendRedirect("adminDashboard.jsp");
                break;
        }
    }	

    private void showListProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        List<Product> products = productDAO.getAllProducts();
        request.setAttribute("products", products);
        request.getRequestDispatcher("WEB-INF/view/listProducts.jsp").forward(request, response);
    }

    private void showListCustomers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        List<Customer> customers = customerDAO.getAllCustomers();
        request.setAttribute("customers", customers);
        request.getRequestDispatcher("WEB-INF/view/listCustomers.jsp").forward(request, response);
    }

    private void showListStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        List<Staff> staffList = staffDAO.getAllStaff();
        request.setAttribute("staffList", staffList);
        request.getRequestDispatcher("WEB-INF/view/listStaff.jsp").forward(request, response);
    }

    private void showListReservations(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        List<Reservation> reservations = reservationDAO.getAllReservations();
        request.setAttribute("reservations", reservations);
        request.getRequestDispatcher("WEB-INF/view/listReservations.jsp").forward(request, response);
    }
       
    private void showListServices(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        List<Service> services = serviceDAO.getAllServices();
        request.setAttribute("services", services);
        request.getRequestDispatcher("WEB-INF/view/listServices.jsp").forward(request, response);
    }
    
    private void showListOffers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        List<Offer> offers = offerDAO.getAllOffers();
        request.setAttribute("offers", offers);
        request.getRequestDispatcher("WEB-INF/view/listOffers.jsp").forward(request, response);
    }

    private void loginAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        AdminService adminService = new AdminService();
        Admin admin = adminService.loginAdmin(username, password);

        if (admin != null) {
            request.getSession().setAttribute("admin", admin);
            response.sendRedirect("adminDashboard.jsp");
        } else {
            request.setAttribute("error", "Invalid username or password");
            request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
        }
    }

    private void logoutAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().invalidate();
        response.sendRedirect("adminLogin.jsp");
    }
}
