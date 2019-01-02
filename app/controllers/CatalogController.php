<?php

class CatalogController
{
    // $parameters contiendra la valeur de $match['params'] créée par AltoRouter
    public function getCategory($parameters)
    {
        //dump($parameters);

        $categoryId = $parameters['id'];

        $this->show('category');
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

        $this->show('product');
    }

    private function show($viewName, $viewVars = [])
    {
        include __DIR__ . '/../views/header.tpl.php';
        // inclusion de vues
        include __DIR__ . '/../views/' . $viewName . '.tpl.php';
        include __DIR__ . '/../views/footer.tpl.php';
    }
}
