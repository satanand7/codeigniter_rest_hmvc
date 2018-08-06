<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * 
 */

class MY_Form_validation extends CI_Form_validation {

   /**
    * 
    * @param type $module
    * @param type $group
    * @return type
    * over ride parent class method that can help to work with custom callback function for validation
    */
    
    function run($module = '', $group = '') {
        (is_object($module)) AND $this->CI = &$module;
        return parent::run($group);
    }
    
    /**
     * 
     * @return type
     * this function is going to help for unset validation data and then we can assign new validation for data.
     */

    public function clear_field_data() {
        $this->_field_data = array();
        return;
    }

}
