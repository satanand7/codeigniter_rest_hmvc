<?php

require_once 'androidNoti.php';



$device_token = 'APA91bGFLu3sw5A-JH9C_k4f5H3Ttxq-UtvcSOINPfVOMVJSW2l2kHpKjLt8faQsvNp57gjj3RlMc7X8DeS_-b150GZVKPa4SsniwKCjA3xtVLJLuY1n-UM';
$message = array('Message' => 'testing noti');
$pushA = new androidNoti();
$gcmRegIds = array();
array_push($gcmRegIds, $device_token);

$pushA->sendChatNotification($gcmRegIds, $message);

