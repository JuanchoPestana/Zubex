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


	if (isset ($_POST["material"]))
		$material = $_POST["material"];
	else
		$material = "FAILMATERIAL";
	
	
	
	if (isset ($_POST["medida"]))
		$medida = $_POST["medida"];
	else
		$medida = "FAILMEDIDA";	


	if (isset ($_POST["impresion"]))
		$impresion = $_POST["impresion"];
	else
		$impresion = "FAILIMPRESION";



	if (isset ($_POST["sello"]))
		$sello = $_POST["sello"];
	else
		$sello = "FAILSELLO";



	if (isset ($_POST["distSello"]))
		$distSello = $_POST["distSello"];
	else
		$distSello = "FAILDISTSELLO";



	if (isset ($_POST["velocidad"]))
		$velocidad = $_POST["velocidad"];
	else
		$velocidad = "FAILVELOCIDAD";



	if (isset ($_POST["color"]))
		$color = $_POST["color"];
	else
		$color = "FAILCOLOR";


	if (isset ($_POST["cliente"]))
		$cliente = $_POST["cliente"];
	else
		$cliente = "FAILCLIENTE";



	if (isset ($_POST["codigoCompleto"]))
		$codigoCompleto = $_POST["codigoCompleto"];
	else
		$codigoCompleto = "FAILCODIGOCOMPLETO";


		
	$con = mysql_connect($mysql_host,$mysql_user,$mysql_password ) or die(mysql_error()); 
	mysql_select_db($mysql_database,$con) or die(mysql_error()); 

	$sql = "INSERT INTO general (pedido,codigoUnico,millares,numeroBobinas,material,medida,impresion,sello,distSello,velocidad,color,cliente,codigoCompleto) VALUES('$pedido','$codigoUnico','$millares','$numeroBobinas','$material','$medida','$impresion','$sello','$distSello','$velocidad','$color','$cliente','$codigoCompleto');";
	$res = mysql_query($sql,$con) or die(mysql_error());
	
	mysql_close($con);
	if ($res) {
		header("Location: http://www.zubexdb.com");
	}else{
		echo "failed";
	}// end else




?>