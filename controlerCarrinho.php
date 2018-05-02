<?php

$opcao = (int)$REQUEST['opcao'];

if($opcao == 1 ) 
{
    $id = (int)$REQUEST['id'];
    
    $publicacaoDao = new PublicaoDao();
    
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