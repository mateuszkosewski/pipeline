<?php

namespace App\Controller;

use App\Entity\Product;
use App\Repository\ProductRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class LuckyController extends AbstractController
{
    #[Route('/product/{productId}', name: 'app_product')]
    public function number(EntityManagerInterface $entityManager, int $productId): Response
    {
        $product = new Product();
        $product->setPrice(100);
        $product->setName('Test');
        $entityManager->persist($product);
        $entityManager->flush();

        $product = $entityManager->getRepository(Product::class)->findOneBy(['id' => $productId]);

        return new Response('Product is ' . $product->getId() . ' with name ' . $product->getName() . ' and price ' . $product->getPrice());
    }
}