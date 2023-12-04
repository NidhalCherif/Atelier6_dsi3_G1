<?php
require_once "config/connexion.php";
$obj = new connexion();
$connexion = $obj->getConnexion();
for ($i = 1; $i < 100; $i++) {

    $libelle = "Produit n°$i";
    $prix = random_int(100, 3000);
    $qte = random_int(1, 200);
    $image = "https://picsum.photos/300/?random=$i";
    $promo = random_int(0, 1);
    $desc = " Lorem ipsum dolor sit amet consectetur adipisicing elit. 
Iusto, quasi voluptatem tempore dolor ipsa asperiores quis odit 
id ut saepe, rerum v
eniam aspernatur eum laudantium tempora nemo vitae esse similique.";
    $id_categorie = random_int(1, 4);
    $sql = "insert into produit values(null,'$libelle',$prix,$qte,'$image',
$promo,'$desc',$id_categorie)";
    $connexion->exec($sql);
}
