<?php
	session_start();	
	include_once("conexao.php");	

	if((isset($_POST['login_usuario'])) && (isset($_POST['senha_usuario']))){
		$usuario = mysqli_real_escape_string($conn, $_POST['login_usuario']); 
		$senha = mysqli_real_escape_string($conn, $_POST['senha_usuario']);
		//$senha = md5($senha);
			
		//Buscar na tabela usuario o usuário que corresponde com os dados digitado no formulário
		$result_usuario = "SELECT * FROM usuarios WHERE login_usuario = '$usuario' && senha_usuario = '$senha' LIMIT 1";
		$resultado_usuario = mysqli_query($conn, $result_usuario);
		$resultado = mysqli_fetch_assoc($resultado_usuario);
				if(isset($resultado)){
			$_SESSION['usuarioId'] = $resultado['id_usuario'];
			$_SESSION['usuarioNome'] = $resultado['login_usuario'];
			$_SESSION['usuarioNiveisAcessoId'] = $resultado['nivel_usuario'];
			$_SESSION['usuarioEmail'] = $resultado['login_usuario'];
			if($_SESSION['usuarioNiveisAcessoId'] >= "1"){
				header("Location: app/dashboard.php");
	
			}
		//redireciona o usuario para a página de login
		}else{	
			//Váriavel global recebendo a mensagem de erro
			$_SESSION['loginErro'] = "Usuário ou senha Inválido";
			header("Location: /index.php");
		}
	}else{
		$_SESSION['loginErro'] = "Usuário ou senha inválido";
		header("Location: /index.php");
	}
?>