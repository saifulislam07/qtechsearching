-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 10, 2023 at 04:47 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qtecsearch`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_07_091111_create_products_table', 1),
(6, '2023_03_07_093837_create_search_histories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `original_price` int NOT NULL,
  `selling_price` int NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'West Fannytown', 'architecto-in-veniam-et-quo-molestiae-aut-earum', 'Rerum fugit ut iste. Eius nemo consectetur et exercitationem.', 'Culpa veritatis qui assumenda porro vel nulla. Quia temporibus iste ipsam sit. Enim quia voluptas non consequatur vero at. Molestiae quo repellat ea harum. Aut ipsa omnis sunt perspiciatis. Illum autem ad repudiandae nulla ad nemo minima id.', 462, 821, 106, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(2, 'Bodefurt', 'maxime-autem-beatae-a-magnam', 'Dolores amet voluptatem cumque accusamus est sint dolores. Voluptatem fuga enim aut reprehenderit aut eaque. Dolores aspernatur aut eveniet occaecati.', 'Nostrum perferendis consectetur aliquam enim voluptatem qui. Inventore dolores totam natus unde. Necessitatibus fuga consequatur laborum nobis sit eos corporis. Ea dolor voluptatem ipsa maxime ab. Aperiam expedita asperiores consequatur aut est iure sunt asperiores. Aut saepe dignissimos sit atque magnam sunt. Culpa debitis et unde et quia natus non. Id nobis nesciunt sit enim possimus adipisci. Id quis perspiciatis est dolorem vel nostrum quia quibusdam.', 305, 603, 197, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(3, 'Kihnchester', 'dolores-a-totam-sunt-hic', 'Deserunt incidunt ut sed ea nostrum qui quia. Expedita vero quia optio itaque architecto voluptates asperiores est.', 'Reprehenderit nulla laboriosam est deleniti. Perferendis saepe labore fugit aut ut non. Dolor id sed est perspiciatis eius nam molestias. Necessitatibus quia quis officiis ea sapiente voluptate eos. Qui qui ab vel perferendis tenetur rerum consequatur pariatur. Officiis ut laudantium voluptatem doloremque nam. Quia enim expedita vel qui. Consequuntur esse ut aspernatur et. Qui reprehenderit reprehenderit fuga consequatur ex laudantium ut.', 364, 821, 136, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(4, 'Bernierbury', 'incidunt-id-laborum-omnis-ut', 'Quos eveniet aut quibusdam aut illum. Corrupti eligendi hic minus quidem. Veritatis repellat fugiat rerum.', 'Voluptatem hic asperiores et adipisci consequatur et odio omnis. Et quaerat occaecati quo possimus aspernatur ut aliquam. Aliquid vitae qui error aut dolore eaque et vel. In et et quisquam. Aut quibusdam quidem et. Delectus quis consequatur eius voluptas illo eius dicta magni. Voluptatem eligendi odio aliquid et totam aut numquam fugiat. Quia sequi et voluptatem provident. Est molestiae debitis ut iste. Quibusdam cupiditate animi optio quod. Et sunt dolorum optio eum.', 363, 900, 196, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(5, 'Revaville', 'nostrum-consequatur-natus-dolor-ipsam-aperiam', 'Distinctio labore sint reiciendis. Omnis debitis corporis aut quam quae. Excepturi minima incidunt maxime laboriosam assumenda quis.', 'Hic cum iusto quibusdam optio rerum quod aliquam sed. Autem fuga dolores ratione est aut qui et. Numquam rerum sed numquam voluptate eos dolorem culpa. At dolorem velit error tenetur sapiente sunt ut eius. Esse recusandae dolore est quisquam sed quasi. Minus sint incidunt voluptas et sunt id. Reiciendis inventore quae consequatur et repellat delectus ullam iure. Expedita laborum et qui aut reprehenderit et quis blanditiis. Commodi corporis temporibus sunt culpa dolores accusamus. Maiores vero qui a est.', 382, 712, 126, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(6, 'South Clovis', 'non-id-blanditiis-deleniti-eaque', 'Adipisci adipisci culpa ullam debitis sed dolorem deserunt. Quo sed ut repellendus ea. Explicabo aut ipsa sed inventore.', 'Quasi iusto error sint qui ut enim eius. Occaecati et iusto blanditiis non recusandae necessitatibus culpa. Molestiae ut quia laudantium voluptatem delectus. Dolorem esse est suscipit labore. Rerum sed libero voluptatem. Sunt sequi ea autem aliquid ducimus dolore illo. Fuga nam optio itaque quas. Sit odio dolorem consectetur ex ex voluptatem rerum incidunt. Id veniam sed et aut.', 343, 667, 184, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(7, 'East Marquiseside', 'consequatur-ut-totam-sunt-consequuntur-aut-eum-tempore', 'Sint aut et molestiae ut vel. Sunt nesciunt aliquid cumque voluptas alias ea eos.', 'Alias distinctio dolor voluptas quia. Dolorem delectus accusamus ratione earum delectus labore. Praesentium sit non et ut totam nulla laudantium. Omnis dolor ut minus quo enim accusantium. Aut inventore neque quo nobis. Blanditiis accusamus exercitationem quaerat veniam at consequatur voluptatem qui. Consequatur tenetur sapiente quaerat non doloribus quod non.', 476, 712, 154, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(8, 'Klockotown', 'qui-quae-neque-dolor-perspiciatis-eveniet-dolorem', 'Omnis sed est est libero magnam. Natus dolorem quasi est. Deserunt facere eum voluptatem sit libero laboriosam.', 'Eum et accusantium sit ducimus ut praesentium voluptate. Id et quisquam magni ad numquam. Deleniti quis omnis nisi voluptatum ut et ipsa. Reiciendis praesentium voluptates iure voluptate ut ab consequatur. Eligendi mollitia reprehenderit voluptas molestiae dolores voluptatem. Repudiandae delectus labore et ut.', 441, 872, 139, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(9, 'East Carafurt', 'et-voluptates-dolores-minima-dicta-consequatur-perferendis', 'Dolorum dolores qui ducimus ad id possimus. Suscipit mollitia et neque ut.', 'Qui omnis velit mollitia. Placeat hic provident cupiditate esse. Id dolorum impedit consequatur. Nihil enim quo ducimus rerum. A et doloremque id quia. Est facere optio non nesciunt est. Consequatur nemo suscipit quia non itaque dolorem ea. Non recusandae aut sunt iste cupiditate vel eveniet. Sed in eaque cumque illum ut rem eaque. Possimus error eligendi nobis dolor illum accusantium harum ut.', 369, 774, 159, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(10, 'Othaport', 'ut-sapiente-minima-odio-pariatur', 'Impedit veritatis id et qui vel. Et dolores ut praesentium. Unde et consequatur consequatur architecto sit.', 'Rerum et eos corporis et. Nulla commodi aut soluta sit sed ut quis et. Id quia iure ut labore aut sed. Sapiente esse ratione qui molestias quo fugit. Eveniet harum deleniti libero ut sint qui aliquam. Totam aperiam corrupti et fuga sed nulla in.', 334, 739, 158, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(11, 'Larissaside', 'et-sit-corporis-blanditiis-vel', 'Incidunt commodi facilis sed soluta et. Quidem recusandae odio eos eligendi officiis reprehenderit.', 'Dolorem tempore ea explicabo ut unde deleniti accusantium. Qui perspiciatis facilis quam ab. Sequi error vel rerum voluptatem. Hic nulla dolorum delectus. Optio mollitia est sapiente consequatur quaerat recusandae. Quaerat dolor inventore ea nihil esse ut est. Consequatur fugiat ut reprehenderit qui omnis nulla. Inventore deserunt distinctio ea ipsam qui architecto sapiente.', 410, 760, 119, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(12, 'Carmenbury', 'quia-ea-debitis-quos-sit', 'Qui vel quia dolore ea ducimus deleniti. Blanditiis et assumenda nam ea incidunt hic.', 'Mollitia qui suscipit labore aliquid rem quas ex. Beatae amet cum accusantium. Corrupti consectetur sed tenetur molestias. Quasi et harum odit laborum autem voluptas velit. Sit amet repellat fugiat libero odit fugiat. Vel enim facilis excepturi consequuntur et perspiciatis autem dolorem. Hic ut aperiam voluptas. Voluptas nam aut corporis sunt velit placeat eos. Voluptas aut qui animi repudiandae. Et velit esse exercitationem molestias.', 500, 859, 200, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(13, 'Effertzbury', 'repellat-voluptatibus-ratione-expedita-dolore', 'Est doloremque dolor necessitatibus qui quas. Sit officia vero repellendus aliquid cupiditate consectetur.', 'Dolor corrupti tempora consequatur porro placeat. Sunt dolore praesentium et sed est. Odit iusto commodi ut earum suscipit quibusdam eligendi. Sed voluptas ut sit quod. Dolore est officiis similique qui dolores aliquid ratione. Aspernatur officia cupiditate natus.', 332, 654, 141, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(14, 'Jaredchester', 'ut-eos-aut-neque-aut-ea', 'Sed consequatur ut ut. Ea ut dignissimos architecto accusamus dolores voluptatem architecto reprehenderit.', 'Est harum voluptatem nihil est sunt. Non ducimus accusamus pariatur fugiat blanditiis at. Neque quibusdam eos et ut reprehenderit sed ea veniam. Dolore ea incidunt dolor nihil assumenda. Ad eos qui quia voluptate architecto provident ut. Sapiente inventore aut consequatur numquam quam architecto. Illum nostrum ut ipsam repellendus. Ex aperiam ipsam reiciendis saepe qui qui. Et id itaque quas tempora est. Non dolorem expedita animi rerum asperiores.', 477, 865, 179, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(15, 'Port Fredafurt', 'qui-consequatur-qui-quis-quia-qui', 'Voluptas exercitationem eveniet mollitia maxime sunt. Hic excepturi ut mollitia quidem eum iure. Et quidem ab eius vitae repudiandae molestiae.', 'Non hic fugiat est asperiores suscipit. Expedita est expedita molestias consequuntur aut dolorum in. Quod sapiente quisquam facere similique voluptatibus rerum. Tempora adipisci et velit error voluptas. Nesciunt est exercitationem commodi aut. Error illum sunt quidem nemo optio aliquam ad. Soluta dolor necessitatibus quia enim tenetur est accusantium. Aut eum at quo excepturi unde. Eveniet praesentium qui ab nisi. Aut a corporis et optio aut.', 492, 701, 165, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(16, 'Rathland', 'omnis-quasi-delectus-excepturi-vel-dolorem-est-ipsa', 'Perferendis veritatis ipsam fuga qui aliquam saepe. Omnis deserunt molestiae non dolorem minima. Qui quia nam corporis ea.', 'Voluptates et voluptatibus aut dolores doloribus vero molestiae. Earum et nobis ratione rerum nobis velit voluptatum. Iure voluptatibus corrupti possimus ratione numquam. Ducimus quod maxime molestiae molestiae vel et autem. Possimus eum consequatur voluptates velit est. Quisquam nostrum voluptatem sit corporis ut reiciendis. Id quibusdam animi in id. In aut soluta ex itaque dolores modi voluptas dolor. Voluptates laboriosam voluptas voluptas nisi laboriosam. Consequatur magni et quasi doloremque qui. Et in quas consequatur quo consequatur dolor porro.', 422, 645, 150, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(17, 'North Naomieton', 'saepe-doloremque-quam-voluptates-qui', 'Eos eos itaque labore et voluptate. Facere autem in eveniet corporis.', 'Aut saepe occaecati nostrum quo dolores. Maxime animi doloribus rerum atque distinctio. Ut molestiae eos quibusdam voluptas et inventore. Consequatur perferendis dolorem in ut. Error quia numquam dolor nostrum non. Sapiente repellendus qui et tempore. Voluptas quas quaerat aspernatur itaque laborum tenetur soluta maiores. Illo consequatur accusantium ipsum unde. Iusto tempore laborum magnam qui aut rerum ut. Dolor molestiae impedit et eos ipsum aperiam incidunt. Quis sunt recusandae quia dolores aut dolores aut.', 322, 855, 146, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(18, 'Fayfurt', 'et-molestias-ducimus-esse-porro-labore-nisi', 'Libero vero omnis quia iste esse sed perferendis. Enim enim ad et id delectus enim.', 'Cumque aut rem sint non. Earum debitis dolorum atque unde nisi qui qui officia. Architecto magnam deserunt sunt quasi reprehenderit labore et. Sint et laborum cupiditate consectetur dolor. Error sed quod velit omnis aut sunt et. Commodi eius quaerat doloribus ex vel odit est. Nam distinctio exercitationem architecto qui beatae est. Tempora ut consequatur harum aliquam. Ipsam dicta qui ut consequatur occaecati omnis vel et.', 372, 761, 151, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(19, 'Lake Janickhaven', 'ab-doloremque-quos-ea-voluptas-ad', 'Dignissimos dolorum voluptatibus distinctio et suscipit nihil. Blanditiis deleniti numquam aut nulla magnam repellat repellendus.', 'Voluptatem autem dolorem nulla. A est nam modi ducimus. Totam nulla repudiandae pariatur. Aut reprehenderit officiis est amet cum quos aut. Beatae nam sequi debitis maxime et cumque dolor deserunt. Et et voluptatem ducimus velit sed laboriosam laborum. Doloremque saepe vel sed aperiam et. Voluptatem debitis nisi sequi delectus quod dignissimos. Qui iure commodi voluptas dolores expedita id. Nihil et quia velit qui.', 487, 793, 146, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(20, 'North Dannie', 'et-est-quisquam-sit-tempore-magnam-doloremque-iure', 'Quae nam neque dicta modi dolorum. Fugit id sed quod. Nulla numquam eveniet libero optio.', 'Exercitationem quam distinctio ut esse ut eos dolorum. Non magni voluptates nostrum sapiente. Ut tempora dolores quis est voluptatibus fugit. Molestiae vero labore nesciunt. Cum recusandae minima doloremque tenetur cum aut. Quas fugiat laboriosam ea odio. Vitae facilis distinctio numquam magnam vero. Dolores non pariatur sunt et.', 353, 660, 166, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(21, 'East Fae', 'vel-rerum-vero-explicabo', 'Consequuntur accusamus ipsa laudantium autem tempora dolorum ea maxime. Modi et expedita alias corrupti.', 'Sed cum velit accusamus quibusdam quam deleniti. Quo velit esse vero enim quibusdam vel repudiandae. Sed labore quae nesciunt molestiae modi non. Incidunt modi et quas tempora et. Aperiam suscipit aut qui et enim. Beatae facere aut et enim consequatur. Quia et dolores voluptas temporibus vel quis sunt. Velit enim omnis minus a dolorem. Aliquam earum est vero rerum deleniti pariatur. Dolores hic exercitationem quibusdam at velit dolores voluptatum. Quo molestiae iure cumque et. Eaque ut voluptatem praesentium odio dolore.', 460, 660, 152, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(22, 'New Ernestine', 'impedit-et-sapiente-aut-facere-dolores-vero-omnis', 'Sequi hic ea maiores occaecati est et et. Quas voluptatibus exercitationem earum corporis soluta quam dolorum.', 'Sint ut ex dolorem delectus consequatur. Consequatur dolor vel et fugit ullam repudiandae sunt. Aut error harum maxime perspiciatis ut. Voluptates deserunt molestias ut laboriosam similique. Facilis qui necessitatibus deserunt officiis facere consequatur. Est aut est officiis quo iure cum.', 332, 689, 185, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(23, 'Bartonview', 'eos-est-et-possimus-at-pariatur-sint', 'Quaerat placeat quae iusto ex et nemo. Quidem repellat consequatur magni voluptate.', 'Dignissimos ab qui voluptas iusto et et laborum. Ut non ut hic et labore ut. Praesentium sunt maiores rerum molestiae asperiores ullam repellendus ut. Sit minus nam ipsum magni voluptas. Doloremque rem vero numquam culpa esse sit. Voluptates et aut rerum minus nostrum rerum. Recusandae tempore provident et et sunt. Molestias reprehenderit quia dolorem id magni. Exercitationem voluptas quibusdam aperiam quaerat itaque ducimus accusamus illo. Nihil autem doloremque nostrum. Tempora omnis suscipit dolore alias aut odio.', 401, 604, 138, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(24, 'Port Bonita', 'in-sed-dicta-reiciendis-ipsum-qui-voluptatem', 'Et fuga tempore minus ea et. Dolores excepturi dicta reiciendis nobis esse saepe.', 'Magni quia quis sit deserunt adipisci illo consequatur. Ipsum tempore corporis magni ea. Et voluptas et ut. Magni sit atque consequuntur dolorem. Illum architecto itaque nemo aliquam. Qui sit pariatur cum hic hic pariatur. Quam non minus ratione molestias a. Soluta ut quaerat et alias expedita illum explicabo voluptas. Provident eos numquam ducimus. Maxime ut accusantium qui fugit qui. Aspernatur voluptas quae sit voluptatem temporibus adipisci dolorem.', 480, 761, 149, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(25, 'Rathmouth', 'quia-tenetur-ea-earum-doloremque', 'Nihil maxime autem sed magnam ipsa. Voluptas numquam id dolores nostrum sed.', 'Eum dolorum dignissimos suscipit ut animi id et. Doloribus ex et rerum enim. Accusamus voluptatem est unde quia. Animi quisquam sapiente consequatur perspiciatis a eos. Quo ipsam suscipit ab vitae. Esse est itaque consequatur non temporibus est nisi cum. Id tempora fugit iure voluptas sunt. Doloribus commodi reprehenderit quos molestias et. Expedita vel et accusamus odit aut. Sint rerum et iure.', 385, 890, 199, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(26, 'Danykaland', 'libero-vel-ducimus-ut-ratione-error', 'Vel quisquam est porro aliquid veritatis. Dolorem cum impedit voluptates amet reprehenderit sunt.', 'Ut est id et expedita. Quaerat eum quos tempora aspernatur. Numquam facilis minus ullam omnis aut quibusdam non. Odit quo consequatur et accusamus rerum architecto quidem qui. Dolor debitis eaque et. Rerum porro provident voluptatem repudiandae numquam. Fugiat sed cum tempora cumque molestias accusantium. Tempora iste odit mollitia assumenda. Quia sapiente facilis doloribus odio quo eligendi eveniet. Enim provident sint omnis. Vel voluptas officia soluta sed libero.', 484, 775, 184, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(27, 'Prosaccoview', 'consequatur-veniam-iure-aut-iure-quod-dolorem', 'Nihil quia ipsum blanditiis cupiditate esse. Incidunt necessitatibus dolorem voluptas repellendus rerum temporibus tenetur.', 'Impedit libero cumque sed provident earum non. Et laudantium recusandae blanditiis necessitatibus sunt qui dolores natus. Aliquid ut quibusdam et quasi veniam magni aspernatur. Ut aut minima quos veritatis. Accusantium amet aut dolorem ut. Eaque dolorem doloribus ea. Corrupti ut nesciunt aut libero dolores officia sit. Qui mollitia esse odio consequuntur autem. Rerum voluptate cum minus aperiam cupiditate. Suscipit vitae quo sed libero sit minima.', 404, 643, 135, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(28, 'Swaniawskifort', 'optio-eius-ut-mollitia-eum-quaerat', 'Voluptatum sapiente fuga non repellendus debitis quidem ea. Consectetur et iusto officia quibusdam. Non voluptatem omnis numquam fugit.', 'Et hic sint aliquid quisquam aliquam quisquam ipsa. Dolores quod veritatis sint totam reprehenderit beatae est non. Incidunt facilis aliquam animi itaque laboriosam aut temporibus. Voluptatem nisi modi libero dolores minima omnis. Ducimus doloremque cupiditate non incidunt magni. Et voluptatem nihil non adipisci soluta nulla. Voluptas est error sit optio nulla. Vel provident dolor aliquam sapiente mollitia cum. Eius quae voluptates et aspernatur. Ducimus commodi ut atque illum.', 426, 720, 123, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(29, 'Williefurt', 'totam-sit-sunt-sed-doloremque-eos-et-quia', 'Non nisi et debitis. Officia eos dolores voluptatum vitae. Quia sit quas est.', 'Aperiam consequuntur numquam praesentium dignissimos inventore voluptatem dolor. Id nesciunt id omnis quisquam ea id. Suscipit quia nulla libero nemo corrupti quis. Doloribus enim dolorum molestiae magni ab saepe. Omnis fugiat expedita dolorum aliquid qui corporis eligendi. Sed et velit ipsa est. Est autem aspernatur dignissimos voluptas est ipsam. Commodi expedita ullam quia omnis deserunt nisi. In officiis veritatis sit ab repudiandae. Dolore ut corrupti qui ab culpa provident.', 347, 809, 137, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(30, 'Lake Annabellefort', 'ipsam-et-tempore-at-sit-quas', 'Id officia inventore corporis rerum tempora repudiandae. Sit id non in tempora architecto velit.', 'Molestias est sed aut delectus iure ab. Et ab rerum eligendi explicabo sunt. Impedit hic et rerum rerum quisquam exercitationem inventore. Rerum qui natus minima ullam at. Hic pariatur dolores ab beatae neque. Deleniti aut laboriosam ipsam minus. Error ea asperiores aspernatur perferendis architecto. Commodi qui dolorum quidem non. Alias laborum fugiat aut dolore repellendus.', 461, 828, 174, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(31, 'Mikeport', 'dignissimos-ut-aut-quis-explicabo-illum-molestiae', 'Velit voluptatem vel vitae cumque. Doloribus provident deleniti dolores.', 'Eum dolorum est totam impedit sit. Deleniti ducimus similique architecto. Aut et dolor id quisquam alias enim ipsam blanditiis. Dolores magni reprehenderit officia maiores vel et. Voluptate corrupti quis rerum qui vitae est et.', 450, 768, 173, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(32, 'Port Nickshire', 'aut-qui-et-aut-officia', 'Excepturi adipisci aut ut rem perspiciatis in corporis. Perspiciatis rerum laboriosam libero reiciendis.', 'Illum molestiae voluptatem est sed aliquid fugit. Animi illo est fugiat quos vel. Voluptatem excepturi unde quasi voluptatem pariatur nemo. Voluptas consequatur repudiandae id et aspernatur dolorem occaecati. Reiciendis facilis perspiciatis molestiae itaque molestiae numquam eaque eaque. Nostrum nemo quaerat porro velit accusamus. Qui quo dignissimos fugiat dolorem. Aliquid deserunt qui eos aperiam culpa. A iusto nam itaque adipisci. Aut aliquam eos illum molestias.', 443, 609, 125, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(33, 'Rashadshire', 'velit-cupiditate-quo-tempore-dicta', 'Iusto porro molestiae temporibus quos quis fugiat officia dolores. Dolores enim non animi totam animi ut sed rerum. Expedita consectetur magni eius ipsam aperiam.', 'Et consequatur dolor quidem odio magnam. Occaecati non suscipit iste repellat. Reprehenderit deserunt rerum at et eaque officia vitae et. Voluptatem maxime sed dolor sunt totam. Qui pariatur esse consequatur ex alias suscipit adipisci. Dolorem aut officiis atque aut sit delectus repellat. Voluptates velit aut exercitationem ut delectus sunt. Officiis sequi exercitationem soluta ipsa delectus quibusdam vitae perferendis.', 415, 699, 193, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(34, 'Port Vernerstad', 'optio-amet-praesentium-beatae-reprehenderit', 'Iusto aliquam est consequuntur et voluptatem velit. Provident reiciendis distinctio voluptatem aut velit omnis quia.', 'Facilis est nostrum et sint sunt quo. Enim magni sint fugiat iste. Et voluptate deserunt officiis sed praesentium sapiente voluptatibus. Enim quia voluptatum aut id animi explicabo culpa assumenda. Distinctio aut velit aut voluptas ab a architecto ut. Voluptatem eos odio ratione minus perspiciatis harum nihil. Ad esse dolorem odit eius autem dolorem ullam. Et ipsam laboriosam rerum ea ipsa odio minus. Autem voluptatum ut nihil illo. Velit sed inventore voluptatem officia qui. Atque odio ea velit enim perferendis ipsam excepturi consequatur.', 359, 790, 130, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(35, 'Schoenborough', 'deleniti-ratione-exercitationem-et', 'Nisi illo in dolore aut. Aliquam eum ducimus suscipit est sunt praesentium et.', 'Dolor aut ut tenetur consequuntur. Soluta et consequuntur vero sint nostrum dicta. Dolore quis ex corporis sed aut. Consequatur maxime porro non nam. Enim quisquam praesentium consectetur. Inventore a magnam sunt voluptatem eaque natus ipsum placeat. Itaque aliquid eum laudantium sed velit.', 313, 646, 170, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(36, 'North Deonte', 'quia-et-et-id-nisi', 'Blanditiis eos corrupti tempora dolorem. Architecto voluptatem assumenda laboriosam nulla provident.', 'Ut quae iste corporis qui. Quis placeat optio est voluptate magnam. Et odio quam sit harum ex. Natus explicabo illum ducimus repudiandae at veritatis tenetur. Id unde est aperiam in quos ut. Veniam quaerat sit dicta et aspernatur voluptas.', 430, 864, 178, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(37, 'West Hectorton', 'voluptatem-sed-et-commodi-at-ducimus-optio', 'Molestiae fugit iure quos iure rerum ea. Nam quaerat reiciendis quos non cupiditate voluptate architecto.', 'Facilis vitae adipisci quaerat eaque sunt. Quidem nostrum dolore cupiditate consequatur. Excepturi blanditiis sit quis velit mollitia. Est est officia autem harum quo vel enim animi. Omnis iste nobis repudiandae quibusdam qui dolore. Reiciendis debitis accusamus modi aspernatur ex est.', 388, 844, 179, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(38, 'Lake Mayshire', 'autem-totam-cupiditate-pariatur-ea-molestiae-consequatur', 'Alias repudiandae dicta nobis ratione totam. Ipsam modi et alias culpa deleniti. Qui esse dignissimos esse voluptatem beatae libero eligendi.', 'Magni et corrupti ut minus provident optio et. Qui earum expedita adipisci dolore adipisci ut enim. Quo fuga aut eum molestiae debitis voluptates reiciendis. Eius fuga dolorum ut. Saepe minima totam consectetur. Et est laudantium nobis cupiditate voluptate et amet.', 308, 893, 146, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(39, 'Waltershire', 'id-ipsa-eveniet-quidem-doloremque', 'Enim quia commodi exercitationem voluptatum. Aut rem officiis beatae maxime quidem. Soluta doloribus a vitae est amet et voluptas consequatur.', 'Tempore dolores perspiciatis maiores nam consequatur. Possimus dolor veritatis repellat. At eligendi corrupti qui ab. Minima magni doloremque sint accusantium. Vitae delectus eos et dolorem. A velit omnis exercitationem adipisci non. Eos architecto sunt commodi rerum. Qui autem eius occaecati ratione quia. Tempore beatae ea sapiente nemo voluptate facere. Sed aut enim laborum aspernatur id. Eum dolor eius sint eos neque fuga rerum.', 355, 733, 112, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(40, 'Greenfelderville', 'maxime-nesciunt-vel-molestiae-incidunt-est-voluptatem', 'Accusamus aut iste quas non. Incidunt atque consequuntur et et voluptatem est nam. Fugit fuga soluta cumque amet dolorem.', 'Non eaque incidunt aut. Vel harum qui ipsa corrupti. Omnis omnis quia vel cumque ipsa repudiandae. Doloremque aut eligendi qui nesciunt. Et qui vitae et et. Id placeat ea sit rerum et consectetur. Asperiores deleniti quod officia maiores doloribus quas perferendis.', 433, 863, 125, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(41, 'Nicolasburgh', 'soluta-et-quas-sunt-laborum', 'Rerum eaque et sunt neque praesentium eaque. Voluptatem omnis sed quia nihil rerum aut animi ipsa.', 'Et quos optio maiores in in expedita aliquid. Aspernatur minus laboriosam voluptatibus et id. Recusandae rerum suscipit eos dolorum. Qui omnis qui quasi suscipit. Eveniet accusamus reprehenderit voluptatem nisi. Facilis consequatur tenetur omnis ad. Adipisci doloremque magni voluptas.', 465, 870, 115, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(42, 'East Dejuanbury', 'maiores-nihil-quae-quia-voluptas', 'Qui veritatis voluptatem aspernatur et. Ad iusto doloremque nisi a blanditiis.', 'Consequatur temporibus similique facere. Asperiores culpa voluptatum minus esse ut ducimus hic. Dolor aut ipsam modi nostrum facere accusantium. Voluptate eveniet rem assumenda deleniti. Et sed qui et. Exercitationem explicabo rem expedita necessitatibus quas dolorem dicta. Reprehenderit at neque totam quod. Ullam iste rerum odit eum porro dolorem quidem qui. Quo eum provident neque unde excepturi placeat labore. Dolorem voluptas tempore similique autem sit. Aliquid porro eos accusantium impedit iure consequatur et. Mollitia doloremque ducimus exercitationem eos architecto et.', 389, 837, 102, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(43, 'New Nikkiville', 'unde-ipsum-earum-quia', 'Mollitia exercitationem ipsum repudiandae. Laborum debitis hic et ut. Illo quibusdam aut praesentium consequatur blanditiis.', 'Autem qui hic aut omnis ex et non et. Quaerat quae ea sunt nobis ad soluta. Aut omnis minus iure quibusdam eos debitis. Ad molestiae quibusdam voluptate nesciunt reiciendis ut. Dolore nesciunt dicta in voluptatem possimus sit. Est qui consequatur iusto expedita eos. Est dolores commodi distinctio eum expedita praesentium. Maxime earum aspernatur itaque ad.', 485, 900, 100, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(44, 'Emmettmouth', 'explicabo-ullam-possimus-porro-assumenda-odio-quod', 'Et exercitationem rem quasi voluptas molestiae voluptas. Dolorem omnis impedit porro ut optio.', 'Sint voluptatem veritatis ea ut laudantium voluptas pariatur et. Quasi et expedita et saepe rerum nihil iusto. Molestias repellendus qui molestias ut ut sit distinctio. Autem reprehenderit laudantium et ut consequatur aperiam. Quis alias asperiores et molestiae. Aut consequatur beatae error ullam et quibusdam totam rerum. Et expedita possimus voluptatibus veniam quo.', 490, 829, 169, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(45, 'West Josefina', 'ipsum-itaque-expedita-iusto-animi-aut-nihil-sed', 'Dolorem deleniti nostrum voluptates rerum eveniet sit explicabo provident. Natus sunt aut tenetur esse animi dignissimos. Voluptas dicta et omnis aliquam aut deleniti voluptatibus ex.', 'Velit velit aut quia. Eum atque veritatis nam. Consequuntur quia doloribus dolorem neque labore. Voluptatem ex tenetur similique magnam deleniti sit quia. Excepturi hic totam in et. Sint aut labore et officia eveniet quod excepturi. Sit architecto saepe est optio temporibus recusandae. Sapiente et harum distinctio nam. Ducimus tenetur sunt ut exercitationem ut autem excepturi. Voluptatem praesentium dolor a harum distinctio. Impedit aliquid rerum non. Et eaque et facilis molestiae at facilis sint.', 319, 809, 146, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(46, 'East Sheldonfurt', 'est-et-perspiciatis-quia-ipsa-et', 'Pariatur nihil nemo perferendis rerum minus. Quos qui sunt molestiae ea accusamus.', 'Dolor quo omnis adipisci. Nulla sit ad itaque eaque repellat numquam quaerat dolores. Explicabo aliquam aut in dolor deserunt totam. Molestias velit aliquid deleniti nihil omnis quae. Eos et similique modi corrupti vero quis sit. Possimus asperiores saepe blanditiis nostrum. Labore omnis sint totam modi quis doloribus.', 445, 784, 139, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(47, 'Emilieton', 'illo-consequatur-delectus-voluptas-sunt-beatae-ducimus-qui-iste', 'Non aut dolore ad tempore. Eius dignissimos quo soluta nesciunt omnis.', 'Et ut cum exercitationem. Accusamus qui vero qui consequatur explicabo. Placeat ipsam ab veritatis sint quis nihil ratione. Quae incidunt dolor ut vel sint saepe. Libero sit id laudantium. Accusamus ipsum aut qui consequuntur enim odio amet excepturi.', 408, 723, 121, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(48, 'New Jaidenhaven', 'dignissimos-sit-consectetur-aut-a-et-repellendus-debitis', 'Deserunt ea recusandae praesentium ut. Omnis optio animi fuga et tempora voluptatem blanditiis. Ratione doloremque sint sunt similique quo molestiae.', 'Quibusdam numquam dicta deleniti impedit dolor. Non quis velit facere animi architecto optio quia. Earum soluta dolor aut. Vitae nostrum inventore et atque. Incidunt est laborum temporibus error natus voluptas. Rem distinctio explicabo dolor odit.', 438, 791, 172, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(49, 'Feestfurt', 'dolor-autem-consequatur-aut-magni-suscipit-accusantium-rerum', 'Eius asperiores pariatur ullam excepturi ducimus. Est veritatis excepturi debitis totam.', 'Voluptas inventore ipsa consectetur voluptatem sequi fugit non. Aliquam ut aut in minus quas. Aut nobis totam deserunt assumenda facilis aut. Consequatur fugit dolorum ut nisi alias rerum quod. Maxime illum quae omnis dolorum rem nulla adipisci. Quam placeat error nisi sint. Autem quaerat doloribus magni quod explicabo praesentium delectus harum. Fugit et quas ipsum recusandae dicta nostrum.', 345, 679, 174, '2023-03-07 03:48:24', '2023-03-07 03:48:24'),
(50, 'Bodefurt', 'maxime-autem-beatae-a-magnam', 'Dolores amet voluptatem cumque accusamus est sint dolores. Voluptatem fuga enim aut reprehenderit aut eaque. Dolores aspernatur aut eveniet occaecati.', 'Nostrum perferendis consectetur aliquam enim voluptatem qui. Inventore dolores totam natus unde. Necessitatibus fuga consequatur laborum nobis sit eos corporis. Ea dolor voluptatem ipsa maxime ab. Aperiam expedita asperiores consequatur aut est iure sunt asperiores. Aut saepe dignissimos sit atque magnam sunt. Culpa debitis et unde et quia natus non. Id nobis nesciunt sit enim possimus adipisci. Id quis perspiciatis est dolorem vel nostrum quia quibusdam.', 305, 603, 197, '2023-03-07 03:48:24', '2023-03-07 03:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `search_histories`
--

CREATE TABLE `search_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_histories`
--

INSERT INTO `search_histories` (`id`, `keywords`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'abc', 1, '2023-03-17 10:06:29', '2023-03-08 10:06:29'),
(2, 'North Naomieton', 1, '2023-03-08 10:07:14', '2023-03-08 10:07:14'),
(3, 'North Naomieton', 1, '2023-03-08 10:07:31', '2023-03-08 10:07:31'),
(4, 'North Naomieton', 1, '2023-03-08 10:07:46', '2023-03-08 10:07:46'),
(5, 'North Naomieton', 1, '2023-03-08 10:08:13', '2023-03-08 10:08:13'),
(6, 'North Naomieton', 1, '2023-03-08 10:08:28', '2023-03-08 10:08:28'),
(7, 'North Naomieton', 1, '2023-03-08 10:08:47', '2023-03-08 10:08:47'),
(8, 'North Naomieton', 1, '2023-03-08 10:09:16', '2023-03-08 10:09:16'),
(9, 'North Naomieton', 1, '2023-03-08 10:09:30', '2023-03-08 10:09:30'),
(10, 'North Naomieton', 1, '2023-03-08 10:09:44', '2023-03-08 10:09:44'),
(11, 'North Naomieton', 1, '2023-03-08 10:10:48', '2023-03-08 10:10:48'),
(12, 'North Naomieton', 1, '2023-03-08 10:12:11', '2023-03-08 10:12:11'),
(13, 'North', 1, '2023-03-08 10:12:27', '2023-03-08 10:12:27'),
(14, 'North', 1, '2023-03-08 10:12:32', '2023-03-08 10:12:32'),
(15, 'North', 1, '2023-03-08 10:13:02', '2023-03-08 10:13:02'),
(16, 'North', 1, '2023-03-08 10:13:33', '2023-03-08 10:13:33'),
(17, 'North', 1, '2023-03-08 10:13:52', '2023-03-08 10:13:52'),
(18, 'user 2 data', 2, '2023-03-08 10:24:18', '2023-03-08 10:24:18'),
(19, 'North Naomieton', 1, '2023-03-08 10:31:05', '2023-03-08 10:31:05'),
(20, 'North Naomieton', 1, '2023-03-08 10:32:47', '2023-03-08 10:32:47'),
(21, 'North Naomieton', 1, '2023-03-08 10:56:26', '2023-03-08 10:56:26'),
(22, 'North Naomieton', 1, '2023-03-08 10:57:59', '2023-03-08 10:57:59'),
(23, 'adfsdf', 1, '2023-03-10 13:54:54', '2023-03-10 13:54:54'),
(24, 'West Fannytown', 1, '2023-03-10 13:55:09', '2023-03-10 13:55:09'),
(25, 'West', 1, '2023-03-10 13:55:15', '2023-03-10 13:55:15'),
(26, 'North', 1, '2023-03-10 14:16:34', '2023-03-10 14:16:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Saiful Islam', 'saiful@gmail.com', NULL, '$2y$10$WbVmKyhS9/pCk3n180IKqu4gYChV9NULYvtRlDJG7VybHeVO4P0.m', NULL, '2023-03-07 03:49:02', '2023-03-07 03:49:02'),
(2, 'Sajid Mahmud', 'sajid@gmail.com', NULL, '$2y$10$2MkKU4V03smZuKj2htM9m.ZdLEGnEeY6OCh10HGUJGCdpzlLGkXva', NULL, '2023-03-07 03:49:34', '2023-03-07 03:49:34'),
(3, 'Mahi chowdhuri', 'mahi@gmail.com', NULL, '$2y$10$fPE6ApVt3ofgqyO0Y3PKzeGhTZO.wKwrwWUw6jpryEH7UV9AQiM1u', NULL, '2023-03-07 03:49:58', '2023-03-07 03:49:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_histories`
--
ALTER TABLE `search_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `search_histories`
--
ALTER TABLE `search_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
