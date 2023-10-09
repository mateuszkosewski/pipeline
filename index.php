<?php

require __DIR__ . '/vendor/autoload.php';

try {
    $dbh = new PDO('mysql:host=127.0.0.1;port=3306;dbname=pipeline', 'root', 'root');
    print 'Connection correct!';
} catch (PDOException $e) {
    print 'Failed to connect to DB!';
    return 1;
}

#$lipsum = new joshtronic\LoremIpsum();
#print '5 words: ' . $lipsum->words(5);
