package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import dao.PostDAO;
import dao.UsuarioDAO;
import vo.Comentario;
import vo.Post;
import vo.Resposta;
import vo.Usuario;

@WebServlet("/ProcessaPosts")
public class ProcessaPosts extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ProcessaPosts() {
        super();
    }
    
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		PrintWriter out = response.getWriter();
		
		String acao = request.getParameter("acao");
		
		JSONObject obj = new JSONObject();
		
		if(acao.equals("carregarTodosPosts")){
	
			PostDAO pDao = new PostDAO();
			
			Usuario u = new Usuario();
			UsuarioDAO uDAO = new UsuarioDAO();
			
			try {
				List<Post> posts = pDao.ListarTodosPosts();
				for (Post p : posts) {
					obj = new JSONObject();
					obj.put("cod_post", p.getCod_post());
					obj.put("cod_jogo", p.getCod_jogo());
					obj.put("data_post", p.getData());
					obj.put("conteudo", p.getConteudo());
					obj.put("titulo", p.getTitulo());
					obj.put("cod_autor", p.getCod_autor());
					u.setCod_user(p.getCod_autor());
					obj.put("nome_autor", uDAO.pegalogin(u));
					out.print(obj.toString() + "\n");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}		
		}
		
		if(acao.equals("carregarPost")) {
			String cod_post = request.getParameter("cod_post");
			Post p = new Post();
			PostDAO pDao = new PostDAO();
			
			Usuario u = new Usuario();
			UsuarioDAO uDAO = new UsuarioDAO();
			
			try {
				p = pDao.PegarPost(cod_post);

				obj = new JSONObject();
					
				obj.put("cod_post", p.getCod_post());
				obj.put("cod_post", p.getCod_post());
				obj.put("cod_jogo", p.getCod_jogo());
				obj.put("data_post", p.getData());
				obj.put("conteudo", p.getConteudo());
				obj.put("titulo", p.getTitulo());
				obj.put("cod_autor", p.getCod_autor());
				u.setCod_user(p.getCod_autor());
				obj.put("nome_autor", uDAO.pegalogin(u));
				out.print(obj.toString() + "\n");	
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		if(acao.equals("comentar")) {
			String cod_post = request.getParameter("cod_post");
			String cod_autor = request.getParameter("cod_autor");
			String conteudo = request.getParameter("conteudo");
			
			if(cod_autor.contains("0")) {
				obj.put("status", "Efetue login para fazer comentario");
			}else {
				if(conteudo == ""){
					obj.put("status", "Preencha o campo conteudo");
				}else {
					Comentario c = new Comentario();
					
					UsuarioDAO uDao = new UsuarioDAO();
					
					c.setCod_post(Integer.valueOf(cod_post));
					c.setCod_autor(Integer.valueOf(cod_autor));
					c.setConteudo(request.getParameter("conteudo").toString());
					
					try {
						if(uDao.comentar(c)) {
							obj.put("status", "Comentario realizado com sucesso");
						}else {
							obj.put("status", "Falha ao comentar");
						}
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}				
			}
			out.print(obj.toString());		
		}
		
		if(acao.equals("carregarComentarios")) {
			String cod_post = request.getParameter("cod_post");
			PostDAO pDao = new PostDAO();
			
			Usuario u = new Usuario();
			UsuarioDAO uDAO = new UsuarioDAO();
			
			try {	
				List<Comentario> comentarios = pDao.ListarComentarios(cod_post);
				for(Comentario c : comentarios){
					obj = new JSONObject();
					obj.put("cod_comentarioC", c.getCod_comentario());
					obj.put("cod_postC", c.getCod_post());
					obj.put("data_comentarioC", c.getData_comentario());
					obj.put("cod_autorC", c.getCod_autor());
					obj.put("conteudoC", c.getConteudo());
					u.setCod_user(c.getCod_autor());
					obj.put("nome_autor", uDAO.pegalogin(u));
					out.print(obj.toString() + "\n");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(acao.equals("responder")) {

			String cod_post = request.getParameter("cod_post");
			String cod_comentarioC = request.getParameter("cod_comentarioC");
			String conteudoResposta = request.getParameter("conteudoResposta");
			String cod_autor = request.getParameter("cod_autor");	
			
			if(cod_autor.contains("0")) {
				obj.put("status", "Efetue login para responder comentario");
			}else {
				if(conteudoResposta == "") {
					obj.put("status", "Preencha o campo conteudo");
				}else {
					Resposta r = new Resposta();
					
					UsuarioDAO uDao = new UsuarioDAO();
					
					r.setCod_comentario(Integer.valueOf(cod_comentarioC));
					r.setCod_post(Integer.valueOf(cod_post));
					r.setCod_autor(Integer.valueOf(cod_autor));
					r.setConteudo(conteudoResposta);
					
					try {
						if(uDao.Responder(r)) {
							obj.put("status", "Resposta realizada com sucesso");
						}else {
							obj.put("status", "Falha ao responder");
						}
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}	
			out.print(obj.toString());	
		}
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
