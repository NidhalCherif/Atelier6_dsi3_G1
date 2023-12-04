

<?php
require_once "categorie.php";
require_once "CRUD.php";


class Crud_categorie extends CRUD
{
    protected $table = 'categorie';



    public function add(categorie $c)
    {
        //$lib=$c->getLibelle();

        //$sql = "insert into categorie values(null,'$lib')";
        $sql = "insert into {$this->table} values(null,'{$c->getLibelle()}')";
        $res = $this->pdo->exec($sql);
        return $res;
    }

    public function update(categorie $c)
    {
        $sql = "update {$this->table} set libelle='{$c->getLibelle()}' 
                where id={$c->getId()})";
        $res = $this->pdo->exec($sql);
        return $res;
    }
}
