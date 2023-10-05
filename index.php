<?php

require __DIR__ . '/vendor/autoload.php';

$lipsum = new joshtronic\LoremIpsum();
print '5 words: ' . $lipsum->words(5);