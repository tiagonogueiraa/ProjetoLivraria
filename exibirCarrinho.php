<?php
session_start();

$carrinho = $_SESSION['carrinho'];
$cont = 1;
$soma = 0;

foreach ($carrinho as $item) {
    ?>
    <tr bgcolor="<?php echo $color ?>"align="center">
        <td><?php echo $cont ?></td>
        <td><?php echo $item->getId(); ?></td>
        <td><?php echo $item->getTitulo(); ?></td>
        <td><?php echo $item->getEditora(); ?></td>
        <td><?php echo "R$ " . $item->getPreco(); ?></td>
        <td><a href="controlerCarrinho.php?opcao=2&index=<?php echo $cont - 1 ?>">" Remover Item </a> </td>

    </tr>


    <?php
    $soma += $item->getPreco();

    $cont++;
}
?>

<tr align="right">
    <td colspan = "5"> <font face = "Verdana" size = "4" color = "red">
        <b>Valor Total = R$<?php echo $soma ?></b></font>
    <td> 
</tr>


<a href="exibirPublicacoes.php">
    <img src="imagens/botao_continuar_comprando.png">
</a>

