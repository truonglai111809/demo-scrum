<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Sparkle_Store
 */

	do_action( 'sparklestore_footer_before');	

		/**
		 * @see  sparklestore_footer_widget_area() - 10
		*/
		do_action( 'sparklestore_footer_widget');


    	/**
    	 * Top Footer Area
    	 * Two different filters
    	 * @see  sparklestore_social_links() - 5
    	 * @see  sparklestore_payment_logo() - 10
    	*/
    	do_action( 'sparklestore_top_footer');

    	/**
    	 * Bottom Footer Area
    	 * @social icon filters : sparklestore_footer_menu() - 5
    	*/
    	do_action( 'sparklestore_bottom_footer');  
    
     do_action( 'sparklestore_footer_after');	 
?>	    

</div><!-- #page -->

<a href="#" class="scrollup">
	<i class="fa fa-angle-up" aria-hidden="true"></i>

</a>

<?php wp_footer(); ?>
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3833.7487133979116!2d108.21043803336889!3d16.078524519318687!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2s!4v1487059599909" width="1500" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
</body>

</html>
