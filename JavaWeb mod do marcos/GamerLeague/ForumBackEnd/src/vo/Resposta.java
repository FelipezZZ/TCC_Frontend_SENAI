package vo;

import java.util.Date;

public class Resposta {

	private int cod_resposta;
	private int cod_comentario;
	private int cod_post;
	private String conteudo;
	private Date data_resposta;
	private int cod_autor;
	
	
	public Resposta(int cod_resposta, int cod_comentario, int cod_post, String conteudo, Date data_resposta,
			int cod_autor) {
		
	}
	
	public Resposta() {
		
	}

	public int getCod_resposta() {
		return cod_resposta;
	}

	public void setCod_resposta(int cod_resposta) {
		this.cod_resposta = cod_resposta;
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

	public String getConteudo() {
		return conteudo;
	}

	public void setConteudo(String conteudo) {
		this.conteudo = conteudo;
	}

	public Date getData_resposta() {
		return data_resposta;
	}

	public void setData_resposta(Date data_resposta) {
		this.data_resposta = data_resposta;
	}

	public int getCod_autor() {
		return cod_autor;
	}

	public void setCod_autor(int cod_autor) {
		this.cod_autor = cod_autor;
	}
	
	
	
	
	
}
