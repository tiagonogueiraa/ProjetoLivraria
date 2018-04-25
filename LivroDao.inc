<?php
    
    require_once('conexao.inc');
    require_once('modeloLivraria.inc');
    
    
    class LivroDAO{
        private $con;
        
        
        function LivroDAO(){
            $c = new Conexao();
            $this->con = $c->getConexao();
        }
        
        public function incluirLivro(Livro $livro){
            $sql = $this->con->prepare("insert into livros (isbn, titulo, edicao_num, ano_publicao, descricao, preco) values (:isbn, :tit, :edic, :ano, :desc, :prec)");
            $sql->bindValue(':isbn', $livro->getIsbn());
            $sql->bindValue(':tit', $livro->getTitulo());
            $sql->bindValue
                    
    }

?>