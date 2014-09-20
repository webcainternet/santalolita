SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(15, 'slideshow', 1),
(16, 'banners', 1),
(18, 'content-banner', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=328 ;

--
-- Dumping data for table `banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`) VALUES
(314, 15, 'index.php?route=product/product&amp;product_id=28', 'data/slide-1.jpg'),
(326, 16, 'index.php?route=product/product&amp;product_id=28', 'data/banner-1.jpg'),
(325, 16, 'index.php?route=product/product&amp;product_id=29', 'data/banner-2.jpg'),
(324, 16, 'index.php?route=product/product&amp;product_id=32', 'data/banner-3.jpg'),
(315, 15, 'index.php?route=product/product&amp;product_id=29', 'data/slide-3.jpg'),
(316, 15, 'index.php?route=product/product&amp;product_id=32', 'data/slide-2.jpg'),
(327, 18, 'index.php?route=product/product&amp;product_id=28', 'data/banner-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`, `description`) VALUES
(326, 2, 16, '', '&lt;h1&gt;Black Tea&lt;/h1&gt;\r\nlertyarssety kertyace aseteras aplicaboes kerti.\r\n&lt;i class=&quot;icon-angle-right&quot;&gt;&lt;/i&gt;'),
(326, 1, 16, '', '&lt;h1&gt;Black Tea&lt;/h1&gt;\r\nlertyarssety kertyace aseteras aplicaboes kerti.\r\n&lt;i class=&quot;icon-angle-right&quot;&gt;&lt;/i&gt;'),
(325, 4, 16, '', '&lt;h1&gt;Green Tea&lt;/h1&gt;\r\nlertyarssety kertyace aseteras aplicaboes kerti.\r\n&lt;i class=&quot;icon-angle-right&quot;&gt;&lt;/i&gt;'),
(325, 3, 16, '', '&lt;h1&gt;Green Tea&lt;/h1&gt;\r\nlertyarssety kertyace aseteras aplicaboes kerti.\r\n&lt;i class=&quot;icon-angle-right&quot;&gt;&lt;/i&gt;'),
(325, 2, 16, '', '&lt;h1&gt;Green Tea&lt;/h1&gt;\r\nlertyarssety kertyace aseteras aplicaboes kerti.\r\n&lt;i class=&quot;icon-angle-right&quot;&gt;&lt;/i&gt;'),
(325, 1, 16, '', '&lt;h1&gt;Green Tea&lt;/h1&gt;\r\nlertyarssety kertyace aseteras aplicaboes kerti.\r\n&lt;i class=&quot;icon-angle-right&quot;&gt;&lt;/i&gt;'),
(324, 4, 16, '', '&lt;h1&gt;Tea Blends&lt;/h1&gt;\r\nlertyarssety kertyace aseteras aplicaboes kerti.\r\n&lt;i class=&quot;icon-angle-right&quot;&gt;&lt;/i&gt;'),
(324, 3, 16, '', '&lt;h1&gt;Tea Blends&lt;/h1&gt;\r\nlertyarssety kertyace aseteras aplicaboes kerti.\r\n&lt;i class=&quot;icon-angle-right&quot;&gt;&lt;/i&gt;'),
(324, 2, 16, '', '&lt;h1&gt;Tea Blends&lt;/h1&gt;\r\nlertyarssety kertyace aseteras aplicaboes kerti.\r\n&lt;i class=&quot;icon-angle-right&quot;&gt;&lt;/i&gt;'),
(324, 1, 16, '', '&lt;h1&gt;Tea Blends&lt;/h1&gt;\r\nlertyarssety kertyace aseteras aplicaboes kerti.\r\n&lt;i class=&quot;icon-angle-right&quot;&gt;&lt;/i&gt;'),
(314, 1, 15, '', ''),
(314, 2, 15, '', ''),
(314, 3, 15, '', ''),
(314, 4, 15, '', ''),
(315, 1, 15, '', ''),
(315, 2, 15, '', ''),
(315, 3, 15, '', ''),
(315, 4, 15, '', ''),
(316, 1, 15, '', ''),
(316, 2, 15, '', ''),
(316, 3, 15, '', ''),
(316, 4, 15, '', ''),
(326, 3, 16, '', '&lt;h1&gt;Black Tea&lt;/h1&gt;\r\nlertyarssety kertyace aseteras aplicaboes kerti.\r\n&lt;i class=&quot;icon-angle-right&quot;&gt;&lt;/i&gt;'),
(326, 4, 16, '', '&lt;h1&gt;Black Tea&lt;/h1&gt;\r\nlertyarssety kertyace aseteras aplicaboes kerti.\r\n&lt;i class=&quot;icon-angle-right&quot;&gt;&lt;/i&gt;'),
(327, 1, 18, '', ''),
(327, 2, 18, '', ''),
(327, 3, 18, '', ''),
(327, 4, 18, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=485 ;

--
-- Dumping data for table `extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(468, 'module', 'latest'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(445, 'module', 'filter'),
(464, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(444, 'module', 'featured'),
(442, 'module', 'carousel'),
(440, 'module', 'banner'),
(467, 'module', 'information'),
(465, 'module', 'affiliate'),
(466, 'module', 'bestseller'),
(463, 'module', 'category'),
(456, 'module', 'newcarousel'),
(449, 'module', 'special'),
(450, 'module', 'store'),
(481, 'shipping', 'free'),
(483, 'module', 'compare'),
(484, 'module', 'manufacturer');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4481 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(4474, 0, 'newcarousel', 'newcarousel_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:2:"15";s:5:"width";s:3:"670";s:6:"height";s:3:"599";s:9:"layout_id";s:1:"1";s:8:"position";s:6:"header";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(3047, 0, 'flat', 'flat_sort_order', '1', 0),
(3046, 0, 'flat', 'flat_status', '1', 0),
(3045, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(3044, 0, 'flat', 'flat_tax_class_id', '9', 0),
(4475, 0, 'featured', 'product', 'Ecco enswom sucaal', 0),
(4476, 0, 'featured', 'featured_product', '35,33,45,36', 0),
(4477, 0, 'featured', 'featured_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"4";s:11:"image_width";s:3:"180";s:12:"image_height";s:3:"180";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(3043, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(3794, 0, 'account', 'account_module', 'a:7:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:1;a:4:{s:9:"layout_id";s:1:"4";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:2;a:4:{s:9:"layout_id";s:2:"11";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:3;a:4:{s:9:"layout_id";s:1:"5";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:4;a:4:{s:9:"layout_id";s:1:"9";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:5;a:4:{s:9:"layout_id";s:1:"7";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:6;a:4:{s:9:"layout_id";s:1:"8";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(4462, 0, 'special', 'special_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"4";s:11:"image_width";s:3:"180";s:12:"image_height";s:3:"180";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(4436, 0, 'config', 'config_seo_url', '0', 0),
(4437, 0, 'config', 'config_file_extension_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(4133, 0, 'compare', 'compare_module', 'a:2:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:1;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(3789, 0, 'affiliate', 'affiliate_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(4134, 0, 'filter', 'filter_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(3579, 0, 'information', 'information_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(4417, 0, 'config', 'config_ftp_root', '', 0),
(4418, 0, 'config', 'config_ftp_status', '0', 0),
(4419, 0, 'config', 'config_mail_protocol', 'mail', 0),
(4420, 0, 'config', 'config_mail_parameter', '', 0),
(4421, 0, 'config', 'config_smtp_host', '', 0),
(4422, 0, 'config', 'config_smtp_username', '', 0),
(4423, 0, 'config', 'config_smtp_password', '', 0),
(4424, 0, 'config', 'config_smtp_port', '25', 0),
(4425, 0, 'config', 'config_smtp_timeout', '5', 0),
(4426, 0, 'config', 'config_alert_mail', '0', 0),
(4427, 0, 'config', 'config_account_mail', '0', 0),
(4428, 0, 'config', 'config_alert_emails', '', 0),
(4429, 0, 'config', 'config_fraud_detection', '0', 0),
(4430, 0, 'config', 'config_fraud_key', '', 0),
(4431, 0, 'config', 'config_fraud_score', '', 0),
(4432, 0, 'config', 'config_fraud_status_id', '7', 0),
(4433, 0, 'config', 'config_secure', '0', 0),
(4434, 0, 'config', 'config_shared', '0', 0),
(4435, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwget\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(4416, 0, 'config', 'config_ftp_password', '', 0),
(4415, 0, 'config', 'config_ftp_username', '', 0),
(4414, 0, 'config', 'config_ftp_port', '21', 0),
(4413, 0, 'config', 'config_ftp_host', '192.168.9.2', 0),
(1427, 0, 'carousel', 'carousel_module', 'a:1:{i:0;a:9:{s:9:"banner_id";s:2:"14";s:5:"limit";s:1:"5";s:6:"scroll";s:1:"3";s:5:"width";s:2:"80";s:6:"height";s:2:"80";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(4480, 0, 'latest', 'latest_module', 'a:4:{i:0;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"180";s:12:"image_height";s:3:"180";s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:1;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"180";s:12:"image_height";s:3:"180";s:9:"layout_id";s:1:"4";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:2;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"180";s:12:"image_height";s:3:"180";s:9:"layout_id";s:1:"9";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:3;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"180";s:12:"image_height";s:3:"180";s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(4412, 0, 'config', 'config_image_cart_height', '47', 0),
(4411, 0, 'config', 'config_image_cart_width', '47', 0),
(4410, 0, 'config', 'config_image_wishlist_height', '47', 0),
(4409, 0, 'config', 'config_image_wishlist_width', '47', 0),
(4408, 0, 'config', 'config_image_compare_height', '90', 0),
(4407, 0, 'config', 'config_image_compare_width', '90', 0),
(4406, 0, 'config', 'config_image_related_height', '170', 0),
(4405, 0, 'config', 'config_image_related_width', '170', 0),
(4404, 0, 'config', 'config_image_additional_height', '70', 0),
(4403, 0, 'config', 'config_image_additional_width', '70', 0),
(4402, 0, 'config', 'config_image_product_height', '180', 0),
(4401, 0, 'config', 'config_image_product_width', '180', 0),
(4400, 0, 'config', 'config_image_popup_height', '600', 0),
(4399, 0, 'config', 'config_image_popup_width', '600', 0),
(4398, 0, 'config', 'config_image_thumb_height', '270', 0),
(4397, 0, 'config', 'config_image_thumb_width', '270', 0),
(4396, 0, 'config', 'config_image_category_height', '170', 0),
(4395, 0, 'config', 'config_image_category_width', '170', 0),
(4394, 0, 'config', 'config_icon', 'data/favicon.png', 0),
(4393, 0, 'config', 'config_logo', 'data/logo.png', 0),
(4392, 0, 'config', 'config_return_status_id', '2', 0),
(4391, 0, 'config', 'config_return_id', '0', 0),
(4390, 0, 'config', 'config_commission', '5', 0),
(4389, 0, 'config', 'config_affiliate_id', '4', 0),
(4388, 0, 'config', 'config_stock_status_id', '5', 0),
(2056, 0, 'newslideshow', 'slideshow_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:2:"14";s:5:"width";s:4:"1000";s:6:"height";s:3:"400";s:9:"layout_id";s:1:"6";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1),
(4387, 0, 'config', 'config_stock_checkout', '0', 0),
(4386, 0, 'config', 'config_stock_warning', '0', 0),
(4385, 0, 'config', 'config_stock_display', '0', 0),
(4384, 0, 'config', 'config_complete_status_id', '5', 0),
(4383, 0, 'config', 'config_order_status_id', '1', 0),
(4382, 0, 'config', 'config_invoice_prefix', 'INV-2012-00', 0),
(4381, 0, 'config', 'config_order_edit', '100', 0),
(4380, 0, 'config', 'config_checkout_id', '5', 0),
(4379, 0, 'config', 'config_guest_checkout', '1', 0),
(4378, 0, 'config', 'config_cart_weight', '1', 0),
(4377, 0, 'config', 'config_account_id', '3', 0),
(4376, 0, 'config', 'config_customer_price', '0', 0),
(4375, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(3051, 0, 'free', 'free_sort_order', '2', 0),
(3050, 0, 'free', 'free_status', '0', 0),
(3049, 0, 'free', 'free_geo_zone_id', '0', 0),
(3048, 0, 'free', 'free_total', '', 0),
(4478, 0, 'bestseller', 'bestseller_module', 'a:4:{i:0;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"180";s:12:"image_height";s:3:"180";s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:1;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"180";s:12:"image_height";s:3:"180";s:9:"layout_id";s:1:"4";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:2;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"180";s:12:"image_height";s:3:"180";s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:3;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"180";s:12:"image_height";s:3:"180";s:9:"layout_id";s:1:"8";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(4374, 0, 'config', 'config_customer_group_id', '1', 0),
(4472, 0, 'banner', 'banner_module', 'a:2:{i:0;a:7:{s:9:"banner_id";s:2:"18";s:5:"width";s:4:"1170";s:6:"height";s:3:"161";s:9:"layout_id";s:1:"1";s:8:"position";s:14:"content_bottom";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:7:{s:9:"banner_id";s:2:"16";s:5:"width";s:3:"465";s:6:"height";s:3:"165";s:9:"layout_id";s:1:"1";s:8:"position";s:6:"header";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(4373, 0, 'config', 'config_customer_online', '0', 0),
(4372, 0, 'config', 'config_tax_customer', 'shipping', 0),
(4371, 0, 'config', 'config_tax_default', 'shipping', 0),
(4370, 0, 'config', 'config_vat', '0', 0),
(4369, 0, 'config', 'config_tax', '1', 0),
(4368, 0, 'config', 'config_voucher_max', '1000', 0),
(4367, 0, 'config', 'config_voucher_min', '1', 0),
(4366, 0, 'config', 'config_download', '1', 0),
(4365, 0, 'config', 'config_review_status', '1', 0),
(4364, 0, 'config', 'config_product_count', '1', 0),
(4363, 0, 'config', 'config_admin_limit', '20', 0),
(4362, 0, 'config', 'config_catalog_limit', '6', 0),
(4361, 0, 'config', 'config_weight_class_id', '1', 0),
(4360, 0, 'config', 'config_length_class_id', '1', 0),
(4359, 0, 'config', 'config_currency_auto', '1', 0),
(4358, 0, 'config', 'config_currency', 'USD', 0),
(4357, 0, 'config', 'config_admin_language', 'en', 0),
(4356, 0, 'config', 'config_language', 'en', 0),
(4355, 0, 'config', 'config_zone_id', '3563', 0),
(4354, 0, 'config', 'config_country_id', '222', 0),
(4353, 0, 'config', 'config_layout_id', '4', 0),
(4352, 0, 'config', 'config_template', 'theme251', 0),
(4351, 0, 'config', 'config_meta_description', 'TeaRoom', 0),
(4350, 0, 'config', 'config_title', 'TeaRoom', 0),
(4349, 0, 'config', 'config_fax', '1-800-234-5678', 0),
(4348, 0, 'config', 'config_telephone', '1-800-234-5677', 0),
(4347, 0, 'config', 'config_email', 'admin@admin.com', 0),
(4346, 0, 'config', 'config_address', '8901 Marmora Road, Glasgow, D04 89GR', 0),
(4345, 0, 'config', 'config_owner', 'TeaRoom', 0),
(4344, 0, 'config', 'config_name', 'TeaRoom', 0),
(4438, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(4439, 0, 'config', 'config_maintenance', '0', 0),
(4440, 0, 'config', 'config_password', '1', 0),
(4441, 0, 'config', 'config_encryption', '09a3789f84fba146aae88d0e76198fff', 0),
(4442, 0, 'config', 'config_compression', '0', 0),
(4443, 0, 'config', 'config_error_display', '1', 0),
(4444, 0, 'config', 'config_error_log', '1', 0),
(4445, 0, 'config', 'config_error_filename', 'error.txt', 0),
(4446, 0, 'config', 'config_google_analytics', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
