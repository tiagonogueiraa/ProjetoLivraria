<html>
    <head>
        <title>Exibição de Autores</title>
    </head>
    <body>
    <center>

        <h1>Autores cadastrados</h1>

        <?php

        function formatarData($data) {
            return date('d/m/Y', $data);
        }

        session_start();

        $autores = $_SESSION['autores'];
        ?>

        <font face="Tahoma"
           <table border="1" cellspacing="2" cellpadding="1" width="50%">
              
               <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Data de nascimento</th>
                <th>Operação</th>
               </tr>
               
           <?php
           
                foreach($autores as $autor)
                {
                    echo "<tr align='center'";
                    echo "<td>".$autor->autor_id."</td>";
                    echo "<td>".$autor->nome."</td>";
                    echo "<td>".$autor->email."</td>";
                    //echo ""
                            
                            
                }
           ?>
        </center>

</body>
</html>
