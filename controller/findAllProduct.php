

<?php
require_once "../model/Crud_produit.php";
$crud = new Crud_produit();
$LesProduits = $crud->findAll();
//var_dump($LesProduits);
include "../view/findAllProduct.php";
