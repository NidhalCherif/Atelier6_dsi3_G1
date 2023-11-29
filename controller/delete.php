<?php
ob_start();
require_once "config/connexion.php";

if (isset($_GET['ref'])) {

    $ref = $_GET['ref'];
    $sql = "delete from produit where reference='$ref'";
    $res = $connexion->exec($sql);
    header("location:findAllProduct.php");
}




$contenu = ob_get_clean();
include "layout.php";












