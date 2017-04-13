<?php
/**
 * The template for displaying search results pages.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#search-result
 *
 * @package Sparkle_Store
 */

get_header(); ?>

<?php do_action( 'sparklestore-breadcrumbs' ); ?>

<div class="inner_page">
	<div class="container">
	    <div class="row">
		
		  	<div id="primary" class="content-area">
				<main id="main" class="site-main" role="main">
					<?php
					if ( have_posts() ) : 

						
						/* Start the Loop */
						while ( have_posts() ) : the_post();

							/**
							 * Run the loop for the search to output the results.
							 * If you want to overload this in a child theme then include a file
							 * called content-search.php and that will be used instead.
							 */
							get_template_part( 'template-parts/content', 'search' );

						endwhile;

						the_posts_pagination( 
		            		array(
							    'prev_text' => esc_html__( 'Prev', 'sparklestore' ),
							    'next_text' => esc_html__( 'Next', 'sparklestore' ),
							)
			            );
			            
					else :

						get_template_part( 'template-parts/content', 'none' );

					endif; ?>

				</main>
			</div>
		        
		    <?php get_sidebar(); ?>
	    
	  	</div>

	</div>
</div>

<?php get_footer();