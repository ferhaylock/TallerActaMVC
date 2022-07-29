<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit2e03a9af7cc34806bf251e83bf6f2213
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit2e03a9af7cc34806bf251e83bf6f2213::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit2e03a9af7cc34806bf251e83bf6f2213::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit2e03a9af7cc34806bf251e83bf6f2213::$classMap;

        }, null, ClassLoader::class);
    }
}