<?php
/*
Plugin Name: Contact Form 7 - TinyMCE HTML Editor on mail area
Plugin URI: http://laurence.co.za
Description: Toggle the TinyMCE Editor when editing your forms in Contact Form 7.
Author: Laurence Tuck
Version: 0.8
Author URI: http://www.laurence.co.za
*/

// toggle editor script
add_action( 'admin_enqueue_scripts', 'add_toggle_editor_script' );
add_action("admin_head","cf7_html_editor");

/// load neccesary scripts
function add_toggle_editor_script( $hook ) {    
    if (isset( $_GET['page'] ) && $_GET['page'] == 'wpcf7' && isset( $_GET['post'] )) {
        add_filter('tiny_mce_before_init','my_mceinit');      
        // needs jquery
        wp_enqueue_script( 'jquery' );
        wp_enqueue_script( 'tinymce' );
        // load toggle function
        wp_enqueue_script( 'toggletinymce', plugin_dir_url( __FILE__ ) . 'js/toggleEditor.js' );                 
    }
}

// load tinyMCE
function cf7_html_editor(){
    if (isset( $_GET['page'] ) && $_GET['page'] == 'wpcf7' && isset( $_GET['post'] )) {  
        // hide the editor
        echo "<style>#wp-hidden_editor-wrap{display:none;visibility:hidden;width:0;height:0;margin-left:-9999px;position: absolute;}.edit_toggle_left{float:left;}.edit_toggle_right{float:right;}</style>";  
        // load TINYMCE so we can use wordpress tinymce instance        
        wp_editor( '', 'hidden_editor' );
    }   
}

// tinymce apply source formatting
function my_mceinit($init) {
  $init['apply_source_formatting'] = true;
}