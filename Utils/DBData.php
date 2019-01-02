<?php

/**
 * Classe permettant de retourner des données stockées dans la base de données
 */
class DBData {
	/** @var PDO */
	private $dbh;

    /**
     * Constructeur se connectant à la base de données à partir des informations du fichier de configuration
     */
    public function __construct() {
        // Récupération des données du fichier de config
        //   la fonction parse_ini_file parse le fichier et retourne un array associatif
        // Attention, "config.conf" ne doit pas être versionné,
        //   on versionnera plutôt un fichier d'exemple "config.dist.conf" ne contenant aucune valeur
        $configData = parse_ini_file(__DIR__.'/../config.conf');

        try {
            $this->dbh = new PDO(
                "mysql:host={$configData['DB_HOST']};dbname={$configData['DB_NAME']};charset=utf8",
                $configData['DB_USERNAME'],
                $configData['DB_PASSWORD'],
                array(PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING) // Affiche les erreurs SQL à l'écran
            );
        }
        catch(\Exception $exception) {
            echo 'Erreur de connexion...<br>';
            echo $exception->getMessage().'<br>';
            echo '<pre>';
            echo $exception->getTraceAsString();
            echo '</pre>';
            exit;
        }
    }
    /**
     * Méthode permettant de retourner les données sur un produit donné
     *
     * @param int $productId
     * @return Product
     */
    public function getProductDetails($productId) {
        // TODO

        $productDetailsQuery = '
        
        SELECT product.*, brand.name AS brand_name, category.name as category_name
        FROM product
        JOIN brand ON brand.id = product.id_brand
        JOIN category ON category.id = product.id_category
        WHERE product.id='.$productId.'

        ';

        $productDetailsQueryStatement = $this->dbh->query($productDetailsQuery);

        $productDetailsQueryStatement->setFetchMode(
            PDO::FETCH_CLASS,
            'Product'
        );

        $product = $productDetailsQueryStatement->fetch();

        dump($product);

        return $product;
    

    }

    /**
     * Méthode permettant de retourner les données sur une catégorie donnée
     *
     * @param int $categoryId
     * @return Category
     */
    public function getCategoryDetails($categoryId) {
        // TODO

        $categoryQuery = '
	            SELECT *
	            FROM  `category`
	            WHERE id='.$categoryId.'
                ';
                
        $categoryQueryStatement = $this->dbh->query($categoryQuery);

        $categoryQueryStatement->setFetchMode(
            PDO::FETCH_CLASS,
            'Category'
        );

        $category = $categoryQueryStatement->fetch();

        dump($category);

        return $category;
    
    }

    /**
     * Méthode permettant de retourner les données sur une marque donnée
     *
     * @param int $brandId
     * @return Brand
     */
    public function getBrandDetails($brandId) {
        $brandDetailsQuery = '
            SELECT
                `id`,
                `name`,
                `description`,
                `image`,
                `url`,
                `created_at` AS createdAt,
                `updated_at` AS updatedAt
            FROM `brand`
            WHERE `id` = ' . $brandId
        ;

        $brandDetailsQueryStatement = $this->dbh->query($brandDetailsQuery);

        $brandDetailsQueryStatement->setFetchMode(
            PDO::FETCH_CLASS,
            'Brand'
        );

        $brand = $brandDetailsQueryStatement->fetch();

        dump($brand);

        return $brand;
    }

    /**
     * Méthode permettant de retourner les données sur un type de produit donné
     *
     * @param int $typeId
     * @return ProductType
     */
    public function getProductTypeDetails($typeId) {

    // TODO
        $productTypeQuery = '
                    SELECT *
                    FROM  `type`
                    WHERE id='.$typeId.'
                    '
        ;
                
    $productTypeQueryStatement = $this->dbh->query($productTypeQuery);

        $productTypeQueryStatement->setFetchMode(
            PDO::FETCH_CLASS,
            'Product'
        );

        $productDetails = $brandDetailsQueryStatement->fetch();

        dump($productDetails);

        return $productDetails;
    }

    /**
     * Méthode permettant de retourner les 5 catégories sur la page d'accueil
     *
     * @return Category[]
     */
    public function getHomeCategories() {
        // TODO
        $homeCategoriesQuery = '
	            SELECT `id`, `name`, `subtitle`, `picture`
	            FROM `category`
	            WHERE `home_order` > 0
	            ORDER BY `home_order`
	            LIMIT 5
                ';
                
    $homeCategoriesQueryStatement = $this->dbh->query($homeCategoriesQuery);

    $homeCategoriesQueryStatement->setFetchMode(
            PDO::FETCH_CLASS,
            'Category'

        );

        $homeCategories = $brandDetailsQueryStatement->fetch();

        dump($homeCategories);

        return $homeCategories;
    }

    /**
     * Méthode permettant de retourner les 5 marques en bas de page
     *
     * @return Brand[]
     */
    public function getFooterBrands() {
        // TODO

        $FooterBrandsDetailsQuery = '
        SELECT `id`, `name`
	            FROM `brand`
	            WHERE `footer_order` > 0
	            ORDER BY `footer_order`
                LIMIT 5
                '
    ;

    $FooterBrandsDetailsQueryStatement = $this->dbh->query($FooterBrandsDetailsQuery);

    $FooterBrandsDetailsQueryStatement->setFetchMode(
        PDO::FETCH_CLASS,
        'Brand'
    );

    $FooterBrandsDetails = $FooterBrandsDetailsQueryStatement->fetch();

    dump($FooterBrandsDetails);

    return $FooterBrandsDetails;


    }

    /**
     * Méthode permettant de retourner les 5 types de produit en bas de page
     *
     * @return ProductType[]
     */
    public function getFooterProductTypes() {
        // TODO

        $FooterProductTypesQuery = '
        SELECT
        SELECT `id`, `name`
        FROM `brand`
        WHERE `footer_order` > 0
        ORDER BY `footer_order`
        LIMIT 5
        '
    ;

    $FooterProductTypesQueryStatement = $this->dbh->query($FooterProductTypesQuery);

    $FooterProductTypesQueryStatement->setFetchMode(
        PDO::FETCH_CLASS,
        'Product'
    );

    $FooterProductTypes = $FooterProductTypesQueryStatement->fetch();

    dump($FooterProductTypes);

    return $FooterProductTypes;


    }
}
