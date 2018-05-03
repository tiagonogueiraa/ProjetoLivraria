<?php

require_once('publicacaoDAO.php');

$opcao = (int)$_REQUEST['opcao'];

if($opcao == 1 ) 
{
    $id = (int)$_REQUEST['id'];
    
    $publicacaoDao = new PublicacaoDao();
    
    $publicacao = $publicacaoDao->getPublicacao($id);
    
    session_start();
    
    if(!isset($_SESSION['carrinho']))
        $carrinho = array();
    
    else
        $carrinho = $_SESSION['carrinho'];
    
        $carrinho[] = $publicacao;
        
        $_SESSION['carrinho'] = $carrinho;
        
        header("Location:exibirCarrinho.php");



    
}

?>