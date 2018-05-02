<?php

require_once('conexao.inc');
require_once('modeloLivraria.inc');


class publicacaoDAO{
    private $con;
    
    function publicacaoDAO(){
        $c = new Conexao();
        $this->con = $c->getConexao();
        
    }
    
    private function getEditora($id){
        $sql = $this->con->prepare("SELECT editora_nome FROM editorawhere editora_id = :id");
        
        $sql->bindValue(':id', $id);
        $sql->execute();
        
        $editora = $sql->fetch(PDO::FETCH_OBJ);
        
        return $editora->editora_nome;
    }
    
    
    private function getLivro()
    
    //fazer para titulo do livro e nome do autor
    
}

?>