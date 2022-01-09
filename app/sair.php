<?php
	session_start();
	
	unset(
		$_SESSION['usuarioId'],
		$_SESSION['usuarioNome'],
		$_SESSION['usuarioNiveisAcessoId'],
		$_SESSION['usuarioEmail'],
		$_SESSION['usuarioSenha']
	);
	
	$_SESSION['logindeslogado'] = "Você foi desconectado";
	header("Location: /index.php");
?>