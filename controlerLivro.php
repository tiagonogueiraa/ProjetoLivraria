<?php
    require_once('conexao.inc');
    require_once('LivroDAO.inc');
    require_once('modeloLivraria.inc');
    
    
    $opcao = (int)$_REQUEST['opcao'];
    
    if($opcao == 1){
	$livro = new Livro($_POST['isbn'], $_POST['titulo'],$_POST['edicao_num'], $_POST['ano_publicacao'], $_POST['descricao'], $_POST['preco']);
	
	
	$livroDao = new LivroDAO();
	
	$livroDao->incluirLivro($livro);
	
	header('Location:controlerLivro.php?opcao=2');
    }
    
    if($opcao == 2){
	$livroDAO = new LivroDAO();
	
	$lista = $livroDAO->getLivros();
	
	session_start();
	
	$_SESSION['livros'] = $lista;
	
	header('Location:exibirLivros.php');
    }
    
    if(opcao == 3){
	
	$isbn = $_REQUEST['isbn'];
	
	$livroDAO = new LivroDAO();
	
	$livro = $livroDAO->getLivro($isbn);
	
	session_start();
	
	echo $livro->isbn;
	echo $livro->titulo;
	
	$_SESSION['livro'] = $livro;
	
	header("Location:formLivroAtualizar.php");
	
    }
    
    if(opcao == 4){
	
	$isbn = $_REQUEST['isbn'];
	
	$livroDao = new LivroDAO();
	
	$livroDAO->excluirLivro($isbn);
	
	header("Location:controlerLivro.php?opcao=2");
	    
	    
    }
    
    
    

?>
