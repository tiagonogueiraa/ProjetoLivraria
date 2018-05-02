<html>
    <head>
        <title>Lista de livros</title>
    </head>
    <body>
    <center>
        <h1>Livros</h1>


        <p>
            <?php
            session_start();

            $livros = $_SESSION['livros'];
            ?>


            <font face="Tahoma">
        <table border="0"  cellspacing="2" cellspadding="1" width="50%">
            <?php
            foreach ($livros as $livro) {
                ?>

                <tr> 
                    <td>
                        <img src="imagens/book_<?= $livro->isbn ?>.jpg" width="150px">
                    </td>
                    <td>
                        <table border="0">

                            <tr>
                                <td>
                                    <?= $livro->titulo; ?>
                                </td>
                            </tr>
                            <tr>
                                <td>Autor:</td>
                            </tr>
                            <tr>
                                <td>
                                    Valor: R$ <?= $livro->preco ?>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href='controlerLivro.php?opcao=3$isbn=<?= $livro->isbn ?>'>Alterar</a>
                                </td>		    		    
                            </tr>
                            <tr>
                                <td>
                                    <a href="controlerLivro.php?opcao=4$isbn=<?= $livro->isbn ?>">Excluir</a>
                                </td>                                
                                
                            </tr>
                            
                        
                        </table>
                    </td>
                </tr>
                <?php
            }
            ?>
            </font>
        </table>

    </p>



</center>
</body>
</html>

