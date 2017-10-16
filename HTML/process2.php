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
	

	
	if (isset ($_POST["codigoUnico"]))
		$codigoUnico = $_POST["codigoUnico"];
	else
		$codigoUnico = "FAILCODIGOUNICO";


	if (isset ($_POST["millares"]))
		$millares = $_POST["millares"];
	else
		$millares = "FAILMILLARES";


	if (isset ($_POST["numeroBobinas"]))
		$numeroBobinas = $_POST["numeroBobinas"];
	else
		$numeroBobinas = "FAILNUMEROBOBINAS";



		
	$con = mysql_connect($mysql_host,$mysql_user,$mysql_password ) or die(mysql_error()); 
	mysql_select_db($mysql_database,$con) or die(mysql_error()); 


	$request = mysql_query("SELECT * FROM general WHERE codigoUnico= '$codigoUnico';");

	if ($request){
	$count=mysql_num_rows($request);
	
	if ($count==1){
	$rows=mysql_fetch_array($request);

	$codigoUnico=$rows['codigoUnico'];
	$material=$rows['material'];
	$medida=$rows['medida'];
	$impresion=$rows['impresion'];
	$sello=$rows['sello'];
	$distSello=$rows['distSello'];
	$velocidad=$rows['velocidad'];
	$color=$rows['color'];
	$cliente=$rows['cliente'];
	$codigoCompleto=$rows['codigoCompleto'];









	$sql = "INSERT INTO pedidos (pedido,codigoUnico,millares,numeroBobinas,material,medida,impresion,sello,distSello,velocidad,color,cliente,codigoCompleto) VALUES('$pedido','$codigoUnico','$millares','$numeroBobinas','$material','$medida','$impresion','$sello','$distSello','$velocidad','$color','$cliente','$codigoCompleto');";
	$res = mysql_query($sql,$con) or die(mysql_error());
	
	mysql_close($con);
	if ($res) {
		header("Location: http://www.zubexdb.com");
	}else{
		echo "failed";
	}// end else




?>