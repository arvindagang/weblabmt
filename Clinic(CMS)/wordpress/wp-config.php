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
define('DB_NAME', 'webtechlab');

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
define('AUTH_KEY',         '8}3kBgHs+}=0 FaFYFfnEN7sj_}NLxr{/@!^(J,m]LpslSrM-eH`JzIxLB=Gxr=d');
define('SECURE_AUTH_KEY',  '1q))oX[E6{%qn=!Vw&8n+P0}(RPD4SOjd7LIg+kx^n:7w0-3yiZdvegJLhm1EvPQ');
define('LOGGED_IN_KEY',    'UtTBSiB_R[1,_0|kV>0,=cW-K&o1OxsbNNhX5<&<Y0&2v6nS^]4s`2FJ#T9d8xif');
define('NONCE_KEY',        'LnW%v:uFL<9F0/_tvQ3~$h{)hrnSB(o@{]tK#1O[5#4RNv6luNSe*p%@%$ e4c>i');
define('AUTH_SALT',        'lkvkRNn~ITw>Bpa]l9CE=YE8l=+=Bqa9Vs,6jy$=om}HN[tcfZt(J;2E0?4lzeSP');
define('SECURE_AUTH_SALT', 'hPYnQ[i4:5.iu_LCN)a%K[@nDcH65m$r}B4B.9W127yy!Fs@%!(}/={3J*_7%kEy');
define('LOGGED_IN_SALT',   '9XLvfJnBUN35:==Ln+8:ez0ff$JC^:QtGk1F|IXYC%(H2Ww8T.WUb2Y7jbE>/WpF');
define('NONCE_SALT',       'C1Ulr>Wyn(Kw#J4_V?{Upd~^*p|3-BYTsg;wJ{hXTyViKZ>%N;Eshd+A1[j$m99_');

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
