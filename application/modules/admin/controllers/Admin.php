<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Admin
 *e
 * @author prashant
 */
class Admin extends MY_Controller{
    //put your code here
    public function __construct() {
        parent::__construct();
    }
    
    
    public function index() {
        $this->load->view("admin/index");
    }
    
    
    
}
