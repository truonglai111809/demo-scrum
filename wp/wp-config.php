<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'ttlai');

/** MySQL database username */
define('DB_USER', 'ttlai');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '0:_EwTU_!RB2C,|n#m!$!@~4<|;$f-OwY<1@30cr.JTT5Ley`DuP8oGDxXl<2LKB');
define('SECURE_AUTH_KEY',  'c,9=-UTL>PvMKv^;qA9S^_<ZvO8ROQ_jk`4]g{5DLSu2;]a^@^N5 3e*!(~{@)4{');
define('LOGGED_IN_KEY',    '2p~G}w4;/YG&4JU)RQm8L?6=!F@h,BJ:duaQ_(G7A-0[A!Bd1*d@IIv/p$FE[))|');
define('NONCE_KEY',        'vtNmd%p.Sx{ECOF>X4(,=W!KM&>@9=T],$(2I hwBVQgLsuNS54Tq?HXl{gpiDdb');
define('AUTH_SALT',        'y<zv2eX|`}v<;uVc$p?Y/Fun/,+71/~JF|l^,<}9DARHpy]KVO$PBT-U$3HE%w7z');
define('SECURE_AUTH_SALT', '2v>g-8E,!l?E0AT|vO#&k57/upS|6@PXkp>& 2K9!K [j+3B3bB%3EGr*X$ovOw^');
define('LOGGED_IN_SALT',   'N&4q/hG+Z1:j.82e-!m3P|8 Q$BBtjr?adoX+SC^3Oq9bW=stML#,0P.QK8PK6?%');
define('NONCE_SALT',       ',W.tC:BPg^rYbt+x{}m+#N^Z`3I=kY(Fu3z_5Pl{oLJAY]bEdq!Tm|Ko:eRz{FK.');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
