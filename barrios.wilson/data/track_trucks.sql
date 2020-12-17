-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2020 at 10:00 PM
-- Server version: 10.2.36-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wilsonbarrios_aawm`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_trucks`
--

CREATE TABLE `track_trucks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `type` varchar(64) NOT NULL,
  `dishes` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_trucks`
--

INSERT INTO `track_trucks` (`id`, `user_id`, `name`, `type`, `dishes`, `description`, `img`, `date_create`) VALUES
(1, 4, 'Oronoko', 'burgers', 'nachos', 'Adipisicing consectetur eu tempor dolore cillum est aliquip. Lorem sunt pariatur officia sint cillum voluptate officia culpa amet tempor esse aliquip nostrud. Voluptate cupidatat fugiat in eu anim est id esse fugiat et est ut.', 'uploads/1608181591.0103_doc.jpg', '2020-01-08 04:35:29'),
(2, 6, 'Top Dog', 'burgers', 'frys', 'Irure do aliqua veniam exercitation officia non occaecat mollit aute commodo tempor. Amet laborum pariatur irure officia in fugiat. Amet nostrud labore magna cillum cupidatat enim culpa.', 'uploads/1608227941.5905_5.jpg', '2020-08-05 03:32:11'),
(3, 10, 'Mexicanos', 'mexican', 'tacos', 'Duis velit laborum et eu qui excepteur consequat velit occaecat anim aliquip. Occaecat est do sint enim ullamco. Eiusmod eiusmod voluptate aliquip culpa cupidatat consequat sunt pariatur ullamco reprehenderit aliqua dolor.', 'uploads/1608231165.9175_mexicolindo.jpg', '2020-02-26 07:57:01'),
(4, 8, 'Mitchels', 'mexican', 'tacos', 'Magna est elit eu deserunt nulla et quis consectetur deserunt. Lorem deserunt sunt magna est excepteur anim adipisicing. Culpa consequat ad tempor veniam sint adipisicing aliqua magna consectetur.', 'uploads/1608230194.877_i9.jpg', '2020-07-28 09:16:19'),
(5, 9, 'Good Dog', 'burgers', 'frys', 'Pariatur tempor laborum consequat eiusmod laboris et. Est culpa voluptate enim incididunt voluptate. Labore officia laborum minim laboris elit amet qui consectetur aliqua incididunt ipsum incididunt culpa magna.', 'uploads/1608230753.0924_11.jpg', '2020-06-15 04:39:37'),
(6, 4, 'Santo Truck', 'mexican', 'burritos', 'Cillum do fugiat duis velit eu incididunt aute aute est adipisicing sunt tempor voluptate pariatur. Laborum ex ex quis consectetur consequat id eiusmod sunt. Incididunt ipsum ullamco dolore tempor irure occaecat est fugiat cupidatat deserunt est enim est.', 'uploads/1608181470.6674_santiago.jpg', '2020-07-11 01:20:42'),
(7, 4, 'Gallaxia', 'mexican', 'sopes', 'Ullamco magna minim proident laboris minim qui in velit occaecat do. Elit ut do velit do ullamco minim in cupidatat elit deserunt pariatur officia. Dolor cupidatat fugiat ipsum consectetur.', 'uploads/1608181573.1655_senors.jpg', '2020-04-26 07:49:35'),
(8, 9, 'Viagrand', 'italian', 'pasta', 'Aute proident adipisicing eiusmod culpa do qui pariatur aute amet adipisicing. Esse excepteur magna sunt excepteur velit ipsum id adipisicing deserunt exercitation et do deserunt anim. Duis Lorem commodo laboris nisi esse ea aute voluptate laboris.', 'uploads/1608230781.2451_i2.jpg', '2020-03-21 02:50:22'),
(9, 6, 'Here is', 'burgers', 'Corn Dog', 'Consequat culpa pariatur incididunt voluptate enim. Esse sit magna culpa consequat dolore cillum consectetur id nisi. Dolore ut ea cillum aute aliqua eiusmod anim mollit.', 'uploads/1608227968.2798_4.jpg', '2020-07-21 05:57:07'),
(10, 4, 'Zytrex', 'italian', 'pasta', 'Ea elit tempor cillum tempor irure officia deserunt enim dolore ut. Culpa commodo minim pariatur sit officia magna non. Excepteur non labore incididunt culpa elit aute ipsum quis veniam adipisicing ad duis.', 'https://via.placeholder.com/400/854/fff/?text=Zytrex', '2020-04-08 02:44:40'),
(11, 8, 'Here is it', 'burgers', 'frys', 'Fugiat sint excepteur eu anim veniam sint. Aliqua ullamco incididunt occaecat ea voluptate labore. Eiusmod cillum irure in nulla qui in fugiat amet elit enim ea.', 'uploads/1608230239.1026_4.jpg', '2020-09-02 06:22:10'),
(12, 1, 'Zilodyne', 'mexican', 'tacos', 'Tempor velit fugiat est ullamco aliqua in adipisicing aute irure dolor Lorem aliqua nulla sit. Qui do commodo minim incididunt excepteur. Veniam amet eu enim cupidatat officia nisi et esse dolor nisi sunt est ipsum.', 'https://via.placeholder.com/400/941/fff/?text=Zilodyne', '2020-09-13 05:34:05'),
(13, 8, 'Mayo', 'mexican', 'burritos', 'Cillum ad labore tempor aliqua mollit et amet occaecat. Aliquip cillum aliquip ut excepteur nostrud in ullamco proident pariatur qui id nulla commodo ad. Pariatur nisi excepteur mollit ad reprehenderit.', 'uploads/1608230295.8788_i5.jpg', '2020-07-04 08:33:27'),
(14, 4, 'Waterbaby', 'italian', 'pizza', 'Exercitation id ad tempor in deserunt deserunt excepteur dolore tempor amet esse enim excepteur deserunt. Amet dolore ea sint do sint ex irure excepteur. Cillum quis aliqua ipsum ex consequat adipisicing proident do qui veniam.', 'https://via.placeholder.com/400/866/fff/?text=Waterbaby', '2020-08-18 12:32:43'),
(15, 4, 'Quiltigen', 'italian', 'pasta', 'Anim tempor officia ut incididunt consequat. Ex adipisicing nulla officia magna amet proident non proident. Ex excepteur irure amet exercitation consequat eiusmod enim.', 'https://via.placeholder.com/400/930/fff/?text=Quiltigen', '2020-08-09 08:56:56'),
(16, 3, 'Burgatory', 'burgers', 'hotdogs', 'Officia consectetur irure dolore laboris dolor. Nulla ad duis aute proident in. Aliqua amet veniam nulla mollit magna anim aute dolore sit cillum aliqua fugiat.', 'uploads/1608156266.0347_burgatory.jpg', '2020-09-20 03:18:43'),
(17, 3, 'La Bonita', 'mexican', 'tacos', 'Est commodo pariatur quis exercitation excepteur magna commodo et nisi. Mollit minim pariatur nulla ut quis laboris consectetur consequat. Cillum amet ex eiusmod esse ipsum quis occaecat.', 'uploads/1608156852.644_labonita.jpg', '2020-04-05 10:09:10'),
(18, 2, 'Exozent', 'italian', 'pizza', 'Veniam eu laborum Lorem aute laborum aliqua tempor adipisicing laboris occaecat nulla qui. Eiusmod voluptate irure eiusmod cupidatat commodo laboris consequat enim. Ut non do nisi in non laborum pariatur.', 'https://via.placeholder.com/400/999/fff/?text=Exozent', '2020-07-25 12:43:51'),
(19, 10, 'Maria Bonita', 'mexican', 'tacos', 'Non exercitation laborum ipsum tempor velit eu laborum culpa ad dolor quis minim consectetur labore. Ut veniam deserunt incididunt ad esse aute amet. Pariatur irure Lorem aliquip mollit labore quis.', 'uploads/1608231364.3774_m10.jpg', '2020-01-25 02:34:11'),
(20, 8, 'The Hot', 'burgers', 'frys', 'Duis officia nisi aliquip do nulla velit enim sunt magna culpa. Proident eiusmod elit do exercitation consectetur ullamco et adipisicing adipisicing. Eiusmod elit amet deserunt occaecat dolor mollit eiusmod qui anim officia.', 'uploads/1608230219.4831_3.jpg', '2020-04-25 07:03:36'),
(21, 1, 'Suretech', 'italian', 'pasta', 'Laboris anim labore aute proident duis aliquip. Velit quis est sunt sunt. Ea laborum irure elit commodo magna nulla id cupidatat officia cupidatat.', 'https://via.placeholder.com/400/768/fff/?text=Suretech', '2020-03-23 11:06:29'),
(22, 9, 'Teds', 'burgers', 'nachos', 'Ea consectetur elit ea velit adipisicing. Aliqua labore ut eu qui officia laboris officia commodo fugiat aliquip et. In mollit pariatur irure officia velit adipisicing reprehenderit ut quis.', 'uploads/1608230798.6032_10.jpg', '2020-02-23 12:46:05'),
(23, 4, 'Bugsall', 'mexican', 'sopes', 'Consectetur minim veniam laboris cillum fugiat occaecat ullamco nulla consectetur id anim. Esse in adipisicing qui incididunt dolor irure ipsum anim adipisicing fugiat laboris. Eiusmod deserunt sit ex veniam qui.', 'https://via.placeholder.com/400/727/fff/?text=Bugsall', '2020-10-05 04:58:09'),
(24, 2, 'Fortean', 'mexican', 'sopes', 'Non nulla commodo enim sunt non esse excepteur do commodo tempor eiusmod qui. Qui ut fugiat sit veniam sint ullamco in in sunt dolor. Mollit eu voluptate magna ad labore nulla deserunt proident pariatur fugiat culpa culpa.', 'https://via.placeholder.com/400/828/fff/?text=Fortean', '2020-06-19 09:37:50'),
(25, 8, 'Two Dudes', 'mexican', 'sopes', 'Duis ullamco eiusmod nostrud ea amet et culpa duis proident consectetur amet non et. Exercitation eu anim sit dolor nisi tempor quis occaecat. Nisi nulla eiusmod irure exercitation duis nisi non in excepteur dolore duis occaecat.', 'uploads/1608230272.5623_i8.jpg', '2020-01-04 11:29:14'),
(26, 9, 'Caliente', 'mexican', 'sopes', 'Eiusmod nisi mollit in quis ut consectetur. Consectetur aliquip ea ad in cupidatat reprehenderit consequat. Aute in esse ut anim non amet.', 'uploads/1608230835.0496_i6.jpg', '2020-10-06 03:37:45'),
(27, 5, 'So Big', 'burgers', 'frys', 'Ex excepteur est id sit consectetur ut anim fugiat. Sunt quis mollit amet ad excepteur et eiusmod. Commodo cillum mollit velit consectetur anim pariatur ut nostrud sunt cillum ad occaecat.', 'uploads/1608227651.5502_1.jpg', '2020-01-28 08:07:21'),
(28, 3, 'Calle Mexico', 'mexican', 'burritos', 'Est officia labore ullamco irure anim deserunt eiusmod ullamco occaecat sunt enim irure elit quis. Et anim et officia nisi sit exercitation officia tempor voluptate laboris. Ullamco et velit duis sunt aliqua voluptate sit culpa.', 'uploads/1608157107.7429_callemexico.jpg', '2020-09-08 07:11:29'),
(29, 5, 'Dominigos', 'mexican', 'burritos', 'Cillum nisi nostrud veniam duis nostrud culpa. Aute nulla amet ut occaecat sint deserunt eu cillum voluptate laboris id aliquip amet exercitation. Anim deserunt id cillum proident nulla et minim est ea mollit ullamco qui.', 'uploads/1608227673.4682_2.jpg', '2020-03-09 03:07:49'),
(30, 7, 'Ritas', 'mexican', 'sopes', 'Ex ipsum ullamco voluptate deserunt commodo nostrud. Est tempor laboris sunt commodo do et mollit nulla. Id tempor cupidatat amet velit laborum laboris.', 'uploads/1608228340.2172_m2.jpg', '2020-02-19 04:42:34'),
(31, 3, 'Box Car', 'mexican', 'burritos', 'Aliqua nisi nulla in ea aute ex velit incididunt culpa nostrud sit. Labore et et aliquip do deserunt ullamco. Nisi cupidatat cupidatat et eu velit nisi sint do ut aliquip veniam eiusmod excepteur exercitation.', 'uploads/1608157129.9802_boxcar.jpg', '2020-08-24 05:49:15'),
(32, 3, 'Taco Bus', 'mexican', 'tacos', 'Tempor laborum laboris irure aliqua excepteur laborum cillum ipsum occaecat. Veniam dolore cupidatat amet exercitation amet velit officia ullamco. Velit voluptate voluptate nostrud in ea Lorem fugiat ipsum aliquip.', 'uploads/1608157148.521_tacobus.jpg', '2020-05-09 07:18:46'),
(33, 3, 'Senors', 'mexican', 'tacos', 'Occaecat do dolor voluptate qui magna. Aliqua cillum dolor sit magna id quis pariatur tempor et magna ex. Mollit excepteur officia duis deserunt deserunt do tempor.', 'uploads/1608157170.9209_senors.jpg', '2020-04-11 06:35:12'),
(34, 5, 'Pinos', 'italian', 'pasta', 'Sunt aliquip minim qui anim aliqua est laborum velit quis. Pariatur do fugiat ex mollit. Anim est sint sit consequat enim aute veniam amet ad aliquip cillum dolor ea aute.', 'uploads/1608227830.5164_i3.jpg', '2020-01-01 04:16:27'),
(35, 3, 'Santiago', 'mexican', 'tacos', 'Sit quis et amet laborum eu nostrud eu laborum aliqua ullamco ex aute cupidatat. Nostrud ipsum ex non ex veniam. Non sit consectetur incididunt cupidatat culpa ad id eu.', 'uploads/1608157195.646_santiago+.jpg', '2020-07-18 11:50:13'),
(36, 10, 'El Cabrito', 'mexican', 'burritos', 'Magna exercitation commodo esse nulla. Sint labore ea ullamco elit eiusmod anim ex aliqua anim exercitation. Dolore nostrud dolor ex et nisi exercitation eiusmod est magna ad.', 'uploads/1608231387.2163_m9.jpg', '2020-10-07 02:51:21'),
(37, 3, 'Roma', 'italian', 'pizza', 'Ipsum deserunt quis eu ullamco est pariatur sunt aliqua labore cillum do sit proident consectetur. Amet fugiat cupidatat occaecat eiusmod non in ipsum minim quis sit aliqua sit. Mollit sit in sit proident est voluptate.', 'uploads/1608157291.6292_mexicolindo.jpg', '2020-05-01 06:42:57'),
(38, 1, 'Hometown', 'burgers', 'hotdogs', 'Ullamco in culpa adipisicing aute dolore officia voluptate pariatur. Nostrud ipsum ut labore proident culpa dolore excepteur velit elit. Ex amet proident excepteur cillum laboris laborum nulla est minim quis officia anim adipisicing.', 'https://via.placeholder.com/400/983/fff/?text=Hometown', '2020-02-18 05:19:09'),
(39, 7, 'Las Nortenas', 'mexican', 'sopes', 'Do occaecat sunt nostrud pariatur ex eu. Consequat ipsum laboris non aliquip irure laborum nostrud et dolor laborum duis labore quis velit. Aute nisi cillum veniam adipisicing.', 'uploads/1608228317.6507_m1.jpg', '2020-06-24 06:35:16'),
(40, 3, 'Chanchos', 'italian', 'lasana', 'Cillum deserunt et cillum esse proident. Duis dolor duis irure elit aliqua excepteur. Duis consectetur exercitation fugiat labore ea Lorem tempor nisi eiusmod minim est.', 'uploads/1608157364.8138_chanchos.jpg', '2020-04-13 12:08:46'),
(41, 3, 'Sabrossa', 'italian', 'pasta', 'Consectetur et sunt culpa irure nisi commodo consectetur cillum. Eu mollit consectetur sunt mollit duis ullamco duis ullamco eiusmod pariatur aute voluptate. Adipisicing cupidatat fugiat in minim nisi ullamco consequat do.', 'uploads/1608157467.6666_sabrossa.jpg', '2020-07-09 05:51:09'),
(42, 9, '3 Girls', 'italian', 'pizza', 'Consequat consequat aute veniam ad qui cillum. Nostrud elit exercitation mollit consectetur exercitation dolor irure fugiat consequat sint commodo laborum excepteur elit. Consectetur amet pariatur consectetur eiusmod ea tempor labore consequat occaecat nulla cillum.', 'uploads/1608231044.1299_i18.jpg', '2020-01-12 07:12:46'),
(43, 2, 'Obones', 'italian', 'pasta', 'Ea duis minim deserunt occaecat nulla quis. Anim laborum do velit sint veniam quis eu ad id ea. Adipisicing excepteur consequat laboris veniam labore excepteur aliquip mollit labore veniam elit.', 'https://via.placeholder.com/400/773/fff/?text=Obones', '2020-05-23 11:12:12'),
(44, 7, 'Pomodoro', 'italian', 'pasta', 'Ad id laborum ad commodo anim ullamco occaecat ipsum et non. Do minim magna pariatur nulla anim. Tempor aute dolor ea adipisicing reprehenderit.', 'uploads/1608229625.4902_i4.jpg', '2020-01-18 09:56:37'),
(45, 1, 'Applica', 'italian', 'pasta', 'Commodo mollit eiusmod et reprehenderit. Cupidatat pariatur veniam aliqua exercitation occaecat culpa. Nisi cupidatat aliquip consequat eiusmod ut aliqua laborum in reprehenderit dolore reprehenderit fugiat.', 'https://via.placeholder.com/400/816/fff/?text=Applica', '2020-01-31 12:27:24'),
(46, 9, 'Disos', 'italian', 'lasana', 'Eu dolore aliqua voluptate minim cupidatat. Non laboris qui minim ipsum dolor in minim elit ut laborum irure irure est. Laboris voluptate exercitation mollit mollit officia nostrud in.', 'uploads/1608231063.4268_i12.jpg', '2020-01-21 02:15:54'),
(47, 5, 'Russos', 'italian', 'pasta', 'Pariatur elit enim in sit tempor elit officia Lorem ad consequat esse occaecat. Sit excepteur occaecat do magna. Excepteur velit ea et reprehenderit adipisicing.', 'uploads/1608227849.4529_i1.jpg', '2020-04-04 12:39:12'),
(48, 1, 'Uniworld', 'mexican', 'tacos', 'Aute consectetur deserunt dolor elit aliquip sint excepteur sint duis irure duis mollit cillum. Sint labore occaecat cillum ex esse excepteur commodo nulla consequat duis ad reprehenderit. Adipisicing voluptate ipsum incididunt ex id reprehenderit nulla occaecat Lorem irure labore do.', 'https://via.placeholder.com/400/854/fff/?text=Uniworld', '2020-06-04 06:11:33'),
(49, 2, 'Exerta', 'burgers', 'hotdogs', 'Amet quis dolor elit adipisicing anim fugiat mollit. Nisi elit aliqua sint culpa sit reprehenderit. Cupidatat esse magna non quis duis labore pariatur sint reprehenderit quis id.', 'https://via.placeholder.com/400/719/fff/?text=Exerta', '2020-06-14 11:53:47'),
(50, 1, 'Edecine', 'burgers', 'nachos', 'Irure culpa elit nisi amet. Voluptate nostrud est dolore sit cillum ullamco elit veniam. Ex ea tempor cillum magna nostrud amet est est ad enim tempor laboris eiusmod eu.', 'https://via.placeholder.com/400/813/fff/?text=Edecine', '2020-01-24 01:16:46'),
(51, 7, 'Taco Supremo', 'mexican', 'flautas', 'Super tacos!!', 'uploads/1608229669.2971_m4.jpg', '2020-12-17 18:19:48'),
(52, 7, 'checky', 'italian', 'pizza', 'dsaf sfd f', 'uploads/1608229212.0382_14.jpg', '2020-12-17 18:20:26'),
(53, 10, 'Grillia', 'italian', 'panini', 'aksjdf isjdfisadj ', 'uploads/1608231408.8242_i10.jpg', '2020-12-17 18:57:06'),
(54, 15, 'Andiamo', 'italian', 'pizza', 'dada ada sd', 'uploads/1608231529.5667_i11.jpg', '2020-12-17 18:59:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_trucks`
--
ALTER TABLE `track_trucks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_trucks`
--
ALTER TABLE `track_trucks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
