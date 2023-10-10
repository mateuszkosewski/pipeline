<?php

namespace Tests;

use Symfony\Bundle\FrameworkBundle\Test\KernelTestCase;
use Symfony\Component\Panther\Client;
use Symfony\Component\Panther\DomCrawler\Crawler;

class BaseBrowserTest extends KernelTestCase {

	/*
  	 * @return void
     */
	public function testSomething(): void
    {
    	$client = Client::createChromeClient();

    	//$client->request('GET', 'http://dimatiapi-local.vm');
		// $text = $crawler->filter('body')->text();

		// self::assertEquals('OK!', $text);
    }
}