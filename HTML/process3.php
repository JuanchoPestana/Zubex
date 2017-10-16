<?php
	$mysql_host = "localhost";
	$mysql_database = "ab95503_zubex";
	$mysql_user = "ab95503_juancho";
	$mysql_password = "Jpjpjuancho1995";



// CAMBIO DE CODIGO


	if (isset ($_POST["pedido"]))
		$pedido = $_POST["pedido"];
	else
		$pedido = "FAILPEDIDO";
	

	
	if (isset ($_POST["bol1"]))
		$bol1 = $_POST["bol1"];
	else
		$bol1 = "FAILBOL1";

	if (isset ($_POST["bol2"]))
		$bol2 = $_POST["bol2"];
	else
		$bol2 = "FAILBOL2";

	if (isset ($_POST["bol3"]))
		$bol3 = $_POST["bol3"];
	else
		$bol3 = "FAILBOL3";

	if (isset ($_POST["bol4"]))
		$bol4 = $_POST["bol4"];
	else
		$bol4 = "FAILBOL4";

	if (isset ($_POST["bol5"]))
		$bol5 = $_POST["bol5"];
	else
		$bol5 = "FAILBOL5";

	if (isset ($_POST["bol6"]))
		$bol6 = $_POST["bol6"];
	else
		$bol6 = "FAILBOL6";




		
	$con = mysql_connect($mysql_host,$mysql_user,$mysql_password ) or die(mysql_error()); 
	mysql_select_db($mysql_database,$con) or die(mysql_error()); 

	$sql = "INSERT INTO piezasmin (pedido,codigoUnico, bol1, bol2, bol3, bol4, bol5, bol6) VALUES('$pedido','$codigoUnico', '$bol1', '$bol2', '$bol3', '$bol4', '$bol5', '$bol6');";
	$res = mysql_query($sql,$con) or die(mysql_error());
	
	mysql_close($con);
	if ($res) {
		header("Location: http://www.zubexdb.com");
	}else{
		echo "failed";
	}// end else




?>