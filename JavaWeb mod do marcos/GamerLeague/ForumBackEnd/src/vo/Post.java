package vo;

import java.util.Date;

public class Post {
	
	private int cod_post;
	private int cod_jogo;
	private int cod_autor;
	private Date data;
	private String conteudo;
	private String titulo;

	
	public Post(int cod_post, int cod_jogo, int cod_autor, Date data, String conteudo, String titulo) {
		
	}
	
	public Post() {
		
	}
	
	public int getCod_post() {
		return cod_post;
	}
	public void setCod_post(int cod_post) {
		this.cod_post = cod_post;
	}
	public int getCod_jogo() {
		return cod_jogo;
	}
	public void setCod_jogo(int cod_jogo) {
		this.cod_jogo = cod_jogo;
	}
	public int getCod_autor() {
		return cod_autor;
	}
	public void setCod_autor(int cod_autor) {
		this.cod_autor = cod_autor;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	public String getConteudo() {
		return conteudo;
	}
	public void setConteudo(String conteudo) {
		this.conteudo = conteudo;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
}
