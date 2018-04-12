<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
defined('BASEPATH') OR exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
require_once APPPATH . '/third_party/GCM/androidNoti.php';
require APPPATH . '/libraries/REST_Controller.php';

/**
 * Description of V1
 *
 * @author satanand
 */
class V1 extends REST_Controller {

   
    

    public function __construct() {
		parent::__construct();
 		$this->loadAllModel();
        $this->load->library('multithreading');
     	date_default_timezone_set('UTC');
    }

    private function displayValidation($error) {
        $error = str_replace("</p>", "", $error);
        $error = str_replace("<p>", "", $error);
        $error = str_replace("\n", "", $error);
        return $error;
    }

    public function loadAllModel() {
       
    }

   
   
   

  

}
