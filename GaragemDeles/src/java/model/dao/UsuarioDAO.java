/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import model.bean.UsuarioDTO;

/**
 *
 * @author Senai
 */
public class UsuarioDAO {
    public List<UsuarioDTO> readProdutos() {
        List<UsuarioDTO> listaUsuarios = new ArrayList<>();
        Connection conexao = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conexao = Conexao.conectar();
            stmt = conexao.prepareStatement("SELECT idUsuario, nome, senha, email, cpf, telefone FROM produto");
            rs = stmt.executeQuery();
            while (rs.next()) {
                UsuarioDTO usuario = new UsuarioDTO();
                usuario.setIdUsuario(rs.getInt("idUsuario"));
                usuario.setNome(rs.getString("nome"));
                usuario.setSenha(rs.getString("senha"));
                usuario.setEmail(rs.getString("email"));
                usuario.setCpf(rs.getChar("cpf"));
                usuario.setTelefone(rs.getChar("telefone"));
                listaUsuarios.add(usuario);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conexao != null) conexao.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return listaUsuarios;
    }
    
    public void create(UsuarioDTO login) {

        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            stmt = conexao.prepareStatement("INSERT INTO usuario (nome, senha, email, cpf, telefone) VALUES (?, ?, ? ,?)");
            stmt.setString(1, login.getNome());
            stmt.setString(2, login.getSenha());
            stmt.setString(3, login.getEmail());
            stmt.setChar(4, login.getCpf());
            stmt.setChar(5, login.getTelefone());
            stmt.executeUpdate();
            stmt.close();
            conexao.close();
            JOptionPane.showMessageDialog(null, "Cadastro feito com sucesso!");
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    public Boolean login(String login, String senha) {
        Boolean validar = false;
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM usuario WHERE login = ? AND senha = ?");
            stmt.setString(1, login);
            stmt.setString(2, senha);
            rs = stmt.executeQuery();

            if (rs.next()) {
                validar = true;
            }

            rs.close();
            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return validar;
    }
    
    public void update(UsuarioDTO u) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("UPDATE usuario SET nome = ?, login = ?, senha = ?, telefone = ?, endereco = ? WHERE idUsuario = ? ");

            stmt.setString(1, u.getNome());
            stmt.setString(2, u.getSenha());
            stmt.setString(3, u.getEmail());
            stmt.setChar(4, u.getCpf());
            stmt.setChar(5, u.getTelefone());
            
            stmt.executeUpdate();
            JOptionPane.showMessageDialog(null, "Informações atualizadas com sucesso!");

            stmt.close();
            conexao.close();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    public void delete(int idProduto) {
    try {
        Connection conexao = Conexao.conectar();
        PreparedStatement stmt = conexao.prepareStatement("DELETE FROM usuario WHERE idUsuario = ?");
        stmt.setInt(1, idProduto);
        stmt.executeUpdate();
        stmt.close();
        conexao.close();
        JOptionPane.showMessageDialog(null, "Sua conta foi deletada");
    } catch (SQLException e) {
        e.printStackTrace();
    }
    }
}
