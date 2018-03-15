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
define('DB_NAME', 'webtechmt');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

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
define('AUTH_KEY',         'QN`C#!t&Suu$jE~i* E_iT~G&U_KKVO:*Vmv!7Xo)]x2:L|CK8-*3K?T{PiLHilR');
define('SECURE_AUTH_KEY',  'Q1zkfRsC>(gvgGMiMRM4n(KC:%!JYZ&`=v~,fFw3o| bZ5pz8H,P?xh%&rxOS*-H');
define('LOGGED_IN_KEY',    'sYB^HH5Cz,u~o.ZFo/FcLRb,FYGLCHRhmjW=sLYs.PUOA&by]VlBKZ2}L<)^FnY]');
define('NONCE_KEY',        'ef)}YNDmagf@iCLnGzAhE]}b0~4!4$ v-D{z/2nd1R-{t.5DMW9=cyP*pEO=^e:$');
define('AUTH_SALT',        '(X[XlnM=._{bCaZhXH42fLInRks*cd}nL9I:8!4k{I1J53e>D:mk!Y2ZAhEIi=)4');
define('SECURE_AUTH_SALT', 'd#TxGNvdqluL)Uf]MhY2.m`Cf{>gwLj,-PyS*?@Q3RQ~XAmf(Q}3*Q_]MkOS]~0W');
define('LOGGED_IN_SALT',   'KXO=,yKQ%qhy[Vk{WR/Z)F3T<M^ 3,:NHt>)*k.-Np8wjHbE0w5PrR{Ec7T_3GrS');
define('NONCE_SALT',       '<7pT8ooZ1Ma[:|]*SJ|a,O4nN,}WQGL<INdoF;0R+XqPHH#F+,NZJ> 7a;Ow4b]+');

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
