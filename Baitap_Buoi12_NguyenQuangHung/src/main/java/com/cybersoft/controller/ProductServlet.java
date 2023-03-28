package com.cybersoft.controller;

import com.cybersoft.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "quanly",urlPatterns = "/quanly-page")
public class ProductServlet extends HttpServlet {
    ArrayList<Product> listSP = new ArrayList<Product>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


//        if (req.getParameter("tensanpham")!=null&&req.getParameter("soluong")!=null&&req.getParameter("giaban")!=null){
//            sanPham.setTenSP(req.getParameter("tensanpham"));
//            sanPham.setSoLuong(Integer.parseInt(req.getParameter("soluong")));
//            sanPham.setGiaBan(Integer.parseInt(req.getParameter("giaban")));
//            listSP.add(sanPham);
//        }
//        req.setAttribute("ListSanPham", listSP);
        req.getRequestDispatcher("/webapp/product.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Product sanPham = new Product();

        if (req.getParameter("tensanpham")!=null&&req.getParameter("soluong")!=null&&req.getParameter("giaban")!=null){
            sanPham.setTenSP(req.getParameter("tensanpham"));
            sanPham.setSoLuong(Integer.parseInt(req.getParameter("soluong")));
            sanPham.setGiaBan(Integer.parseInt(req.getParameter("giaban")));
            listSP.add(sanPham);
        }
        req.setAttribute("ListSanPham", listSP);
        req.getRequestDispatcher("/webapp/product.jsp").forward(req, resp);

    }

}
