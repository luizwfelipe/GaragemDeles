/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.UsuarioDTO;
import model.dao.UsuarioDAO;

/**
 *
 * @author Senai
 */
public class CadastroController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nextPage = "/WEB-INF/jsp/cadastro.jsp";
        
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
        dispatcher.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getServletPath();
        if (url.equals("/cadastrar")) {
            String nextPage = "/WEB-INF/jsp/index.jsp";
            UsuarioDTO user = new UsuarioDTO();
            UsuarioDAO dao = new UsuarioDAO();

            user.setNome(request.getParameter("nome"));
            user.setSenha(request.getParameter("senha"));
            user.setEmail(request.getParameter("email"));
            user.setCpf(Integer.parseInt(request.getParameter("cpf")));
            user.setTelefone(Integer.parseInt(request.getParameter("telefone")));

            try {
                if (dao.existe(user.getEmail())) {
                    nextPage = "/WEB-INF/jsp/cadastro.jsp";
                    request.setAttribute("errorMessage", "email já está em uso");
                } else {
                    dao.create(user);
                    request.setAttribute("successMessage", "cadastro realizado com sucesso");
                }
            } catch (Exception e) {
                nextPage = "/WEB-INF/jsp/cadastro.jsp";
                request.setAttribute("errorMessage", "erro ao cadastrar usuário: " + e.getMessage());
            }

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        } else {
            processRequest(request, response);
        }
    }


    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
