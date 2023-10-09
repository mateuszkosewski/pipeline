<?php

require __DIR__ . '/vendor/autoload.php';

try {
    $dbh = new PDO('mysql:host=localhost;dbname=cematic', 'root', 'roots');
    print 'Connection correct!';
} catch (PDOException $e) {
    print 'Failed to connect to DB!';
    return 1;
}

#$lipsum = new joshtronic\LoremIpsum();
#print '5 words: ' . $lipsum->words(5);
