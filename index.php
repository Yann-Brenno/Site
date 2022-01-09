<?php
	session_start();
?>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Cesar Szpak">
    <link rel="icon" href="imagens/favicon.ico">
    <title>AOL5 - Banco de dados</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link href="css/signin.css" rel="stylesheet">
    <script src="js/ie-emulation-modes-warning.js"></script>
  </head>

  <body>
  
  <!-- coloquei um video de fundo mais não gostei do resultado salvado o codigo para uso futuro
  
  <header>
  <video autoplay="true" loop="true" poster="#" class="bg_video">
			<source src="../imagens/bg.mp4" type="video/mp4">
		</video>
  </header>
  
  -->
  
  <div>
    <div class="container">
	<div id="container">

      <form class="form-signin" method="POST" action="valida.php">
        <h2 class="form-signin-heading">Login</h2>
        <label for="login" class="sr-only">Login</label>
        <input type="text" name="login_usuario" id="login" class="form-control" placeholder="Login" required autofocus>
        <label for="inputPassword" class="sr-only">Senha</label>
        <input type="password" name="senha_usuario" id="inputPassword" class="form-control" placeholder="Senha" required>
        <button class="btn btn-lg btn-success btn-block" type="submit">Acessar</button>
      </form>
	  <p class="text-center text-success">
			<?php if(isset($_SESSION['loginErro'])){
				echo $_SESSION['loginErro'];
				unset($_SESSION['loginErro']);
			}?>
		</p>
		<p class="text-center text-success">
			<?php 
			if(isset($_SESSION['logindeslogado'])){
				echo $_SESSION['logindeslogado'];
				unset($_SESSION['logindeslogado']);
			}
			?>
		</p>
		</div>
    </div> <!-- /container -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
	

  
  
  </body>
  <footer>
Página desenvolvida por YANN BRENNO DA COSTA RAMOS - Matricula: 01388232 - Curso: Analise e desenvolvimento de sistemas (EAD) Uninassau - Campina Grande/PB
</footer>
  
  <style>
  
  body {
	background-image: url(imagens/bg_login.jpg);
	background-size: cover;
	
}
#container {
	background-color: #FFFFFF;
	opacity: 0.9;
	width: 400px;
	margin-left: auto;
	margin-right: auto;
	padding: 20px 30px;
	margin-top: 10vh;
	border-radius: 10px;
	text-align: center;
    -webkit-box-shadow: 12px 12px 4px 0px rgba(64, 69, 57, 0.75);
    -moz-box-shadow:    12px 12px 4px 0px rgba(64, 69, 57, 0.75);
    box-shadow:         12px 12px 4px 0px rgba(64, 69, 57, 0.75);

}
#titulo-box{
	    color: black;
}

header {
	width: 100%;
	height: 100%;
	overflow: hidden;
	background-size: cover;
}
video {
	position: absolute;
	top: 0;
	left: 0;
	display: block;
	width: 100%
	background-size: cover;
}
footer {
    position: absolute;
    bottom: 0;
    background-color: #21abcd;
    color: #FFF;
    width: 100%;
    height: 100px;    
    text-align: center;
    line-height: 100px;
}
</html>
