<?php

class MY_Controller extends MX_Controller{
    public function __construct() {
        parent::__construct();
        $this->load->module('layout');
        //$this->load->module('merchant');
        $this->load->helper('Treecategory');
        $this->load->library('form_validation');
        date_default_timezone_set('UTC');
    }
    
    const SIGNUP="User signed up successfully. Please login.";//change by testing team(Heena)
    const PASSWORD_RESET_LINK="Password reset link has been sent to your email address";
    const WENTWRONG="Something went wrong";
    const LOGINFAILD="Invalid username or password";
    const NOT_REGISTER="Email address does not exist";
    const LOGIN="Login successful";
    const LOGOUT="Logout successful";
    const NOTFOUND="No record found";
    
    
    
    
}