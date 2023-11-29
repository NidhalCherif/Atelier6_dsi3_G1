<?php
class connexion
{

    public function getConnexion()
    {
        $dsn = "mysql:host=localhost;dbname=atelier6_dsi3_g1";
        $username = "root";
        $password = "";
        $connexion = new PDO($dsn, $username, $password);
        return $connexion; // objet PDO
    }
}
