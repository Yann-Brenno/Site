<?php
	session_start();
	echo "Usuario: ". $_SESSION['usuarioNome'];	
	include_once("../../conexao.php");
	if(!empty($_SESSION['usuarioNiveisAcessoId'] == '5' OR $_SESSION['usuarioNiveisAcessoId'] == '4' OR $_SESSION['usuarioNiveisAcessoId'] == '6' AND $_SESSION['id_usuario'])){

}else{
    $_SESSION['msg'] = "Área restrita";
    header("Location: ../acesso_negado.php");
}
?>
<br> <a href="../sair.php">Sair</a>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css"> </script>
  </head>
  
  <body>

                   *************pagina de faxineiro em desenvolvimento******************

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