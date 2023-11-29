
<?php
ob_start();

echo "<h1>Liste des produits en promo</H1>";
echo "ipsum dolor sit, amet consectetur adipisicing elit. Accusantium sequi quibusdam fugiat dolores odio tempore iusto, officiis, veniam quo perferendis veritatis facere dolorum ducimus nobis nostrum earum molestias at iste!";

$contenu = ob_get_clean();
include "layout.php";
