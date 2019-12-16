package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import dao.UsuarioDAO;
import vo.Post;
import vo.Usuario;

@WebServlet("/ProcessaUsuario")
public class ProcessaUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ProcessaUsuario() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		String acao = request.getParameter("acao");
		
		JSONObject obj = new JSONObject();		
		
		if(acao.equals("cadastrar")) {	
			
			String nome = request.getParameter("nome");
			String login = request.getParameter("login");
			String senha = request.getParameter("senha");
			String csenha = request.getParameter("csenha");
			String discord = request.getParameter("discord");
			String genero = request.getParameter("genero");
			
			if(nome == "" || login == "" || senha == "" || csenha == "" ) {
				obj.put("status", "Preencha todos os campos");
			}else {
				if(senha.toString().equals(csenha.toString())){
					
					Usuario u = new Usuario();
					
					u.setLogin(request.getParameter("login"));
					u.setSenha(request.getParameter("senha"));
					u.setNome(request.getParameter("nome"));
					u.setGenero(request.getParameter("genero"));
					u.setDiscord(request.getParameter("discord"));
					UsuarioDAO uDAO = new UsuarioDAO();
					
					try {
						if(uDAO.verificaLogin(u)) {
							obj.put("status", "Esse login ja esta sendo usado");
						}else {
							try {
								uDAO.inserir(u);
								obj.put("status", "Usuario cadastrado com sucesso");
							} catch (SQLException e) {
								obj.put("status", "Erro interno");
								e.printStackTrace();
							}
						}
					}catch (SQLException e) {
						e.printStackTrace();
					}	
				}else {
					obj.put("status", "Senhas diferentes");
				}
			}	
		}
		
		if(acao.equals("logar")) {	
			
			Usuario u = new Usuario();
			
			String login = request.getParameter("login");
			String senha = request.getParameter("senha");
			
			u.setLogin(login);
			u.setSenha(senha);
			
			UsuarioDAO uDao = new UsuarioDAO();
			
			try {
				if (uDao.tentaLogin(u)) {
					obj.put("login", u.getLogin());
					obj.put("cod_user",uDao.pegacodigo(u));
				}else {
					obj.put("login", "null");
					obj.put("cod_user","null");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		if(acao.equals("postar")) {
			
			String cod_jogo = request.getParameter("cod_jogo");
			String conteudo = request.getParameter("conteudo");
			String titulo = request.getParameter("titulo");
			String cod_autor = request.getParameter("cod_user");
			
			if(cod_jogo == "" || conteudo == "" || titulo == "" || cod_autor == "") {
				obj.put("status", "Preencha todos os campos");
			}else {
				Post p = new Post();
				
				p.setCod_jogo(Integer.valueOf(cod_jogo));
				p.setConteudo(conteudo);
				p.setTitulo(titulo);
				p.setCod_autor(Integer.valueOf(cod_autor));
				
				UsuarioDAO uDao = new UsuarioDAO();
				
				try {
					if(uDao.criaPost(p)){
						obj.put("status", "Post feito com sucesso");
					}else {
						obj.put("status", "Falha ao fazer post");
					}
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}	
		}
		
		out.print(obj);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
