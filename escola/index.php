<?php
include("conexao.php");
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>escola</title>
</head>
<body>
    <h1>lista de professores</h1>
    <form action="" method="POST">
    <input type="text" name="txtBuscar" placeholder="Digite algo...">
    <button type="submit" name="btnBuscar">Buscar</button>
    </form>



    <table border="1">

       <tr>
        <th><strong>Titulacao</strong></th>
         <th> <strong>Nome</strong> </th>
         <th> <strong>Email</strong></th>
       </tr>
       
       <?php

       if(isset($_POST['btnBuscar'])){
        $pesquisa = $_POST['txtBuscar'];
        echo $pesquisa;
        $sql_code = "SELECT * FROM Professor where nome like '%$pesquisa%' ";
       }
       else{

       $sql_code = "SELECT * FROM Professor";
       }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              

       $sql_querry = $con->query($sql_code);
       while($dados = $sql_querry->fetch_assoc()){
       ?>

       <tr>
        <td><?php echo $dados['titulacao']; ?></td>
        <td><?php echo $dados['nome'];?></td>
        <td><?php echo $dados['email'];?></td>
       </tr>
       <?php } ?>

    </table>

    
    
</body>
</html>