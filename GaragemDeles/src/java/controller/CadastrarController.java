/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.UsuarioDTO;
import model.dao.UsuarioDAO;

/**
 *
 * @author Admin
 */
public class CadastrarController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        String nextPage = "/WEB-INF/jsp/cadastrar.jsp";
        
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
        String url = request.getServletPath();
        if (url.endsWith("/cadastrar-usuario")) {
            String nextPage = "/WEB-INF/jsp/index.jsp";
            UsuarioDTO user = new UsuarioDTO();
            UsuarioDAO dao = new UsuarioDAO();

            user.setNome(request.getParameter("nome"));
            user.setSenha(request.getParameter("senha"));
            user.setEmail(request.getParameter("email"));
            user.setCpf(request.getParameter("cpf"));
            user.setTelefone(request.getParameter("telefone"));

            try {
                if (dao.existe(user.getEmail())) {
                    nextPage = "/WEB-INF/jsp/cadastrar.jsp";
                    request.setAttribute("errorMessage", "Email já está em uso");
                } else {
                    dao.create(user);
                    request.setAttribute("successMessage", "Cadastro realizado com sucesso");
                }
            } catch (Exception e) {
                nextPage = "/WEB-INF/jsp/cadastrar.jsp";
                request.setAttribute("errorMessage", "Erro ao cadastrar usuário: " + e.getMessage());
            }

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        } else {
            processRequest(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("doPost acionado");
        String nome = request.getParameter("nome");
        String senha = request.getParameter("senha");
        String email = request.getParameter("email");
        String cpf = request.getParameter("cpf");
        String telefone = request.getParameter("telefone");
        if (nome != null && senha != null && email != null && cpf != null && telefone != null) {
            if (!nome.trim().equals("") && !senha.trim().equals("") && !email.trim().equals("") && !cpf.trim().equals("") && !telefone.trim().equals("")) {
                UsuarioDTO usuario = new UsuarioDTO();
                usuario.setNome(nome);
                usuario.setSenha(senha);
                usuario.setEmail(email);
                usuario.setCpf(cpf);
                usuario.setTelefone(telefone);
                UsuarioDAO dao = new UsuarioDAO();
                try {
                    if (dao.existe(usuario.getEmail())) {
                        request.setAttribute("errorMessage", "Email já está em uso");
                    } else {
                        dao.create(usuario);
                        request.setAttribute("successMessage", "Cadastro realizado com sucesso");
                    }
                } catch (Exception e) {
                    request.setAttribute("errorMessage", "Erro ao cadastrar usuário: " + e.getMessage());
                }
            } else {
                request.setAttribute("errorMessage", "Todos os campos são obrigatórios");
            }
        } else {
            request.setAttribute("errorMessage", "Parâmetros inválidos");
        }
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/jsp/index.jsp");
        dispatcher.forward(request, response);
    
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
