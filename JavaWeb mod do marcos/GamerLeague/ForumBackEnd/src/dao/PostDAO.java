package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import vo.Comentario;
import vo.Post;

public class PostDAO {

	private Connection con;
	private PreparedStatement ps;
	
	public List<Post> ListarTodosPosts() throws SQLException{
		
		String sql = "SELECT * FROM posts";
		
		con = ConnectionDB.getConnection();
		
		ps = con.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		
		List<Post> posts = new ArrayList<>();
		while(rs.next()){
			Post p  = new Post();
			p.setCod_post(rs.getInt("cod_post"));
			p.setCod_jogo(rs.getInt("cod_jogo"));
			p.setCod_autor(rs.getInt("cod_autor"));
			p.setConteudo(rs.getString("conteudo"));
			p.setTitulo(rs.getString("Titulo"));
			p.setData(rs.getDate("data_post"));
			
			
			posts.add(p);
		}
		return posts;	
	}
	
	public Post PegarPost(String cod_post) throws SQLException {
		
		String sql = "SELECT * FROM posts WHERE cod_post = ?;";
		
		con = ConnectionDB.getConnection();
		
		ps = con.prepareStatement(sql);
		ps.setString(1, cod_post);
		
		Post p = new Post();
		
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			p.setCod_post(rs.getInt("cod_post"));
			p.setCod_jogo(rs.getInt("cod_jogo"));
			p.setCod_autor(rs.getInt("cod_autor"));
			p.setConteudo(rs.getString("conteudo"));
			p.setTitulo(rs.getString("Titulo"));
			p.setData(rs.getDate("data_post"));
		}
		
		return p;
	}
	
	public List<Comentario> ListarComentarios(String cod_post) throws SQLException{
		
		String sql = " SELECT * FROM comentarios WHERE cod_post = ?;";
		
		con = ConnectionDB.getConnection();
		
		ps = con.prepareStatement(sql);
		ps.setString(1, cod_post);
		
		ResultSet rs = ps.executeQuery();
		
		List<Comentario> comentarios = new ArrayList<>();
		while(rs.next()){
			Comentario c  = new Comentario();
			c.setCod_comentario(rs.getInt("cod_comentario"));
			c.setCod_post(rs.getInt("cod_post"));
			c.setData_comentario(rs.getDate("data_comentario"));
			c.setCod_autor(rs.getInt("cod_autor"));
			c.setConteudo(rs.getString("conteudo"));
			
			comentarios.add(c);
		}
		return comentarios;	
	} 	
	
}
