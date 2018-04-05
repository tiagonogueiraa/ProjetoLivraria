<html>
    <head>
        <title>Atualização de Autores</title>
    </head>
    <body>

    <center>
        <?php
        function formatarData($data){
        return date('d/m/Y', $data);

        }

        $GLOBALS
                
       ?>
        
        <h2>Alteração de Autores</h2>
        <p>
        <form action="controlerAutor.php?opcao=5" method="post">
            ID: <input type="text" size="3" name="pld" value="<?php echo $autor_id ?>" readonly>
            Nome do Autor: <input type="text" size="50" name="pNome" value="<?php echo $autor->nome ?>">
            Email de contato: <input type="text" size="30" name="pEmail" value="<?php echo $autor->email ?>">
            Data de nascimento: <input type="text" size="15" name="pDataNasc" value="<?php echo formatarData(strtotime($autor->dt_nasc)) ?>">
            <input type="submit" value="Atualizar"> <input type="reset" value="Cancelar">
            
        </p>
        </form>
        </center>

        </body>
        </html>
