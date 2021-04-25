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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'user' );

/** MySQL database password */
define( 'DB_PASSWORD', 'password' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '|Y&?E%c.02(=GO&Q*DfZ&SQBZY@ix#6kaJf(0mem?1a|yqr5.k1Adox DH{?&o-N' );
define( 'SECURE_AUTH_KEY',  'TTN0-f5m[1a_sG)2::; v.&M?$j?cks;uC1o/*niS:EXVQ587Y;*|hRZ*&cRvAS_' );
define( 'LOGGED_IN_KEY',    'qkPaY0a20d4PZPYTv7a/ioefidiL_Q$:Tf,g{3[TUKP_V-ma]B#AEUN&O(hmOZ.|' );
define( 'NONCE_KEY',        'U`}!z>A lS?8`80XGR-8Y:?^_K}kddT]@GRgWH=81d:(qw^S-tYC6&!Z0&WrsMKb' );
define( 'AUTH_SALT',        '^Y1a1vH(;C&p_hfQ}RMP^!41Nj^Yb[8)/CJmOK+~&wR!OvD$-%e@ga`9df@E$%Wc' );
define( 'SECURE_AUTH_SALT', '6{p8/ m!R.U3L/kCzHsp<<iZ>RTL17OlBE5`CGfL9f1aeS@K$OYJK{FlymNbo&P ' );
define( 'LOGGED_IN_SALT',   ' iEl&S(Nv{lHXp$+s(@#W DCSfI=UaPx&72tJy3s.{6gU(j X`[S0x2Gs>c]W7kF' );
define( 'NONCE_SALT',       'iK-kNf%/d%=Ca%<(_/nL]F3nN`c++J[^J1joe]>}nLX=0_a(e+D5wq%*bX>O]v/k' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

