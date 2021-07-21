<html>
<head>
<title>Processando...</title>
<body>

</head>

<?php
$host = "localhost";
$user = "root";
$pass = "";
$banco = "cadastro";
$conexao = mysqli_connect($host, $user, $pass) or die(mysql_error());
mysqli_select_db($conexao, $banco) or die (mysqli_error());
?>

<?php
$email=$_POST['email'];
$senha=$_POST['senha'];

$sql = mysqli_query($conexao, "INSERT INTO `usuarios`(`email`, `senha`) VALUES('$email', '$senha')");
?>

</body>
</html>