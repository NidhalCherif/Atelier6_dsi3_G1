

<?php
require_once "produit.php";
require_once "CRUD.php";


class Crud_produit extends CRUD
{
    protected $table = 'produit';
    public function findAll()
    {
        $sql = "select p.id,p.libelle,p.prix,p.qte,p.promo,c.libelle
         from {$this->table} as p, categorie as c  where p.id_categorie=c.id";
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
        $c = $p->getCategorie->getId();

        $sql = "insert into {$this->table} values(null,'$l',$p,$q,'$i',$pr,$d,$c)";
        $res = $this->pdo->exec($sql);
        return $res;
    }

    public function update(produit $p)
    {
    }
}
