<?php

class CartController
{
    public function getCart()
    {
        $this->show('cart');
    }

    public function addProduct()
    {
        // Traitement d'ajout du produit

        header('Location: ' . $_SERVER['BASE_URI'] . '/mon-panier');
    }

    public function updateCart()
    {
        // Traitement de modification du panier

        header('Location: ' . $_SERVER['BASE_URI'] . '/mon-panier');
    }

    /*
    Avec la méthode GET
    public function deleteProduct($parameters)
    {
        $productId = $parameters['id'];

        // Traitemen de suppression du produit

        header('Location: ' . $_SERVER['BASE_URI'] . '/mon-panier');
    }
    */

    //Avec la méthode POST
    public function deleteProduct()
    {
        // Vérification des données du formulaire en POST

        $productId = intval($_POST['productId']);

        // Traitement de suppression du produit

        header('Location: ' . $_SERVER['BASE_URI'] . '/mon-panier');
    }

    private function show($viewName, $viewVars = [])
    {
        include __DIR__ . '/../views/header.tpl.php';
        // inclusion de vues
        include __DIR__ . '/../views/' . $viewName . '.tpl.php';
        include __DIR__ . '/../views/footer.tpl.php';
    }
}
