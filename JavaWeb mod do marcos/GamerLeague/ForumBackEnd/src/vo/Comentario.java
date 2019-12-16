package vo;

import java.util.Date;

public class Comentario {

	private int cod_comentario;
	private int cod_post;
	private Date data_comentario;
	private int cod_autor;
	private String conteudo;
	
	public Comentario(int cod_comentario, int cod_post, Date data_comentario, int cod_autor, String conteudo) {
		
	}
	
	public Comentario() {
		
	}

	public int getCod_comentario() {
		return cod_comentario;
	}

	public void setCod_comentario(int cod_comentario) {
		this.cod_comentario = cod_comentario;
	}

	public int getCod_post() {
		return cod_post;
	}

	public void setCod_post(int cod_post) {
		this.cod_post = cod_post;
	}

	public Date getData_comentario() {
		return data_comentario;
	}

	public void setData_comentario(Date data_comentario) {
		this.data_comentario = data_comentario;
	}

	public int getCod_autor() {
		return cod_autor;
	}

	public void setCod_autor(int cod_autor) {
		this.cod_autor = cod_autor;
	}

	public String getConteudo() {
		return conteudo;
	}

	public void setConteudo(String conteudo) {
		this.conteudo = conteudo;
	}
	
	
	
}
