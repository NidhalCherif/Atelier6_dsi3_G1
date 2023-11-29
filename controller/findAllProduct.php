

<?php
require_once "../model/Crud_produit.php";
$crud = new Crud_produit();
$LesProduits = $crud->findAll();
include "../view/findAllProduct.php";
