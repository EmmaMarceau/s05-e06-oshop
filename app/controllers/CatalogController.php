<?php

class CatalogController extends CoreController
{
    // $parameters contiendra la valeur de $match['params'] créée par AltoRouter
    public function getCategory($parameters)
    {
        //dump($parameters);

        $categoryId = $parameters['id'];

        //dump($categoryId);

        // Initialiser DBData
        $dbData = new DBData;

        // Récupérer les informations de la catégorie
        $category = $dbData->getCategoryDetails($categoryId);

        if ($category) {
            //dump($category);

            $this->show(
                'category',
                [
                    'category' => $category
                ]
            );
        } else {
            // Erreur 404
            http_response_code(404);
            $this->show('404');
        }
    }

    /*
    MEGA BONUS DE LA MORT (avec call_user_func_array)
    public function getCategory($id)
    {
        echo $id;
    }
    */

    public function getType($parameters)
    {
        $typeId = $parameters['id'];

        echo $typeId;
    }

    public function getProduct($parameters)
    {
        $productId = $parameters['id'];

        $dbData = new DBData;

        $product = $dbData->getProductDetails($productId);

        // Je récupère l'ID de la marque associé à mon produit
        $productBrandId = $product->getBrandId();

        // Je récupère les informations de la marque associé à mon produit
        $productBrand = $dbData->getBrandDetails($productBrandId);

        $productCategoryId = $product->getCategoryId();
        $productCategory = $dbData->getCategoryDetails($productCategoryId);

        //dump($product, $productBrand, $productCategory);

        $this->show(
            'product',
            [
                'product' => $product,
                'productBrand' => $productBrand,
                'productCategory' => $productCategory,
            ]
        );
    }
}
