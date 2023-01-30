-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2023 at 12:18 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `articles_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `article_comment`
--

CREATE TABLE `article_comment` (
  `id_comm` int(20) NOT NULL,
  `comm_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `comment` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `id_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article_comment`
--

INSERT INTO `article_comment` (`id_comm`, `comm_stamp`, `comment`, `username`, `id_article`) VALUES
(26, '2023-01-29 05:37:45', 'test', 'poom', 31),
(27, '2023-01-29 05:40:51', 'test', 'poom', 31),
(28, '2023-01-29 05:41:16', '111', 'poom', 31),
(31, '2023-01-29 08:04:10', 'test', 'poom', 32),
(32, '2023-01-29 09:24:04', 'ttse', 'poom', 31);

-- --------------------------------------------------------

--
-- Table structure for table `article_tb`
--

CREATE TABLE `article_tb` (
  `id_article` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `header_image` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `description` varchar(200) NOT NULL,
  `categories` text NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `views` int(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article_tb`
--

INSERT INTO `article_tb` (`id_article`, `title`, `header_image`, `content`, `description`, `categories`, `time_stamp`, `views`, `username`) VALUES
(30, 'ประวัติ \"ลิซ่า BLACKPINK\" พร้อมย้อนวัยใสต้าวลิซสุดน่ารัก สมัยยังไม่ได้เป็นศิลปิน', '1257123520230126_144938.jpg', '<p>ทั้งสวย ทั้งมากความสามารถ เลยจริงๆ สำหรับ ลิซ่า-ลลิษา มโนบาล หรือ ลิซ่า BLACKPINK เด็กไทยมากความสามารถ ที่ไปแจ้งเกิดโด่งดังเป็นศิลปินเกิร์ลกรุ๊ปที่ประเทศเกาหลีใต้ ซึ่งล่าสุดนั้นความสวยน่ารักบวกกับความสามารถของเธอนั้นก็ทำให้เธอมีผู้ติดตามใน IG มากกว่า 10 ล้านคน และกลายเป็น ดาราที่มีคนติดตาม IG มากที่สุดในประเทศไทยเลยทีเดียว</p><figure class=\"image image_resized\" style=\"width:58.5%;\"><img src=\"https://static.thairath.co.th/media/PZnhTOtr5D3rd9ocLQ7l68Br9a6kVkl4ymXfojryecuWknC.jpg\" alt=\"ประวัติ \" ลิซ่า=\"\" วันเกิดวัย=\"\" ปี=\"\" สวยดังสมวัย=\"\"></figure><p>ประวัติ ลิซ่า BLACKPINK<br>ลิซ่า มีชื่อจริงว่า ลลิษา มโนบาล<br>ชื่อเดิมคือ ปราณปรียา มโนบาล<br>ชื่อเล่น ลิซ่า, ลลิซ<br>ชื่อเล่นเดิม ป๊อกแป๊ก<br>เกิดวันที่ 27 มีนาคม พ.ศ. 2540<br>ภูมิลำเนา เป็นคนจังหวัดบุรีรัมย์<br>จบการศึกษาระดับมัธยมศึกษาจากโรงเรียนประภามนตรี 1 และ 2<br>IG : lalalalisa_m<br>ลิซ่า เกิดที่จังหวัดบุรีรัมย์ แต่เติบโตที่กรุงเทพมหานคร ชื่อเดิมคือ ปราณปรียา มโนบาล ซึ่งต่อมาเปลี่ยนเป็น ลลิษา มโนบาล คำว่า \"ลลิษา\" แปลว่า \"ผู้ที่ได้รับการยกย่อง เธอมีคุณพ่อบุญธรรมชื่อ มาร์โค บรอยช์ไวเลอร์ ชาวสวิตเซอร์แลนด์ เป็นที่ปรึกษาการประกอบธุรกิจร้านอาหารและผู้เชี่ยวชาญทางด้านอาหารไทยในกรุงเทพมหานคร ในสมัยที่เธอเป็นนักเรียนนั้นเธอเรียกว่าเป็นเด็กกิจกรรมของโรงเรียนเลยก็ว่าได้ ลิซ่า เคยเป็นตัวแทนโรงเรียนประกวดร้องเพลงในโครงการ \"3 คุณธรรมนำไทย\" ที่จัดโดยศูนย์คุณธรรม ได้รับรางวัลรองชนะเลิศ ประเภททีม เมื่อ พ.ศ. 2552</p><p>ลิซ่า เริ่มเป็นที่สนใจในปี ค.ศ. 2012 หลังจากวายจีอัปโหลดวิดีโอการเต้นของเธอลงบนยูทูปในชื่อคลิปว่า WHO\'S THAT GIRL??? ในวันที่ 3 พฤษภาคม 2556 เธอยังได้แสดงมิวสิกวิดีโอเพลง Ringa Linga ของแทยัง และเป็นนางแบบให้กับเสื้อผ้ายี่ห้อโนนากอน (Nonagon) ร่วมกับบี.ไอและบ็อบบี วงไอคอนในปี 2557</p><p>หลังจากการฝึกหัดนานกว่า 5 ปี ลิซ่าได้เป็นหนึ่งในสมาชิกวงแบล็กพิงก์ และเปิดตัวครั้งแรกด้วยอัลบั้ม สแควร์วัน เมื่อวันที่ 8 สิงหาคม 2559 ในเดือนพฤศจิกายน แบล็กพิงก์ได้รับรางวัลเอเชียอาร์ติสต์อะวอดส์รางวัลแรก สาขาศิลปินหน้าใหม่ยอดเยี่ยม ในปีต่อมา พวกเธอกวาดสามรางวัลจากแกออนชาร์ตเคป็อปอะวอดส์ ในสาขาศิลปินหน้าใหม่แห่งปี, เพลงแห่งปี ประจำเดือนสิงหาคม และเพลงแห่งปี ประจำเดือนพฤศจิกายน</p><p>โดยส่วนตัวของลิซ่านั้นเรียกว่าเป็นสมาชิกวง แบล็กพิงก์ ที่ได้รับความนิยมจากทั่วโลก ได้ร่วมงานกับแบรนด์ดังต่างประเทศมากมาย ไม่ว่าจะเป็น แบรนด์แอมบาสเดอร์ระดับโลกคนแรกอย่างเป็นทางการของ Celine ตลอดจนได้รับเลือกให้เป็นแบรนด์แอมบาสเดอร์ของ BVLGARI แบรนด์หรูชั้นนำของอิตาลี อีกด้วย นอกจากผลงานจากแบล็กพิงก์ แล้วเธอยังได้รับหน้าที่เป็น ที่ปรึกษาด้านการเต้น ในรายการ วัยรุ่นวัยฝัน ซีซัน 2 และ3 หรือ Youth With You ของประเทศจีนอีกด้วย</p>', 'ทั้งสวย ทั้งมากความสามารถ เลยจริงๆ สำหรับ ลิซ่า-ลลิษา มโนบาล หรือ ลิซ่า BLACKPINK เด็กไทยมากความสามารถ ที่ไปแจ้งเกิดโด่งดังเป็นศิลปินเกิร์ลกรุ๊ปที่ประเทศเกาหลีใต้ ซึ่งล่าสุดนั้นความสวยน่ารักบวกกับความ', 'Money', '2023-01-26 07:49:38', 84, 'poom'),
(31, 'ประวัติ โรเซ่ BLACKPINK สาวสวยผู้มีนำเสียงทรงพลังแห่งวง BLACKPINK', '207593390620230126_145433.jpg', '<h3>ประวัติ โรเซ่ BLACKPINK</h3><p>โรแซนน์ พัก (Roseanne Park) หรือ พัก แช-ย็อง (Park Chaeyoung) (ชื่อเกาหลี) หรือชื่อในวงการที่แฟนๆ รู้จักดีคือ โรเซ่ BLACKPINK (Rosé BLACKPINK) ศิลปินสาวหนึ่งในสมาชิกของ BLACKPINK วงเกิร์ลกรุ๊ปชื่อดังของเกาหลี เกิดเมื่อวันที่ 11 กุมภาพันธ์ ปี 1997 โดยเธอเกิดและอาศัยอยู่ที่ประเทศนิวซีแลนด์ จนกระทั้งเธอมีอายุ 7 ขวบ ก็ได้ย้ายไปอาศัยอยู่ที่เมลเบิร์น ออสเตรเลีย ซึ่งเธอเคยเป็นนักร้องประสานเสียงในโบสถ์ที่ออสเตรเลียนี้อีกด้วย</p><figure class=\"image image_resized\" style=\"width:16.67%;\"><img src=\"https://static2.yan.vn/YanNews/2167221/202008/yg-bat-ngo-danh-up-fan-voi-poster-rose-vong-1-rat-gi-va-nay-no-7a51dbf3.jpg\" alt=\"YG &quot;đánh úp&quot; fan với poster Rosé khoe vòng 1 &quot;rất gì và này nọ&quot;\"></figure><h3>โรเซ่ BLACKPINK</h3><h6>ต่อมาในปี 2012 ทาง โรเซ่ ในวัย 16 ปี ก็ได้เข้าออดิชั่นกับทางค่าย YG Entertainment ตามคำแนะนำของคุณพ่อของเธอ โดยนักร้องสาวได้อันดับที่หนึ่งจากผู้สมัครราว 700 คน โดยในระยะเวลาเพียง 2 เดือนเธอก็ได้ย้ายไปอยู่ที่กรุงโซล และเซ็ญสัญญาเข้ามาเป็นศิลปินฝึกหัดกับค่าย YG Entertainment ในวันที่ 7 พฤษภาคม ปี 2012 และภายหลังจากที่ โรเซ่ ได้ฝึกฝนเป็นระยะเวลา 4 ปี เธอก็ได้เดบิวต์อย่างเป็นทางการในฐานะหนึ่งในสมาชิกของวง BLACKPINK ในปี 2016</h6><h6><img class=\"image_resized\" style=\"width:17.64%;\" src=\"https://cms.dmpcdn.com/musicarticle/2020/11/03/7275f690-1dbd-11eb-9275-d9e61fe8653e_original.jpg\"></h6><p>โรเซ่ BLACKPINK<br>รายชื่อผลงานเพลงของวง Blackpink<br>Albums<br>Studio albums</p><p>เกาหลี :<br>ปี 2020<br>&nbsp; - The Album (วางจำหน่ายในวันที่ 2 ตุลาคม ปี 2020)</p><p>ญี่ปุ่น :&nbsp;<br>ปี 2018<br>&nbsp; - Blackpink in Your Area</p><p>Single albums<br>ปี 2016<br>&nbsp; - Square One<br>&nbsp; - Square Two<br>ปี 2020<br>&nbsp; - How You Like That</p><p>Extended plays<br>เกาหลี :&nbsp;<br>ปี 2018<br>&nbsp; - Square Up<br>ปี 2019<br>&nbsp; - Kill This Love</p><p>ญี่ปุ่น :&nbsp;<br>ปี 2017<br>&nbsp; - Blackpink</p><p>Singles<br>ปี 2016<br>&nbsp; - Boombayah<br>&nbsp;- Whistle<br>&nbsp;- Playing with Fire<br>&nbsp;- Stay</p><p>ปี 2017<br>&nbsp; - As If It\'s Your Last</p><p>ปี 2018<br>&nbsp; - Ddu-Du Ddu-Du</p><p>ปี 2019<br>&nbsp; - Kill This Love</p><p>ปี 2020<br>&nbsp; - How You Like That<br>&nbsp; - Ice Cream (with Selena Gomez)</p>', 'ประวัติ โรเซ่ BLACKPINK โรแซนน์ พัก (Roseanne Park) หรือ พัก แช-ย็อง (Park Chaeyoung) (ชื่อเกาหลี) หรือชื่อในวงการที่แฟนๆ รู้จักดีคือ โรเซ่ BLACKPINK (Rosé BLACKPINK) ศิลปินสาวหนึ่งในสมาชิกของ BLACKPI', 'blackpink', '2023-01-26 07:54:33', 164, 'poom'),
(32, 'ประวัติ เจนนี BLACKPINK สาวสวยสุดแซ่บประจำวง BLACKPINK ', '10113403820230127_201336.jpg', '<h6>\"เจนนี คิม\" หรือที่แฟนๆ รู้จักในชื่อ \"เจนนี BLACKPINK\" เป็นนักร้องชาวเกาหลีใต้ หนึ่งในสมาชิกของวงเกิร์ลกรุ๊ปชื่อดัง BLACKPINK เกิดเมื่อวันที่ 16 มกราคม ปี 1996ที่กรุงโซล ประเทศเกาหลีใต้ เธอไปศึกษาต่อที่ประเทศนิวซีแลนด์ในฐานะนักเรียนแลกเปลี่ยนเป็นเวลา 5 ปี ก่อนจะย้ายกลับมาที่บ้านเกิด เพื่อทำตามความฝันที่อยากจะเป็นนักร้อง</h6><figure class=\"image image_resized\" style=\"width:17.39%;\"><img src=\"https://cms.dmpcdn.com/musicarticle/2020/11/04/b8094560-1e7e-11eb-931b-3b6d32595673_original.jpg\"></figure><h3>เจนนี BLACKPINK</h3><p><br>เจนนี่ ได้ผ่านการออดิชั่นของ YG Entertainment ในช่วงเดือนสิงหาคม ปี 2010 ต่อมาในปี 2012 ศิลปินสาวก็ได้ความสนใจจากแฟนๆ ภายหลังที่ทาง YG Entertainment ได้อัปโหลดคลิปของเธอลงบน Youtube ขณะที่เธอทำการแร็ปในปี 2012</p><p>ต่อมาในเดือนกันยายน ปี 2016 เจนนี ได้เดบิวต์ในฐานะสมาชิกของวง BLACKPINK โดยเปิดตัวด้วยอัลบั้ม “สแควร์วัน”</p>', '\"เจนนี คิม\" หรือที่แฟนๆ รู้จักในชื่อ \"เจนนี BLACKPINK\" เป็นนักร้องชาวเกาหลีใต้ หนึ่งในสมาชิกของวงเกิร์ลกรุ๊ปชื่อดัง BLACKPINK เกิดเมื่อวันที่ 16 มกราคม ปี 1996ที่กรุงโซล ประเทศเกาหลีใต้ เธอไปศึกษาต่อท', 'blackpink', '2023-01-27 13:13:36', 80, 'poom');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `username`, `password`, `email`, `role`) VALUES
(1, '136446706720230129_100237.jpg', 'poom', '12345678', 'poom05@gmail.com', 'admin'),
(15, '139897746820230128_134838.jpg', 'ton', '12345678', 'phakphumi05@gmail.com', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article_comment`
--
ALTER TABLE `article_comment`
  ADD PRIMARY KEY (`id_comm`),
  ADD KEY `username` (`username`),
  ADD KEY `id_article` (`id_article`);

--
-- Indexes for table `article_tb`
--
ALTER TABLE `article_tb`
  ADD PRIMARY KEY (`id_article`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article_comment`
--
ALTER TABLE `article_comment`
  MODIFY `id_comm` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `article_tb`
--
ALTER TABLE `article_tb`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_comment`
--
ALTER TABLE `article_comment`
  ADD CONSTRAINT `id_article` FOREIGN KEY (`id_article`) REFERENCES `article_tb` (`id_article`),
  ADD CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
