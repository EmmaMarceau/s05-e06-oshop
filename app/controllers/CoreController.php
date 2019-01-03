<?php

class CoreController
{
    /**
     * @var AltoRouter
     */
    protected $router;

    /**
     * @param AltoRouter $router
     */
    public function __construct($router)
    {
        $this->router = $router;
    }

    /**
     * @param string $viewName Le nom de la vue
     * @param array $viewVars La liste des données à envoyer à la vue
     */
    protected function show($viewName, $viewVars = [])
    {

        // On passe l'objet router à la vue comme ça on peut l'utiliser pour faire $router->generate(). C'est pour donner accès au router dans mes vues

        $viewVars['router'] = $this->router;

        include __DIR__ . '/../views/header.tpl.php';
        // inclusion de vues
        include __DIR__ . '/../views/' . $viewName . '.tpl.php';
        include __DIR__ . '/../views/footer.tpl.php';
    }
}
