-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2021 at 03:32 AM
-- Server version: 5.6.21
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `essence`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_image` varchar(250) NOT NULL,
  `describe` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_image`, `describe`, `created_at`) VALUES
(1, 'Women', 'https://res.cloudinary.com/anlqn/image/upload/v1596591877/react_image/nnwwcfrtnxip4su96vyn.jpg', 'This is my women shop', '2020-08-04 01:27:33'),
(2, 'Children', 'https://res.cloudinary.com/anlqn/image/upload/v1596591918/react_image/diqduzkugfypolfwqouq.jpg', 'This is my children shop', '2020-08-04 14:14:05'),
(3, 'Men', 'https://res.cloudinary.com/anlqn/image/upload/v1596591976/react_image/qxu4j5nhts82hbjxydb8.jpg', 'This is my men shop', '2020-08-05 01:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'Le Quang Ngoc An', 'lequangngocan@gmail.com', 'Test Contact', 'The first test', '2020-08-08 16:34:09'),
(2, 'An Le Quang Ngoc', 'anlqnph07584@fpt.edu.vn', 'Test contact 2', 'The second test', '2020-08-08 16:35:57'),
(3, 'Lê Quang Ngọc An', 'anlqnph07584@fpt.edu.vn', 'Test contact', 'This is my contact', '2020-08-10 06:46:05'),
(4, 'Lê Quang Ngọc An', 'anlqnph07584@fpt.edu.vn', 'test', 'Test', '2020-08-17 14:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
`id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `news_category_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `content`, `news_category_id`, `created_at`) VALUES
(20, 'NORDSTROM SALE TRY ON HAUL: MY FAVORITE BUYS', 'https://res.cloudinary.com/anlqn/image/upload/v1596762050/react_image/gbfa8skblz0qhodipqxq.jpg', '<p>Nordstrom sale try on haul time! I wanted to drop it down this year and not show a million outfits but more staple items and at good price points so almost everything is under $100 and they are pieces you can wear a lot of different ways! Also a lot of loungewear since things aren’t really “back to normal” yet and I know so many of us are working from home.</p><p>&nbsp;</p><figure class="image"><img src="https://www.hellofashionblog.com/wp-content/uploads/2020/08/Photo-Aug-03-12-15-17-PM-rotated.jpg" alt="what to buy from the nordstrom sale" srcset="https://www.hellofashionblog.com/wp-content/uploads/2020/08/Photo-Aug-03-12-15-17-PM-rotated.jpg 1360w, https://www.hellofashionblog.com/wp-content/uploads/2020/08/Photo-Aug-03-12-15-17-PM-720x960.jpg 720w, https://www.hellofashionblog.com/wp-content/uploads/2020/08/Photo-Aug-03-12-15-17-PM-1024x1365.jpg 1024w, https://www.hellofashionblog.com/wp-content/uploads/2020/08/Photo-Aug-03-12-15-17-PM-768x1024.jpg 768w, https://www.hellofashionblog.com/wp-content/uploads/2020/08/Photo-Aug-03-12-15-17-PM-1152x1536.jpg 1152w" sizes="100vw" width="1360"></figure><h2><a href="https://bit.ly/2PrFCYB">HALOGEN CAMEL TRENCH COAT</a></h2><p>Size: True to Size – Wearing Size S</p><p><strong>Sale Price: $149.90</strong> (Regular Price: $249)</p><p><a href="https://bit.ly/2Dwob6C">This coat</a>, in the one color and silhouette that has never gone out of style, is a style staple. Whether you layer it over a dress for date night, trousers for the office, or a simple cropped tee with denim, it’s the more effortless outerwear piece. <a href="https://bit.ly/2Dwob6C">This wool one</a> will be in your wardrobe rotation for years and years to come.</p><h2><a href="https://bit.ly/31dn2cp">LEITH RIB SLEEVELESS MIDI DRESS</a></h2><p>Size: Wearing Size M – Size up for less of a bodycon fit</p><p><strong>Sale Price: $45.90 </strong>(Regular Price: $69)</p><p>Love <a href="https://bit.ly/31dn2cp">this cute ribbed dress</a> under $50. The high neckline and slit are the perfect combo! <a href="https://bit.ly/3gqmKFB">These ribbed midi dresses</a> are like a unicorn – they are just as easy to dress up with heels as to dress down in sneakers. (Also comes in black and has a cute cut out in the back.)</p><h2><a href="https://bit.ly/2XkTLev">PASTEL LOW NIKE BLAZERS</a></h2><p>Size: True to size – Wearing Size 8</p><p><strong>Sale Price: $49.90 </strong>(Regular Price: $75)</p><p>I love a little pop of color and these unexpected neutral pops make <a href="https://bit.ly/2XkTLev">this shoe</a> very versatile. Under $50, they are a steal.</p>', 2, '2020-08-07 01:02:09'),
(21, 'HEALTHY BREAKFAST RECIPE: CHIA SEED PARFAIT', 'https://res.cloudinary.com/anlqn/image/upload/v1596762401/react_image/g8vix6caxwbmveyyu6gu.jpg', '<p>Happy Monday guys! Sharing this yummy healthy breakfast recipe with you. When you get a healthy breakfast in it boosts your brain stimulation, gives essential nutrients you need for the day, contributes to heart health, reduces metabolic syndrome, improves skin, and stabilizes energy levels. My usual breakfast is a bowl of oatmeal, I like to switch it up once in a while and incorporate some superfoods. I’ve started making chia seed pudding in these cute mason jars <a href="https://bit.ly/31gUbDY">(similar here)</a> mixed with protein bites, it has a &nbsp;massive amount of nutrients like antioxidants, Omega-3, and fiber- here’s the recipe I used:</p><p>&nbsp;</p><figure class="image"><img src="https://www.hellofashionblog.com/wp-content/uploads/2020/07/IMG_2299-scaled-e1596039870220.jpg" alt="Peanut butter chia seed parfait."></figure><p><strong>RECIPE</strong></p><p>Ingredients:</p><ul><li>1 cup unsweetened almond milk</li><li>3 Tablespoons chia seeds</li><li>1 Tablespoon&nbsp;honey</li><li>2 Tablespoons peanut butter</li><li>1/4 teaspoon vanilla</li><li>Toppings: extra peanut butter, raspberries, perfect bar protein squares</li></ul><p>Directions:</p><ol><li>Whisk together almond milk, chia seeds, honey, peanut butter, and vanilla. Make sure to keep whisking until the peanut butter is dispersed. Let the mixture sit for five minutes and whisk again to remove any clumps. Place in the fridge to set- I kept it overnight but I noticed they started expanding after about an hour!</li><li>When ready to eat, top with a drizzle of peanut butter, add some perfect bar protein squares, and raspberries. I also thought blueberries and granola would be yummy options too! I love <a href="https://bit.ly/3k6Wzpo">these</a> gold spoons to eat with to make it extra pretty!</li></ol>', 3, '2020-08-07 01:07:39'),
(22, 'SUMMER NIGHTS 2', 'https://res.cloudinary.com/anlqn/image/upload/v1596762560/react_image/imlvnbgbbsdetalbacwh.jpg', '<p>Summer sunsets 2 where we live are absolutely stunning. Our favorite part of the day (and clearly Ollie’s!) is after dinner going out for a walk to watch the sun go down. There’s just something about summer nights that just make you so happy. Beckam loves to ride his bike and Ollie wants to be big and walk so bad but loves to be pushed around in the stroller! I have to be cozy when we go on our walks so I love this <a href="https://bit.ly/36PSwrq">tie-dye hoodie</a> because it’s the right amount of comfy but really light so it’s not too hot during the summer – and who doesn’t love a tie dye print to match the sunset?! <a href="https://bit.ly/3fcCf30">These</a> pants are super lightweight as well and fit baggier so they almost feel like thin sweatpants! Cody is all about lightweight in the summer too. He loves these <a href="https://bit.ly/2XppWKp">navy shorts</a>, and <a href="https://bit.ly/2XnWTH6">this</a> thin button-up. Even though it’s been a different vibe this summer, I love that it has been super laid back where we can just focus on really being together and genuinely enjoy the little moments we take for granted! What is your favorite part of the day with your family?</p><figure class="image"><img src="https://www.hellofashionblog.com/wp-content/uploads/2020/07/IG-1-a-scaled-e1594221392738.jpg" alt="tie dye sweats"></figure><figure class="image"><img src="https://www.hellofashionblog.com/wp-content/uploads/2020/07/IG-2-scaled-e1594221405414.jpg" alt="father and son"></figure>', 2, '2020-08-07 01:10:34'),
(23, 'SUMMER NIGHTS', 'https://res.cloudinary.com/anlqn/image/upload/v1597499750/react_image/wmjd0kstadtyqs3rbfwz.jpg', '<p>Summer sunsets where we live are absolutely stunning. Our favorite part of the day (and clearly Ollie’s!) is after dinner going out for a walk to watch the sun go down. There’s just something about summer nights that just make you so happy. Beckam loves to ride his bike and Ollie wants to be big and walk so bad but loves to be pushed around in the stroller! I have to be cozy when we go on our walks so I love this <a href="https://bit.ly/36PSwrq">tie-dye hoodie</a> because it’s the right amount of comfy but really light so it’s not too hot during the summer – and who doesn’t love a tie dye print to match the sunset?! <a href="https://bit.ly/3fcCf30">These</a> pants are super lightweight as well and fit baggier so they almost feel like thin sweatpants! Cody is all about lightweight in the summer too. He loves these <a href="https://bit.ly/2XppWKp">navy shorts</a>, and <a href="https://bit.ly/2XnWTH6">this</a> thin button-up. Even though it’s been a different vibe this summer, I love that it has been super laid back where we can just focus on really being together and genuinely enjoy the little moments we take for granted! What is your favorite part of the day with your family?</p><figure class="image"><img src="https://www.hellofashionblog.com/wp-content/uploads/2020/07/IG-1-a-scaled-e1594221392738.jpg" alt="tie dye sweats"></figure><figure class="image"><img src="https://www.hellofashionblog.com/wp-content/uploads/2020/07/IG-2-scaled-e1594221405414.jpg" alt="father and son"></figure>', 1, '2020-08-12 09:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `news_category`
--

CREATE TABLE IF NOT EXISTS `news_category` (
`id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_category`
--

INSERT INTO `news_category` (`id`, `category_name`, `created_at`) VALUES
(1, 'Men Fashion', '2020-08-05 14:53:42'),
(2, 'Women Fashion', '2020-08-05 14:54:01'),
(3, 'Child Fashion', '2020-08-05 14:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_image_1` varchar(250) NOT NULL,
  `product_image_2` varchar(250) NOT NULL,
  `price` int(100) NOT NULL,
  `sale_price` int(100) NOT NULL,
  `amount` int(100) NOT NULL DEFAULT '0',
  `review` text NOT NULL,
  `detail` text NOT NULL,
  `views` int(100) NOT NULL DEFAULT '0',
  `categoryID` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_image_1`, `product_image_2`, `price`, `sale_price`, `amount`, `review`, `detail`, `views`, `categoryID`, `created_at`) VALUES
(3, 'Skinny push-up jeans', 'https://res.cloudinary.com/anlqn/image/upload/v1596853076/react_image/sorwhwmhoxhke4huaxj8.jpg', 'https://res.cloudinary.com/anlqn/image/upload/v1596853077/react_image/ocpyaead8ilcloce0s1k.jpg', 45, 40, 100, 'The model measures 177 cm', '<ul><li><strong>Collection</strong>&nbsp;:&nbsp; Fall/Winter 2020</li><li><strong>Composition : </strong>82% Cotton, 15% Polyester, 3% Elastane</li></ul>', 0, 1, '2020-08-08 02:19:38'),
(4, 'Printed blouse', 'https://res.cloudinary.com/anlqn/image/upload/v1596853264/react_image/j8n5nlknkgby2z4kjcas.jpg', 'https://res.cloudinary.com/anlqn/image/upload/v1596853266/react_image/ha5grig4ecb8yw3dxzd2.jpg', 33, 29, 100, 'Wrap blouse, long sleeve. The model measures 178cm and wears M. Length:50cm', '<ul><li><strong>Collection</strong>&nbsp;:&nbsp; Spring/Summer 2019</li><li><strong>Composition : </strong>70% Cotton, 30% Polyester</li></ul>', 0, 1, '2020-08-08 02:21:56'),
(5, 'Denim shirt', 'https://res.cloudinary.com/anlqn/image/upload/v1596853423/react_image/hf2tlzohgo5rvuuuj0rv.jpg', 'https://res.cloudinary.com/anlqn/image/upload/v1596853428/react_image/lvmklg4dakwptnk5cg1l.jpg', 46, 39, 100, 'Shirt with ripped hem. The model measures 170cm and wears M. Length:70cm', '<ul><li><strong>Collection</strong>&nbsp;:&nbsp; Spring/Summer 2019</li><li><strong>Composition : </strong>100% Cotton</li></ul>', 0, 1, '2020-08-08 02:24:21'),
(6, 'Blouson MTX', 'https://res.cloudinary.com/anlqn/image/upload/v1596855927/react_image/ocwx6aa8tkv6uhziqbc4.jpg', 'https://res.cloudinary.com/anlqn/image/upload/v1596855928/react_image/n0cmeu4azpwmgx97kopx.jpg', 77, 69, 100, 'The model measures 177 cm', '<ul><li><strong>Collection</strong>&nbsp;:&nbsp; Fall/Winter 2020</li><li><strong>Composition : </strong>100% Polyester</li></ul>', 0, 3, '2020-08-08 03:06:07'),
(7, 'BERMUDA MTX', 'https://res.cloudinary.com/anlqn/image/upload/v1596856094/react_image/w1vzo5he6nnnj6dn829q.jpg', 'https://res.cloudinary.com/anlqn/image/upload/v1596856095/react_image/ysrlguqgj5saexb1migu.jpg', 20, 15, 0, 'Wrap blouse, long sleeve.', '<ul><li><strong>Collection</strong>&nbsp;:&nbsp; Spring/Summer 2020</li><li><strong>Composition : </strong>98% Cotton, 2% Elastane</li></ul>', 0, 3, '2020-08-08 03:08:47'),
(8, 'BERMUDA MTX', 'https://res.cloudinary.com/anlqn/image/upload/v1596856154/react_image/usopfxylkxybs1wwb8zw.jpg', 'https://res.cloudinary.com/anlqn/image/upload/v1596856155/react_image/zjrftcqvo1ekwyropksf.jpg', 19, 14, 100, 'The model measures 178cm and wears M. Length:50cm', '<ul><li><strong>Collection</strong>&nbsp;:&nbsp; Spring/Summer 2020</li><li><strong>Composition : </strong>97% Cotton, 3% Elastane</li></ul>', 0, 3, '2020-08-08 03:09:44'),
(9, 'Short sleeves T-shirt with BLACK PANTHER logo', 'https://res.cloudinary.com/anlqn/image/upload/v1596856347/react_image/q5zax2x0meqmuofu9x3d.jpg', 'https://res.cloudinary.com/anlqn/image/upload/v1596856349/react_image/vc504l1tdsqewcvzfpxk.jpg', 55, 49, 100, 'Short sleeves T-shirt with BLACK PANTHER logo', '<ul><li><strong>Collection</strong>&nbsp;:&nbsp; Spring/Summer 2020</li><li><strong>Composition : </strong>100% Cotton</li></ul>', 0, 2, '2020-08-08 03:12:55'),
(10, 'Swim boxer AVENGERS', 'https://res.cloudinary.com/anlqn/image/upload/v1596856409/react_image/oa8o31ubg37zp9nnshwy.jpg', 'https://res.cloudinary.com/anlqn/image/upload/v1596856411/react_image/oej3hnrcb51limiq1ecv.jpg', 19, 14, 2, 'Swim boxer AVENGERS', '<ul><li><strong>Collection</strong>&nbsp;:&nbsp; Spring/Summer 2020</li><li><strong>Composition : </strong>85% Polyester, 15% Elastane</li></ul>', 0, 2, '2020-08-08 03:13:59'),
(11, 'HOODIE AVENGERS', 'https://res.cloudinary.com/anlqn/image/upload/v1596856515/react_image/i91lwkytc8tbbfiyvysh.jpg', 'https://res.cloudinary.com/anlqn/image/upload/v1596856517/react_image/nfat8ig1jpsbbwsbovtb.jpg', 49, 39, 0, 'Hoodie special with Avengers logo !', '<ul><li><strong>Collection</strong>&nbsp;:&nbsp; Spring/Summer 2019</li><li><strong>Composition : </strong>65% Polyester, 35% Cotton</li></ul>', 0, 2, '2020-08-08 03:16:08'),
(12, 'Deer Run Farms Boston Lettuce', 'https://res.cloudinary.com/anlqn/image/upload/v1597025148/react_image/yo050gbamtaivr8mhgrz.jpg', 'https://res.cloudinary.com/anlqn/image/upload/v1597025150/react_image/i0xotqecu5bnd9ngb308.jpg', 3000, 2000, 200, 'The model measures 177 cm', '<p>AHBHDHDB</p>', 0, 1, '2020-08-10 02:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
`id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone_number` int(100) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `company_name`, `logo`, `image`, `address`, `email`, `phone_number`, `about`) VALUES
(1, 'ESSENCE FASHION COMPANY', 'https://res.cloudinary.com/anlqn/image/upload/v1596858521/react_image/g1mkemxweiaetazkcpop.png', 'https://res.cloudinary.com/anlqn/image/upload/v1596877294/react_image/sgjs6de0udl7egelxvje.jpg', '79/44 Nghia Lo street, Ha Dong district, Ha Noi city', 'lequangngocan@gmail.com', 387210034, 'ESSENCE FASHION SHOPS est une plateforme Marketplace dédiée aux professionnels de la mode.\r\nESSENCE  FASHION SHOPS a pour vocation d’offrir à toutes les marques et grossistes de la mode de vêtements femme, homme, enfant, lingerie, chaussures, beauté, maroquinerie et accessoires de mode, la possibilité d’exposer et de vendre leurs créations sur Internet, directement aux boutiques professionnelles.\r\nESSENCE FASHION SHOPS offre à tous les acheteurs professionnels, boutiques et acteurs de la mode, le moyen de faire leurs achats 24/7, à distance, de manière simple, sécurisée et sans surcoût.');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
`id` int(11) NOT NULL,
  `content` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `content`) VALUES
(1, 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`), ADD KEY `news_category_id` (`news_category_id`);

--
-- Indexes for table `news_category`
--
ALTER TABLE `news_category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`), ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `news_category`
--
ALTER TABLE `news_category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`news_category_id`) REFERENCES `news_category` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
