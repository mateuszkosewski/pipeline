<?php

namespace Tests;

use Symfony\Bundle\FrameworkBundle\Test\KernelTestCase;
use Symfony\Component\Panther\Client;

class BaseBrowserTest extends KernelTestCase {

	public function testSomething(): void
    {
    	$client = Client::createChromeClient();
		$crawler = $client->request('GET', 'http://dimatiapi-local.vm');
		$text = $crawler->filter('body')->text();

		self::assertEquals('OK!', $text);
    }
}