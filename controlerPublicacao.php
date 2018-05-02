<?php

 // require_once('../classes/modeloLivraria.inc');
 require_once('modeloLivraria.inc');
  //require_once('../dao/publicacaoDao.inc');
 require_once('publicacaoDao_!.php');

  $opcao = (int)$_REQUEST['opcao'];

  if($opcao == 2)
  {
      $publicacaoDao = new PublicacaoDao();

      $lista = $publicacaoDao->getPublicacoes();
      
      session_start();
      
      $_SESSION['publicacoes'] = $lista;
      
      header("Location:../restrito/exibirPublicacoes.php");
  }
  
?>