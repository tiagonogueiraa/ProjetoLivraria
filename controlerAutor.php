<?php

require_once('modeloLivraria.inc');
require_once('autorDao.php');

$opcao = (int)$_REQUEST['opcao'];
if($opcao == 1)
{
    $autor = new Autor($_POST['nome'], $_POST['email'], $_POST['data_nascimento']);
    $autorDao = new AutorDAO();
    
    $autorDao->incluirAutor($autor);
    
    //header("Location:exibirAutores.php");
    
    
}


?>

