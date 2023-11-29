

<?php
require_once "produit.php";
require_once "../config/connexion.php";

class Crud_produit
{
    private $pdo;
    function __construct()
    {
        $obj = new connexion();
        $this->pdo = $obj->getConnexion();
    }
    public function find($ref)
    {
        $sql = "select * from produit where reference ='$ref'";
        $res = $this->pdo->query($sql); //$res est un objet PDOStatement
        return $res->fetch(PDO::FETCH_NUM);
    }
    public function findAll()
    {
        $sql = "select * from produit";
        $res = $this->pdo->query($sql); //$res est un objet PDOStatement
        return $res->fetchAll(PDO::FETCH_NUM);
    }
    public function add(produit $p)
    {
        $r = $p->getReference();
        $l = $p->getLibelle();
        $p = $p->getPrix();
        $q = $p->getQte();
        $i = $p->getImage();
        $pr = $p->getPromo();
        $d = $p->getDesc();

        $sql = "insert into produit values('$r','$l',$p,$q,'$i',$pr,$d)";
        $res = $this->pdo->exec($sql);
        return $res;
    }
    public function delete($ref)
    {
        $sql = "delete from produit where reference ='$ref'";
        $res = $this->pdo->exec($sql);
        return $res;
    }
    public function update(produit $p)
    {
    }
}
