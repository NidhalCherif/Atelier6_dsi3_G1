<?php
ob_start();

?>
<h1>Listes des produits</h1>
<table class="table" id="example">
    <thead>
        <tr class="table table-primary">
            <th>Référence</th>
            <th>Libellé</th>
            <th>Prix</th>
            <th>Quantité</th>
            <th>En Promo</th>
            <th>Action</th>
            <th></th>
            <th></th>
        </tr>
    </thead>
    <tbody>

        <?php
        foreach ($LesProduits as $produit) {
            echo "<tr>
        <td>$produit[0]</td>
        <td>$produit[1]</td>
        <td>$produit[2]</td>
        <td>$produit[3]</td>
        <td>$produit[5]</td>
        <td><a href='detail.php?ref=$produit[0]'>Voir détail...</a></td>
        <td><a href='edit.php?ref=$produit[0]'>Edit</a></td>
        <td><a href='../controller/delete.php?ref=$produit[0]'>Supprimer</a></td>
       </tr>";
        }
        echo "</tbody></table>";
        ?>
        <a href="../view/addProduct.php" class="btn btn-primary btn-sm">Ajouter Produit</a>
        <?php
        $contenu = ob_get_clean();
        include "../view/layout.php";
