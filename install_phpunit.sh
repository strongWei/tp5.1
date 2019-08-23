#!/bin/bash
#
# @fileName install_phpunit.sh
# @author strong
# @email 1025155365@qq.com
# @description: automatic integrate phpunit-8.x to thinkphp-5.1.x
PATH=/usr/local/bin
export $PATH

composer require phpunit/phpunit=^8 --dev
composer require symfony/dom-crawler=^2.8.8 --dev
composer require topthink/think-helper

mkdir tests

#手动添加composer.json
#"autoload": {
#    "psr-4": {
#        "app\\": "application",
#        "tests\\": "tests",
#        "think\\": "thinkphp/library/think",
#        "traits\\": "thinkphp/library/traits"
#    }
#}
function changeComposerJson()
{
  # TODO:
}

changeComposerJson 
composer update

#手动创建 phpunit.xml
mkdir -p temp && cd temp
composer init  && composer require topthink/think-testing

cp -a vendor/topthink/think-testing/src/* ../tests
cd ..
rm -rf tests/config.php tests/command /temp


#将test文件夹的php文件的命名空间修改



