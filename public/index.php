<?php
// FrontController

// Inclusion de nos dépendances provenant de composer
require __DIR__ . '/../vendor/autoload.php';

require __DIR__.'/../Utils/DBData.php';

include __DIR__ . '/../app/helper/path.php';
include __DIR__ . '/../app/controllers/MainController.php';
include __DIR__ . '/../app/controllers/CatalogController.php';
include __DIR__ . '/../app/controllers/CartController.php';
include __DIR__ . '/../app/controllers/ErrorController.php';

include __DIR__ . '/../app/models/CoreModel.php';
include __DIR__ . '/../app/models/Brand.php';
include __DIR__ . '/../app/models/Category.php';
include __DIR__ . '/../app/models/Product.php';
include __DIR__ . '/../app/models/Type.php';

// On instancie la classe AltoRouter
$router = new AltoRouter();

// On a fait en sorte d'automatiser grâce à notre .htaccess (lignes 6 et 7) la génération de $_SERVER['BASE_URI']. On appelle la méthode setBasePath pour éviter de répéter dans toutes nos routes le chemins complet cad dans mon cas : /cours/nova/s05/s05-e03-oshop-thibautmassetstiegler/public
$router->setBasePath($_SERVER['BASE_URI']);

/*
On utilise la méthode map d'AltoRouter qui nous permet d'ajouter de nouvelles routes. AltoRouter va analyser la requête HTTP que l'on a reçu pour ensuite nous dire quelle route correpond à la requête HTTP.

La méthode map a trois paramètres obligatoires et un optionnel, dans l'ordre :
- méthode HTTP (GET ou POST)
- la route
- la cible (target)
- (optionnel) le nom de la route
*/
$router->map('GET', '/', 'MainController#home', 'home');
$router->map('GET', '/mentions-legales', 'MainController#legalNotice', 'legal_notice');
$router->map('GET', '/cgv', 'MainController#termsOfSales', 'cgv');
// Avec AltoRouter, on peut définir des valeurs dynamiques dans nos routes que l'on récupérera dans l'index params du tableau associatif retourné par la méthode match
$router->map('GET', '/catalogue/categorie/[i:id]', 'CatalogController#getCategory', 'category_single');
$router->map('GET', '/catalogue/type/[i:id]', 'CatalogController#getType', 'type_single');
$router->map(
    'GET',
    '/catalogue/produit/[i:id]',
    'CatalogController#getProduct',
    'product_single'
);
$router->map(
    'GET',
    '/mon-panier',
    'CartController#getCart',
    'cart_single'
);
$router->map(
    'POST',
    '/ajout-panier',
    'CartController#addProduct',
    'cart_add_product'
);
$router->map(
    'POST',
    '/modif-panier',
    'CartController#updateCart',
    'cart_update'
);
/*
Selon la correction des routes :
$router->map(
    'GET',
    '/supp-product-panier/[i:id]',
    'CartController#deleteProduct',
    'cart_delete_product'
);
*/
$router->map(
    'POST',
    '/supp-product-panier',
    'CartController#deleteProduct',
    'cart_delete_product'
);

//dump($router->generate('cart_single'));


/*
La méthode match va analyser chaque route afin de retourner la route correspondant à notre requête HTTP
Cette méthode va nous retourner un tableau associatif :
- target (celle definie lors de la création de la route avec map)
- params ???
- name (celui défini lors de la création de la route avec map)
*/
$match = $router->match();

//dump($match);

// Si la méthode match retourne false, aucune route ne correspond à la requête HTTP reçue => erreur 404
if ($match === false) {
    $controllerName = 'ErrorController';
    $methodName = 'page404';
} else {
    /*
    Nous avons fait en sorte d'avoir dans la target (lors de la configuration avec map) une chaîne de caractères contenant NomDuController#NomDeLaMethode de manière à pouvoir la découper avec explode
    @link http://php.net/explode
    */
    $dispatcherInformations = explode('#', $match['target']);

    // Ici, je récupère les informations provenant de la découper de mon target présent dans la variable $dispatcherInformations
    $controllerName = $dispatcherInformations[0];
    $methodName = $dispatcherInformations[1];
}

// En PHP, on peut instancier une classe à partir d'une variable si elle contient un nom de classe existant
$controller = new $controllerName();

// En PHP, on peut appeler une méthode à partir d'une variable si elle contient un nom de méthode existant dans l'instance que l'on manipule
$controller->$methodName($match['params']);

// MEGA BONUS DE LA MORT !!!!!! On peut voir du côté de call_user_func_array
//call_user_func_array([$controller, $methodName], $match['params']);

//dump($match, $dispatcherInformations, $controllerName, $methodName, $controller);
