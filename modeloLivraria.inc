<?php

class Autor {

    private $autor_id;
    private $nome;
    private $email;
    private $data_nascimento;

    public function setAutor($id, $nome, $email, $data) {
	$this->autor_id = $id;
	$this->nome = $nome;
	$this->email = $email;
	$this->data_nascimento = strtotime($data);
    }

    public function Autor($nome, $email, $data) {
	$this->nome = $nome;
	$this->email = $email;
	$this->data_nascimento = strtotime(str_replace('/', '-', $data)); // para trocar um caractere pelo outro
    }

    public function getAutor_id() {
	return $this->autor_id;
    }

    public function setAutor_id($pId) {
	return $this->autor_id = $pId;
    }

    public function getNome() {
	return $this->nome;
    }

    public function setNome($pNome) {
	return $this->nome = $pNome;
    }

    public function getEmail() {
	return $this->email;
    }

    public function setEmail($pEmail) {
	return $this->email = $pEmail;
    }

    public function getDataNascimento() {
	return $this->data_nascimento;
    }

    public function setDataNascimento($pDataNascimento) {
	return $this->data_nascimento = $pDataNascimento;
    }

}

class Livro {

    public $isbn;
    public $titulo;
    public $edicao_num;
    public $ano_publicacao;
    public $descricao;
    public $preco;

    public function setLivro($isbn, $titulo, $edicao_num, $ano_publicacao, $descricao, $preco) {
	$this->isbn = $isbn;
	$this->titulo = $titulo;
	$this->edicao_num = $edicao_num;
	$this->ano_publicacao = strtotime($ano_publicacao);
	$this->descricao = $descricao;
	$this->preco = $preco;
    }

    public function Livro($isbn, $titulo, $edicao_num, $ano_publicacao, $descricao, $preco) {
	$this->isbn = $isbn;
	$this->titulo = $titulo;
	$this->edicao_num = $edicao_num;
	$this->ano_publicacao = strtotime(str_replace('/','-', $ano_publicacao)); // troca um caractere pelo outro
	$this->descricao = $descricao;
	$this->preco = $preco;
    }

    public function getIsbn() {
	return $this->isbn;
    }

    public function setIsbn($pIsbn) {
	return $this->isbn = $pIsbn;
    }

    public function getTitulo() {
	return $this->titulo;
    }

    public function setTitulo($pTitulo) {
	return $this->titulo = $pTitulo;
    }

    public function getEdicao_num() {
	return $this->edicao_num;
    }

    public function setEdicao_num($pEdicao_num) {
	return $this->edicao_num = $pEdicao_num;
    }

    public function getAno_publicacao() {
	return $this->ano_publicacao;
    }

    public function setAno_publicacao($pAno_publicacao) {
	return $this->ano_publicacao = $pAno_publicacao;
    }

    public function getDescricao() {
	return $this->descricao;
    }

    public function setDescricao($pDescricao) {
	return $this->descricao = $pDescricao;
    }

    public function getPreco() {
	return $this->preco;
    }

    public function setPreco($pPreco) {
	return $this->preco = $pPreco;
    }

}


class Publicacao {
    public $pub_id;
    public $isbn;
    public $titulo;
    public $autor;
    public $editora;
    public $preco;
    
    public function setPublicacao(){
        $this->pub_id = $pub_id;
        $this->isbn = $isbn;
        $this->titulo = $titulo;
        $this->autor = $autor;
        $this->editora = $editora;
        $this->preco = $preco;        
        
    }
    
    public function Publicacao($isbn, $titulo, $autor, $editora, $preco){
        $this->isbn = $isbn;
        $this->titulo = $titulo;
        $this->autor = $autor;
        $this->editora = $editora;
        $this->preco = $preco;   
    }
    
    public function getPub_id() {
        return $this->pub_id;
    }

    public function getIsbn() {
        return $this->isbn;
    }

    public function getTitulo() {
        return $this->titulo;
    }

    public function getAutor() {
        return $this->autor;
    }

    public function getEditora() {
        return $this->editora;
    }

    public function getPreco() {
        return $this->preco;
    }

    public function setPub_id($pub_id) {
        $this->pub_id = $pub_id;
    }

    public function setIsbn($isbn) {
        $this->isbn = $isbn;
    }

    public function setTitulo($titulo) {
        $this->titulo = $titulo;
    }

    public function setAutor($autor) {
        $this->autor = $autor;
    }

    public function setEditora($editora) {
        $this->editora = $editora;
    }

    public function setPreco($preco) {
        $this->preco = $preco;
    }


}

?>
