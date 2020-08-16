-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2020 a las 18:42:42
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish_ci NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `account_emailaddress`
--

INSERT INTO `account_emailaddress` (`id`, `email`, `verified`, `primary`, `user_id`) VALUES
(1, 'guillermolunatic@gmail.com', 0, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add site', 7, 'add_site'),
(20, 'Can change site', 7, 'change_site'),
(21, 'Can delete site', 7, 'delete_site'),
(22, 'Can add email address', 8, 'add_emailaddress'),
(23, 'Can change email address', 8, 'change_emailaddress'),
(24, 'Can delete email address', 8, 'delete_emailaddress'),
(25, 'Can add email confirmation', 9, 'add_emailconfirmation'),
(26, 'Can change email confirmation', 9, 'change_emailconfirmation'),
(27, 'Can delete email confirmation', 9, 'delete_emailconfirmation'),
(28, 'Can add social account', 10, 'add_socialaccount'),
(29, 'Can change social account', 10, 'change_socialaccount'),
(30, 'Can delete social account', 10, 'delete_socialaccount'),
(31, 'Can add social application', 11, 'add_socialapp'),
(32, 'Can change social application', 11, 'change_socialapp'),
(33, 'Can delete social application', 11, 'delete_socialapp'),
(34, 'Can add social application token', 12, 'add_socialtoken'),
(35, 'Can change social application token', 12, 'change_socialtoken'),
(36, 'Can delete social application token', 12, 'delete_socialtoken'),
(37, 'Can add address', 13, 'add_address'),
(38, 'Can change address', 13, 'change_address'),
(39, 'Can delete address', 13, 'delete_address'),
(40, 'Can add category', 14, 'add_category'),
(41, 'Can change category', 14, 'change_category'),
(42, 'Can delete category', 14, 'delete_category'),
(43, 'Can add colour variation', 15, 'add_colourvariation'),
(44, 'Can change colour variation', 15, 'change_colourvariation'),
(45, 'Can delete colour variation', 15, 'delete_colourvariation'),
(46, 'Can add order', 16, 'add_order'),
(47, 'Can change order', 16, 'change_order'),
(48, 'Can delete order', 16, 'delete_order'),
(49, 'Can add size variation', 17, 'add_sizevariation'),
(50, 'Can change size variation', 17, 'change_sizevariation'),
(51, 'Can delete size variation', 17, 'delete_sizevariation'),
(52, 'Can add product', 18, 'add_product'),
(53, 'Can change product', 18, 'change_product'),
(54, 'Can delete product', 18, 'delete_product'),
(55, 'Can add payment', 19, 'add_payment'),
(56, 'Can change payment', 19, 'change_payment'),
(57, 'Can delete payment', 19, 'delete_payment'),
(58, 'Can add order item', 20, 'add_orderitem'),
(59, 'Can change order item', 20, 'change_orderitem'),
(60, 'Can delete order item', 20, 'delete_orderitem');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$UOG2IT0g6gSj$DWjyjsWkVco+o2zXOmhiFtLs6lbdWC7Qd5RiMlpGxVk=', '2020-08-14 10:43:01.788909', 1, 'wiliams', '', '', 'vhjvjfsv@gmail.com', 1, 1, '2020-08-12 03:59:54.796646'),
(2, 'pbkdf2_sha256$180000$J1kTkUiIvJzx$gSfT7bxap85DWTtHDTVVUIWQIJMxGmbIMy0sVVfk6zE=', NULL, 0, 'guillermolunatic', '', '', 'guillermolunatic@gmail.com', 0, 1, '2020-08-12 04:45:16.162453');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_address`
--

CREATE TABLE `cart_address` (
  `id` int(11) NOT NULL,
  `address_line_1` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `address_line_2` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `zip_code` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `address_type` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `default` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cart_address`
--

INSERT INTO `cart_address` (`id`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `address_type`, `default`, `user_id`) VALUES
(1, 'porgeso', 'Progreso 83', 'Panotla', '90150', 'S', 0, 1),
(2, 'Progreso 83', 'Progreso 83', 'Panotla', '90150', 'B', 0, 1),
(3, 'Progreso 83', 'Progreso 83', 'Panotla', '90150', 'S', 0, 1),
(4, 'Progreso 83', 'Progreso 83', 'Panotla', '90150', 'B', 0, 1),
(5, 'Progreso 83', 'Progreso 83', 'Panotla', '90150', 'S', 0, 1),
(6, 'Progreso 83', 'Progreso 83', 'Panotla', '90150', 'B', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_category`
--

CREATE TABLE `cart_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cart_category`
--

INSERT INTO `cart_category` (`id`, `name`) VALUES
(1, 'oferta'),
(2, 'Sala'),
(3, 'Baño'),
(4, 'Cuartos'),
(5, 'Cocina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_colourvariation`
--

CREATE TABLE `cart_colourvariation` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cart_colourvariation`
--

INSERT INTO `cart_colourvariation` (`id`, `name`) VALUES
(1, 'azul claro'),
(2, 'naranja'),
(3, 'Pardo'),
(4, 'Marron'),
(5, 'Chocolate'),
(6, 'blanco'),
(7, 'café oscuro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_order`
--

CREATE TABLE `cart_order` (
  `id` int(11) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `ordered_date` datetime(6) DEFAULT NULL,
  `ordered` tinyint(1) NOT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `shipping_address_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cart_order`
--

INSERT INTO `cart_order` (`id`, `start_date`, `ordered_date`, `ordered`, `billing_address_id`, `shipping_address_id`, `user_id`) VALUES
(1, '2020-08-12 03:58:53.174527', NULL, 0, NULL, NULL, 1),
(2, '2020-08-12 04:40:42.060357', NULL, 0, NULL, NULL, 1),
(3, '2020-08-12 15:14:18.680516', NULL, 0, 6, 5, 1),
(4, '2020-08-12 16:02:49.888973', NULL, 0, NULL, NULL, 1),
(5, '2020-08-14 10:17:59.569504', NULL, 0, 2, 1, 1),
(6, '2020-08-14 10:28:04.654773', NULL, 0, 4, 1, 1),
(7, '2020-08-14 11:03:11.977262', NULL, 0, NULL, NULL, NULL),
(8, '2020-08-16 16:26:27.066787', NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_orderitem`
--

CREATE TABLE `cart_orderitem` (
  `id` int(11) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `colour_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cart_orderitem`
--

INSERT INTO `cart_orderitem` (`id`, `quantity`, `colour_id`, `order_id`, `product_id`, `size_id`) VALUES
(2, 4, 2, 2, 1, 1),
(3, 6, 2, 3, 1, 1),
(4, 4, 3, 4, 2, 1),
(5, 3, 2, 5, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_payment`
--

CREATE TABLE `cart_payment` (
  `id` int(11) NOT NULL,
  `payment_method` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `succesful` tinyint(1) NOT NULL,
  `amount` double NOT NULL,
  `raw_response` longtext COLLATE utf8_spanish_ci NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_product`
--

CREATE TABLE `cart_product` (
  `id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `descritption` longtext COLLATE utf8_spanish_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `primary_category_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cart_product`
--

INSERT INTO `cart_product` (`id`, `title`, `slug`, `image`, `descritption`, `price`, `created`, `updated`, `active`, `primary_category_id`, `stock`) VALUES
(1, 'Tocador', 'oferta', 'product_images/mueble3.jpg', 'tocador granade con diferentes colores', 500, '2020-08-12 04:03:11.089965', '2020-08-12 04:03:11.089965', 0, 1, 4),
(2, 'Mueble de Baño', '23456', 'product_images/baño1.webp', 'Hay dos tipos de muebles de baño que uno puede escoger: de pie o empotrados. Los muebles de pie son ideales para baños con más espacio. Los muebles empotrados son más adecuados para lugares pequeños ya que tienen más espacio en la encimera y más espacio de almacenamiento.', 800, '2020-08-12 15:43:03.921950', '2020-08-12 15:43:03.921950', 1, 3, 4),
(3, 'Mueble para Sala', '567888', 'product_images/sala.jpg', 'Las mesas de sala o mesas de centro son un mueble cuyo cometido es proporcionar una superficie horizontal elevada del suelo, con múltiples usos, como pueden ser el trabajar sobre ella, apoyarse sobre ella, comer o colocar objetos', 2000, '2020-08-12 15:48:08.423326', '2020-08-12 15:48:08.423326', 0, 2, 5),
(4, 'recamara', '767598', 'product_images/sala_mqkxdAd.jpg', 'ejemplo de recamaras', 700, '2020-08-14 10:52:19.680542', '2020-08-14 10:52:19.680542', 0, 4, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_product_available_colours`
--

CREATE TABLE `cart_product_available_colours` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `colourvariation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cart_product_available_colours`
--

INSERT INTO `cart_product_available_colours` (`id`, `product_id`, `colourvariation_id`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 6),
(4, 4, 5),
(5, 4, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_product_available_sizes`
--

CREATE TABLE `cart_product_available_sizes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sizevariation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cart_product_available_sizes`
--

INSERT INTO `cart_product_available_sizes` (`id`, `product_id`, `sizevariation_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 3, 3),
(5, 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_product_secondary_categories`
--

CREATE TABLE `cart_product_secondary_categories` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_sizevariation`
--

CREATE TABLE `cart_sizevariation` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cart_sizevariation`
--

INSERT INTO `cart_sizevariation` (`id`, `name`) VALUES
(1, 'grande'),
(2, 'mediano'),
(3, 'chico'),
(4, 'pequeña');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-08-12 04:01:20.427168', '1', 'azul claro', 1, '[{\"added\": {}}]', 15, 1),
(2, '2020-08-12 04:01:35.437480', '2', 'naranja', 1, '[{\"added\": {}}]', 15, 1),
(3, '2020-08-12 04:02:43.098373', '1', 'grande', 1, '[{\"added\": {}}]', 17, 1),
(4, '2020-08-12 04:02:48.522309', '2', 'mediano', 1, '[{\"added\": {}}]', 17, 1),
(5, '2020-08-12 04:03:04.900964', '1', 'oferta', 1, '[{\"added\": {}}]', 14, 1),
(6, '2020-08-12 04:03:11.148968', '1', 'Tocador', 1, '[{\"added\": {}}]', 18, 1),
(7, '2020-08-12 04:50:35.725653', '2', 'https://www.facebook.com/', 1, '[{\"added\": {}}]', 7, 1),
(8, '2020-08-12 15:21:12.395481', '3', 'Pardo', 1, '[{\"added\": {}}]', 15, 1),
(9, '2020-08-12 15:21:25.229868', '4', 'Marron', 1, '[{\"added\": {}}]', 15, 1),
(10, '2020-08-12 15:21:35.535890', '5', 'Chocolate', 1, '[{\"added\": {}}]', 15, 1),
(11, '2020-08-12 15:22:17.123073', '2', 'Sala', 1, '[{\"added\": {}}]', 14, 1),
(12, '2020-08-12 15:22:24.312755', '3', 'Baño', 1, '[{\"added\": {}}]', 14, 1),
(13, '2020-08-12 15:22:32.646140', '4', 'Cuartos', 1, '[{\"added\": {}}]', 14, 1),
(14, '2020-08-12 15:22:43.924130', '5', 'Cocina', 1, '[{\"added\": {}}]', 14, 1),
(15, '2020-08-12 15:43:04.121997', '2', 'Mueble de Baño', 1, '[{\"added\": {}}]', 18, 1),
(16, '2020-08-12 15:47:50.046937', '6', 'blanco', 1, '[{\"added\": {}}]', 15, 1),
(17, '2020-08-12 15:47:58.428522', '3', 'chico', 1, '[{\"added\": {}}]', 17, 1),
(18, '2020-08-12 15:48:08.551355', '3', 'Mueble para Sala', 1, '[{\"added\": {}}]', 18, 1),
(19, '2020-08-14 10:51:32.505707', '7', 'café oscuro', 1, '[{\"added\": {}}]', 15, 1),
(20, '2020-08-14 10:51:50.166891', '4', 'pequeña', 1, '[{\"added\": {}}]', 17, 1),
(21, '2020-08-14 10:52:19.830561', '4', 'recamara', 1, '[{\"added\": {}}]', 18, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'account', 'emailaddress'),
(9, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(13, 'cart', 'address'),
(14, 'cart', 'category'),
(15, 'cart', 'colourvariation'),
(16, 'cart', 'order'),
(20, 'cart', 'orderitem'),
(19, 'cart', 'payment'),
(18, 'cart', 'product'),
(17, 'cart', 'sizevariation'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'sites', 'site'),
(10, 'socialaccount', 'socialaccount'),
(11, 'socialaccount', 'socialapp'),
(12, 'socialaccount', 'socialtoken');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-08-12 03:57:34.448403'),
(2, 'auth', '0001_initial', '2020-08-12 03:57:47.177550'),
(3, 'account', '0001_initial', '2020-08-12 03:57:49.898873'),
(4, 'account', '0002_email_max_length', '2020-08-12 03:57:53.318888'),
(5, 'admin', '0001_initial', '2020-08-12 03:57:55.986059'),
(6, 'admin', '0002_logentry_remove_auto_add', '2020-08-12 03:57:56.055068'),
(7, 'contenttypes', '0002_remove_content_type_name', '2020-08-12 03:57:57.367764'),
(8, 'auth', '0002_alter_permission_name_max_length', '2020-08-12 03:57:58.456838'),
(9, 'auth', '0003_alter_user_email_max_length', '2020-08-12 03:57:59.628366'),
(10, 'auth', '0004_alter_user_username_opts', '2020-08-12 03:57:59.688370'),
(11, 'auth', '0005_alter_user_last_login_null', '2020-08-12 03:58:00.732904'),
(12, 'auth', '0006_require_contenttypes_0002', '2020-08-12 03:58:00.868902'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2020-08-12 03:58:00.937907'),
(14, 'auth', '0008_alter_user_username_max_length', '2020-08-12 03:58:03.586944'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2020-08-12 03:58:03.811963'),
(16, 'cart', '0001_initial', '2020-08-12 03:58:28.184221'),
(17, 'cart', '0002_product_stock', '2020-08-12 03:58:28.906347'),
(18, 'cart', '0003_auto_20200709_2236', '2020-08-12 03:58:31.320184'),
(19, 'sessions', '0001_initial', '2020-08-12 03:58:32.073895'),
(20, 'sites', '0001_initial', '2020-08-12 03:58:32.472971'),
(21, 'sites', '0002_alter_domain_unique', '2020-08-12 03:58:32.730801'),
(22, 'socialaccount', '0001_initial', '2020-08-12 03:58:41.104051'),
(23, 'socialaccount', '0002_token_max_lengths', '2020-08-12 03:58:41.541962'),
(24, 'socialaccount', '0003_extra_data_default_dict', '2020-08-12 03:58:41.599977');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_spanish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2ikwoe83rlo27xvjtwlxhjamsaq96qfn', 'OTY5ZTk1YTNmZmRhMTVjZDE1MTk4NzQ0YTg2ZWYzYzViZjZmNTZjYzp7Im9yZGVyX2lkIjo3fQ==', '2020-08-28 11:03:12.144277'),
('f0co89fb9nmvllo39sydeubdy8eszr08', 'OWEzY2ZiZTg4NWJhZmMwZWFhZmY1NGViYWQ5ZDliMmYyZTJkNDc2ZDp7Im9yZGVyX2lkIjoyLCJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiIyIiwiX3Nlc3Npb25fZXhwaXJ5IjowLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDFiYmNmMTk4OGNmOTMxZGNkOTZiZTYwMWRmOTVjNzI2MmIyODNjNiJ9', '2020-08-26 04:48:19.128069'),
('otbjtlt6wb0n6bz6fpr8quiloftu7zcc', 'Njg1MDVhNTcwOTE3MzAwNzdmNmFhMGZiMmU5Njg0ZTBlYWFjYTBlYjp7Im9yZGVyX2lkIjo4fQ==', '2020-08-30 16:26:27.278804'),
('q3nn9pmtn6eiltb1ufbhhsposfl15l80', 'YjhiNWI4NjYzZDgxMjUwNTAwNTEwMmNlYWY1YmQ3NDY1ZjQ4OWU0Mjp7Im9yZGVyX2lkIjo0LCJfc2Vzc2lvbl9leHBpcnkiOjAsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNzQ4YzY5ZGJhYjlmZmY3MjNjMDFlYTZmMTkzNzFlMzU2M2ViZDY3In0=', '2020-08-26 16:04:44.037151');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com'),
(2, 'https://www.facebook.com/', 'FACEBOOK');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `uid` varchar(191) COLLATE utf8_spanish_ci NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext COLLATE utf8_spanish_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `client_id` varchar(191) COLLATE utf8_spanish_ci NOT NULL,
  `secret` varchar(191) COLLATE utf8_spanish_ci NOT NULL,
  `key` varchar(191) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` int(11) NOT NULL,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext COLLATE utf8_spanish_ci NOT NULL,
  `token_secret` longtext COLLATE utf8_spanish_ci NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk` (`user_id`);

--
-- Indices de la tabla `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirmation_email_address_id_5b7f8c58_fk` (`email_address_id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `cart_address`
--
ALTER TABLE `cart_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_address_user_id_e46fbfa1_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `cart_category`
--
ALTER TABLE `cart_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cart_colourvariation`
--
ALTER TABLE `cart_colourvariation`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cart_order`
--
ALTER TABLE `cart_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_order_billing_address_id_4b963733_fk_cart_address_id` (`billing_address_id`),
  ADD KEY `cart_order_shipping_address_id_a59ae747_fk_cart_address_id` (`shipping_address_id`),
  ADD KEY `cart_order_user_id_279b5d53_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `cart_orderitem`
--
ALTER TABLE `cart_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_orderitem_colour_id_d18f9454_fk_cart_colourvariation_id` (`colour_id`),
  ADD KEY `cart_orderitem_order_id_bfb4d452_fk_cart_order_id` (`order_id`),
  ADD KEY `cart_orderitem_product_id_7e8cb6d7_fk_cart_product_id` (`product_id`),
  ADD KEY `cart_orderitem_size_id_8234bd15_fk_cart_sizevariation_id` (`size_id`);

--
-- Indices de la tabla `cart_payment`
--
ALTER TABLE `cart_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_payment_order_id_1c722b45_fk_cart_order_id` (`order_id`);

--
-- Indices de la tabla `cart_product`
--
ALTER TABLE `cart_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `cart_product_primary_category_id_bf59c810_fk_cart_category_id` (`primary_category_id`);

--
-- Indices de la tabla `cart_product_available_colours`
--
ALTER TABLE `cart_product_available_colours`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cart_product_available_c_product_id_colourvariati_3cf07d8d_uniq` (`product_id`,`colourvariation_id`),
  ADD KEY `cart_product_availab_colourvariation_id_405eae2e_fk_cart_colo` (`colourvariation_id`);

--
-- Indices de la tabla `cart_product_available_sizes`
--
ALTER TABLE `cart_product_available_sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cart_product_available_s_product_id_sizevariation_254f19da_uniq` (`product_id`,`sizevariation_id`),
  ADD KEY `cart_product_availab_sizevariation_id_5743851d_fk_cart_size` (`sizevariation_id`);

--
-- Indices de la tabla `cart_product_secondary_categories`
--
ALTER TABLE `cart_product_secondary_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cart_product_secundary_c_product_id_category_id_5b06656f_uniq` (`product_id`,`category_id`),
  ADD KEY `cart_product_seconda_category_id_925bbbd8_fk_cart_cate` (`category_id`);

--
-- Indices de la tabla `cart_sizevariation`
--
ALTER TABLE `cart_sizevariation`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indices de la tabla `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- Indices de la tabla `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cart_address`
--
ALTER TABLE `cart_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cart_category`
--
ALTER TABLE `cart_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cart_colourvariation`
--
ALTER TABLE `cart_colourvariation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cart_order`
--
ALTER TABLE `cart_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cart_orderitem`
--
ALTER TABLE `cart_orderitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cart_payment`
--
ALTER TABLE `cart_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cart_product`
--
ALTER TABLE `cart_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cart_product_available_colours`
--
ALTER TABLE `cart_product_available_colours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cart_product_available_sizes`
--
ALTER TABLE `cart_product_available_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cart_product_secondary_categories`
--
ALTER TABLE `cart_product_secondary_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cart_sizevariation`
--
ALTER TABLE `cart_sizevariation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirmation_email_address_id_5b7f8c58_fk` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `cart_address`
--
ALTER TABLE `cart_address`
  ADD CONSTRAINT `cart_address_user_id_e46fbfa1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `cart_order`
--
ALTER TABLE `cart_order`
  ADD CONSTRAINT `cart_order_billing_address_id_4b963733_fk_cart_address_id` FOREIGN KEY (`billing_address_id`) REFERENCES `cart_address` (`id`),
  ADD CONSTRAINT `cart_order_shipping_address_id_a59ae747_fk_cart_address_id` FOREIGN KEY (`shipping_address_id`) REFERENCES `cart_address` (`id`),
  ADD CONSTRAINT `cart_order_user_id_279b5d53_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `cart_orderitem`
--
ALTER TABLE `cart_orderitem`
  ADD CONSTRAINT `cart_orderitem_colour_id_d18f9454_fk_cart_colourvariation_id` FOREIGN KEY (`colour_id`) REFERENCES `cart_colourvariation` (`id`),
  ADD CONSTRAINT `cart_orderitem_order_id_bfb4d452_fk_cart_order_id` FOREIGN KEY (`order_id`) REFERENCES `cart_order` (`id`),
  ADD CONSTRAINT `cart_orderitem_product_id_7e8cb6d7_fk_cart_product_id` FOREIGN KEY (`product_id`) REFERENCES `cart_product` (`id`),
  ADD CONSTRAINT `cart_orderitem_size_id_8234bd15_fk_cart_sizevariation_id` FOREIGN KEY (`size_id`) REFERENCES `cart_sizevariation` (`id`);

--
-- Filtros para la tabla `cart_payment`
--
ALTER TABLE `cart_payment`
  ADD CONSTRAINT `cart_payment_order_id_1c722b45_fk_cart_order_id` FOREIGN KEY (`order_id`) REFERENCES `cart_order` (`id`);

--
-- Filtros para la tabla `cart_product`
--
ALTER TABLE `cart_product`
  ADD CONSTRAINT `cart_product_primary_category_id_bf59c810_fk_cart_category_id` FOREIGN KEY (`primary_category_id`) REFERENCES `cart_category` (`id`);

--
-- Filtros para la tabla `cart_product_available_colours`
--
ALTER TABLE `cart_product_available_colours`
  ADD CONSTRAINT `cart_product_availab_colourvariation_id_405eae2e_fk_cart_colo` FOREIGN KEY (`colourvariation_id`) REFERENCES `cart_colourvariation` (`id`),
  ADD CONSTRAINT `cart_product_availab_product_id_f982648a_fk_cart_prod` FOREIGN KEY (`product_id`) REFERENCES `cart_product` (`id`);

--
-- Filtros para la tabla `cart_product_available_sizes`
--
ALTER TABLE `cart_product_available_sizes`
  ADD CONSTRAINT `cart_product_availab_product_id_037fff4a_fk_cart_prod` FOREIGN KEY (`product_id`) REFERENCES `cart_product` (`id`),
  ADD CONSTRAINT `cart_product_availab_sizevariation_id_5743851d_fk_cart_size` FOREIGN KEY (`sizevariation_id`) REFERENCES `cart_sizevariation` (`id`);

--
-- Filtros para la tabla `cart_product_secondary_categories`
--
ALTER TABLE `cart_product_secondary_categories`
  ADD CONSTRAINT `cart_product_seconda_category_id_925bbbd8_fk_cart_cate` FOREIGN KEY (`category_id`) REFERENCES `cart_category` (`id`),
  ADD CONSTRAINT `cart_product_seconda_product_id_cc5b16bb_fk_cart_prod` FOREIGN KEY (`product_id`) REFERENCES `cart_product` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Filtros para la tabla `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
