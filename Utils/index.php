<?php

require __DIR__ . '/../vendor/autoload.php';
require __DIR__ . '/../app/models/CoreModel.php';
require __DIR__ . '/../app/models/Brand.php';
require __DIR__ . '/../app/models/Category.php';
require __DIR__ . '/../app/models/Product.php';
require __DIR__ . '/../app/models/Type.php';

require __DIR__ . '/../Utils/DBData.php';

$dbData = new DBData();

$brand2 = $dbData->getBrandDetails(2);
$brand1 = $dbData->getBrandDetails(1);

dump($brand2, $brand1);

$product1 = $dbData->getProductDetails(1);

dump($product1);

$FooterBrandsDetails = $dbData->getFooterBrands();
dump($FooterBrandsDetails);

$FooterProductTypes = $dbData->getFooterProductTypes();
dump($FooterProductTypes);

$homeCategories = $dbData->getHomeCategories();
$productDetails = $dbData->getProductTypeDetails();