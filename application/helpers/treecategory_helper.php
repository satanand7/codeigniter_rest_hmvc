<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

if (!function_exists('createCatTree')) {

    function createCatTree($categories = array()) {
        //$categories = json_decode(json_encode($categories));
        return buildTree($categories);

        // return $var;
    }

    function buildTree(array $elements, $parentId = 0) {
        $branch = array();

        foreach ($elements as $element) {
            if ($element['parent_id'] == $parentId) {
                $children = buildTree($elements, $element['category_id']);
                if ($children) {
                    $element['children'] = $children;
                }
                $branch[] = $element;
            }
        }

        return $branch;
    }

}


if (!function_exists('printTree')) {

    function printTree($categories = array(), $r = 0, $p = null) {
        foreach ($categories as $i => $t) {
            $dash = ($t['parent_id'] == 0) ? '' : str_repeat('-', $r) . ' ';
            printf("\t<option value='%d'>%s%s</option>\n", $t['category_id'], $dash, $t['category']);
            if ($t['parent_id'] == $p) {
                // reset $r
                $r = 0;
            }
            if (isset($t['children'])) {
                printTree($t['children'], ++$r, $t['parent_id']);
            }
        }
    }

}

if (!function_exists('clean')) {

    function clean($string) {
        $string = str_replace(' ', '_', $string); // Replaces all spaces with hyphens.

        return preg_replace('/[^A-Za-z0-9\_]/', '', $string); // Removes special chars.
    }

}