<?php
	session_start();
	echo "Usuario: ". $_SESSION['usuarioNome'];	
	include_once("../../conexao.php");
	if(!empty($_SESSION['usuarioNiveisAcessoId'] == '2' OR $_SESSION['usuarioNiveisAcessoId'] == '4' OR $_SESSION['usuarioNiveisAcessoId'] == '6' AND $_SESSION['id_usuario'])){

}else{
    $_SESSION['msg'] = "Área restrita";
    header("Location: ../acesso_negado.php");
}
?>
<br> <a href="../sair.php">Sair</a>
<br>
<center><a href="cadastro/novo_cliente.php">Cadastrar novo cliente</a></center
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css"> </script>
  </head>
  
  <body>
  <div class="container">
  <table id="example" class="table">
  <thead>
    <tr>
      <th scope="col">#ID</th>
      <th scope="col">Nome</th>
      <th scope="col">contato</th>
    </tr>
  </thead>
  <tbody>
   <?php 
  $result_cliente = "SELECT * FROM clientes";
  $resultado_cliente = mysqli_query($conn, $result_cliente);
  while($row_cliente = mysqli_fetch_assoc($resultado_cliente)){
  ?>
    <tr>
<th scope="row"><?php echo $row_cliente['id_cliente']; ?></th>
<th scope="row"><?php echo $row_cliente['nome_cliente']; ?></th>
<th scope="row"><?php echo $row_cliente['contato_cliente']; ?></th>
    </tr><?php }?>
  </tbody>
</table>

           <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css"> </script>
           <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
           <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>

           <script>
               $(document).ready(function() {
    $('#example').DataTable();
} );
               </script>

</div>
<br>
<br>
<center><a href="../dashboard.php">Voltar</a></cener>
  </body>
  
  
   <!-- CSS -->
   <style>
body {
  background-color: #3FB3B3;
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;

}

</style>

</html>
