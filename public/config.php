<?php
switch ($_SERVER['SERVER_ADDR'])
    {
        //Ambiente Local
        case '127.0.0.1':
        	// HTTP
			define('HTTP_SERVER', 'http://santalolita.com.br/');

			// HTTPS
			define('HTTPS_SERVER', 'http://santalolita.com.br/');

			// DIR
			define('DIR_APPLICATION', '/Users/fernandomendes/github/santalolita/public/catalog/');
			define('DIR_SYSTEM', '/Users/fernandomendes/github/santalolita/public/system/');
			define('DIR_DATABASE', '/Users/fernandomendes/github/santalolita/public/system/database/');
			define('DIR_LANGUAGE', '/Users/fernandomendes/github/santalolita/public/catalog/language/');
			define('DIR_TEMPLATE', '/Users/fernandomendes/github/santalolita/public/catalog/view/theme/');
			define('DIR_CONFIG', '/Users/fernandomendes/github/santalolita/public/system/config/');
			define('DIR_IMAGE', '/Users/fernandomendes/github/santalolita/public/image/');
			define('DIR_CACHE', '/Users/fernandomendes/github/santalolita/public/system/cache/');
			define('DIR_DOWNLOAD', '/Users/fernandomendes/github/santalolita/public/download/');
			define('DIR_LOGS', '/Users/fernandomendes/github/santalolita/public/system/logs/');

			// DB
			define('DB_DRIVER', 'mysql');
			define('DB_HOSTNAME', 'localhost');
			define('DB_USERNAME', 'root');
			define('DB_PASSWORD', 'root');
			define('DB_DATABASE', 'santalolita');
			define('DB_PREFIX', 'oc_');
			break;

		default:
			// HTTP
			define('HTTP_SERVER', 'http://santalolita.com.br/');

			// HTTPS
			define('HTTPS_SERVER', 'http://santalolita.com.br/');

			// DIR
			define('DIR_APPLICATION', '/srv/httpd/santalolita.com.br/public/catalog/');
			define('DIR_SYSTEM', '/srv/httpd/santalolita.com.br/public/system/');
			define('DIR_DATABASE', '/srv/httpd/santalolita.com.br/public/system/database/');
			define('DIR_LANGUAGE', '/srv/httpd/santalolita.com.br/public/catalog/language/');
			define('DIR_TEMPLATE', '/srv/httpd/santalolita.com.br/public/catalog/view/theme/');
			define('DIR_CONFIG', '/srv/httpd/santalolita.com.br/public/system/config/');
			define('DIR_IMAGE', '/srv/httpd/santalolita.com.br/public/image/');
			define('DIR_CACHE', '/srv/httpd/santalolita.com.br/public/system/cache/');
			define('DIR_DOWNLOAD', '/srv/httpd/santalolita.com.br/public/download/');
			define('DIR_LOGS', '/srv/httpd/santalolita.com.br/public/system/logs/');

			// DB
			define('DB_DRIVER', 'mysql');
			define('DB_HOSTNAME', 'localhost');
			define('DB_USERNAME', 'santalolita');
			define('DB_PASSWORD', 'jw77HS2f6');
			define('DB_DATABASE', 'santalolita');
			define('DB_PREFIX', 'oc_');
			break;
	}
?>

