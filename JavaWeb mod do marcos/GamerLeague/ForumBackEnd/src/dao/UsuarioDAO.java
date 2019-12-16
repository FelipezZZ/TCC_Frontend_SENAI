package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import vo.Comentario;
import vo.Post;
import vo.Resposta;
import vo.Usuario;

public class UsuarioDAO {

	private Connection con;
	private PreparedStatement ps;
	
	public boolean inserir(Usuario u) throws SQLException{
		//declara o sql
		String sql = " INSERT INTO usuario VALUES (0, ?, ?, ?, ?, ?,now() ); ";
		
		//obtem a conexão
		con = ConnectionDB.getConnection();
		
		//prepara o sql
		ps = con.prepareStatement(sql);
		ps.setString(1, u.getLogin());
		ps.setString(2, u.getSenha());
		ps.setString(3, u.getNome());
		ps.setString(4, u.getGenero());
		ps.setString(5, u.getDiscord());
		return ps.executeUpdate() > 0;
	}
	
	public Boolean tentaLogin(Usuario u) throws SQLException {
		String sql = "SELECT * FROM usuario ";
		sql+= "WHERE login =  ?  ";
		sql+= "AND senha = ?   ";
		
		
		con = ConnectionDB.getConnection();
		ps = con.prepareStatement(sql);
		ps.setString(1, u.getLogin());
		ps.setString(2, u.getSenha());
		ps.executeQuery();
		
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()) {
			return true;
		}else {
			return false;
		}
	}
	
	public  Boolean verificaLogin(Usuario u) throws SQLException{
		String sql = " SELECT login FROM usuario WHERE login = ? ";
		
		con = ConnectionDB.getConnection();
		ps = con.prepareStatement(sql);
		ps.setString(1, u.getLogin());
		
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()) {
			return true;
		}else {
			return false;
		}

	}
	
	public Integer pegacodigo(Usuario u) throws SQLException {
		String sql = "SELECT cod_user FROM usuario Where login = ? ";
		
		con = ConnectionDB.getConnection();
		ps = con.prepareStatement(sql);
		ps.setString(1, u.getLogin());
		
		ps.executeQuery();

		ResultSet rs = ps.executeQuery();
		
		rs.next();
		
		return rs.getInt(1);
	}

	public String pegalogin(Usuario u) throws SQLException {
		String sql = "SELECT login FROM usuario Where cod_user = ? ";
		
		con = ConnectionDB.getConnection();
		ps = con.prepareStatement(sql);
		ps.setInt(1, u.getCod_user());
		
		ps.executeQuery();

		ResultSet rs = ps.executeQuery();
		
		rs.next();
		
		return rs.getString(1);
	}
	
	public boolean criaPost(Post p ) throws SQLException {
		
		String sql = "INSERT INTO posts  values(0,?,now(),?,?,?)";
		
		con = ConnectionDB.getConnection();
		
		//prepara o sql
	
		ps = con.prepareStatement(sql);
		ps.setInt(1, p.getCod_jogo());
		ps.setString(2, p.getConteudo());
		ps.setString(3, p.getTitulo());
		ps.setInt(4, p.getCod_autor());

		
		return ps.executeUpdate() > 0;
	}
	
	public boolean comentar(Comentario c) throws SQLException {
		
		String sql = " INSERT INTO comentarios VALUES (0, ?,now(), ?, ?); ";
		
		con = ConnectionDB.getConnection();
		
		ps = con.prepareStatement(sql);
		ps.setInt(1, c.getCod_post());
		ps.setInt(2, c.getCod_autor());
		ps.setString(3, c.getConteudo());
		return ps.executeUpdate() > 0;
	}
	
	public boolean Responder(Resposta r) throws SQLException {
		String sql = " INSERT INTO respostas values(0,?,?,?,?,now())";
		
		con = ConnectionDB.getConnection();
		
		ps = con.prepareStatement(sql);
		ps.setInt(1, r.getCod_comentario());
		ps.setInt(2, r.getCod_autor());
		ps.setInt(3, r.getCod_post());
		ps.setString(4, r.getConteudo());
		
		return ps.executeUpdate() > 0;
	}
	
}
