<?php
/**
 * Plugin Name: My plugin name
 * Plugin URI: https://my-plugin.com
 * Description: My plugin description
 * Version: 1.0.0
 * Author: wordpress
 * License URI: license.txt
 * Tested up to: 5.6
*/

if ( ! defined('ABSPATH')) {
  exit;
}

define('MY_PLUGIN_PLUGIN_URL', plugin_dir_url(__FILE__));
define('MY_PLUGIN_PLUGIN_ENTRY', __FILE__);
define('MY_PLUGIN_PLUGIN_DIR', plugin_dir_path(__FILE__));
define('MY_PLUGIN_TRANSLATE_DOMAIN', 'my-plugin-l10n');

include_once 'autoload.php';
include_once 'globals.php';