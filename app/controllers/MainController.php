<?php

class MainController extends CoreController
{
    // Page d'accueil
    public function home()
    {
        $this->show('home');
    }

    // Mentions légales
    public function legalNotice()
    {
        $this->show('legal-notice');
    }

    // Conditions générales de vente
    public function termsOfSales()
    {
        $this->show('terms-of-sales');
    }

    // private function show($viewName, $viewVars = [])
    // {
    //     include __DIR__ . '/../views/header.tpl.php';
    //     // inclusion de vues
    //     include __DIR__ . '/../views/' . $viewName . '.tpl.php';
    //     include __DIR__ . '/../views/footer.tpl.php';
    // }
}
