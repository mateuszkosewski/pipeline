<?php

use Rector\Symfony\Set\SymfonySetList;
use Rector\Doctrine\Set\DoctrineSetList;
use Rector\Config\RectorConfig;
use Rector\Symfony\Set\SensiolabsSetList;
use Rector\Set\ValueObject\LevelSetList;

return static function (RectorConfig $rectorConfig): void {
    $rectorConfig->symfonyContainerXml(__DIR__ . '/var/cache/dev/App_KernelDevDebugContainer.xml');

    $rectorConfig->sets([
        DoctrineSetList::ANNOTATIONS_TO_ATTRIBUTES,
    	SymfonySetList::ANNOTATIONS_TO_ATTRIBUTES,
    	SensiolabsSetList::ANNOTATIONS_TO_ATTRIBUTES,
    ]);
};