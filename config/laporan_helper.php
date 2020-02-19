<?php
if(isset($_GET['jenis'])){

	switch ($_GET['jenis']) {
		case 'daftar_operator':
		include "laporan/daftar_operator.php";
		break;
	}
}else{
	include "page/home.php";
}