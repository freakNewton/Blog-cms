<?php
/**
 * Created by PhpStorm.
 * User: Himanshu
 * Date: 12/27/2018
 * Time: 2:24 PM
 */
include_once ("admin_functions.php");
if(isset($_GET['cat_id'])){
    $cat_id = $_GET['cat_id'];
    delete("categories", "cat_id = $cat_id");
    header("Location: ../categories.php");
}