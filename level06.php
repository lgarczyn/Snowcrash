#!/usr/bin/php
<?php
function y($m) {
    // . -> x
    $m = preg_replace("/\./", " x ", $m);
    // @ -> y
    $m = preg_replace("/@/", " y", $m);
    return $m;
}
function x($y, $z) {
    // read file
    $a = file_get_contents($y);
    // [x (*)] -> y("*")
    $a = preg_replace("/(\[x (.*)\])/e", "y(\"\\2\")", $a);
    // [] -> ()
    $a = preg_replace("/\[/", "(", $a);
    $a = preg_replace("/\]/", ")", $a);
    return $a;
}
$r = x($argv[1], $argv[2]);
print $r;
?>
