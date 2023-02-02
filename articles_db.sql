-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2023 at 08:43 AM
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
(38, '2023-02-02 06:45:53', 'test', 'poom', 35),
(39, '2023-02-02 06:46:21', 'test', 'poom', 35);

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
  `categories` varchar(255) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `views` int(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article_tb`
--

INSERT INTO `article_tb` (`id_article`, `title`, `header_image`, `content`, `description`, `categories`, `time_stamp`, `views`, `username`) VALUES
(30, 'ประวัติ lisa Blackpink', '134727926120230201_203621.png', '<p>ทั้งสวย ทั้งมากความสามารถ เลยจริงๆ สำหรับ ลิซ่า-ลลิษา มโนบาล หรือ ลิซ่า BLACKPINK เด็กไทยมากความสามารถ ที่ไปแจ้งเกิดโด่งดังเป็นศิลปินเกิร์ลกรุ๊ปที่ประเทศเกาหลีใต้ ซึ่งล่าสุดนั้นความสวยน่ารักบวกกับความสามารถของเธอนั้นก็ทำให้เธอมีผู้ติดตามใน IG มากกว่า 10 ล้านคน และกลายเป็น ดาราที่มีคนติดตาม IG มากที่สุดในประเทศไทยเลยทีเดียว</p><figure class=\"image image_resized\" style=\"width:14.74%;\"><img src=\"https://static.thairath.co.th/media/PZnhTOtr5D3rd9ocLQ7l68Br9a6kVkl4ymXfojryecuWknC.jpg\" alt=\"ประวัติ \" ลิซ่า=\"\" วันเกิดวัย=\"\" ปี=\"\" สวยดังสมวัย=\"\"></figure><p>ประวัติ ลิซ่า BLACKPINK<br>ลิซ่า มีชื่อจริงว่า ลลิษา มโนบาล<br>ชื่อเดิมคือ ปราณปรียา มโนบาล<br>ชื่อเล่น ลิซ่า, ลลิซ<br>ชื่อเล่นเดิม ป๊อกแป๊ก<br>เกิดวันที่ 27 มีนาคม พ.ศ. 2540<br>ภูมิลำเนา เป็นคนจังหวัดบุรีรัมย์<br>จบการศึกษาระดับมัธยมศึกษาจากโรงเรียนประภามนตรี 1 และ 2<br>IG : lalalalisa_m<br>ลิซ่า เกิดที่จังหวัดบุรีรัมย์ แต่เติบโตที่กรุงเทพมหานคร ชื่อเดิมคือ ปราณปรียา มโนบาล ซึ่งต่อมาเปลี่ยนเป็น ลลิษา มโนบาล คำว่า \"ลลิษา\" แปลว่า \"ผู้ที่ได้รับการยกย่อง เธอมีคุณพ่อบุญธรรมชื่อ มาร์โค บรอยช์ไวเลอร์ ชาวสวิตเซอร์แลนด์ เป็นที่ปรึกษาการประกอบธุรกิจร้านอาหารและผู้เชี่ยวชาญทางด้านอาหารไทยในกรุงเทพมหานคร ในสมัยที่เธอเป็นนักเรียนนั้นเธอเรียกว่าเป็นเด็กกิจกรรมของโรงเรียนเลยก็ว่าได้ ลิซ่า เคยเป็นตัวแทนโรงเรียนประกวดร้องเพลงในโครงการ \"3 คุณธรรมนำไทย\" ที่จัดโดยศูนย์คุณธรรม ได้รับรางวัลรองชนะเลิศ ประเภททีม เมื่อ พ.ศ. 2552</p><p>ลิซ่า เริ่มเป็นที่สนใจในปี ค.ศ. 2012 หลังจากวายจีอัปโหลดวิดีโอการเต้นของเธอลงบนยูทูปในชื่อคลิปว่า WHO\'S THAT GIRL??? ในวันที่ 3 พฤษภาคม 2556 เธอยังได้แสดงมิวสิกวิดีโอเพลง Ringa Linga ของแทยัง และเป็นนางแบบให้กับเสื้อผ้ายี่ห้อโนนากอน (Nonagon) ร่วมกับบี.ไอและบ็อบบี วงไอคอนในปี 2557</p><p>หลังจากการฝึกหัดนานกว่า 5 ปี ลิซ่าได้เป็นหนึ่งในสมาชิกวงแบล็กพิงก์ และเปิดตัวครั้งแรกด้วยอัลบั้ม สแควร์วัน เมื่อวันที่ 8 สิงหาคม 2559 ในเดือนพฤศจิกายน แบล็กพิงก์ได้รับรางวัลเอเชียอาร์ติสต์อะวอดส์รางวัลแรก สาขาศิลปินหน้าใหม่ยอดเยี่ยม ในปีต่อมา พวกเธอกวาดสามรางวัลจากแกออนชาร์ตเคป็อปอะวอดส์ ในสาขาศิลปินหน้าใหม่แห่งปี, เพลงแห่งปี ประจำเดือนสิงหาคม และเพลงแห่งปี ประจำเดือนพฤศจิกายน</p><p>โดยส่วนตัวของลิซ่านั้นเรียกว่าเป็นสมาชิกวง แบล็กพิงก์ ที่ได้รับความนิยมจากทั่วโลก ได้ร่วมงานกับแบรนด์ดังต่างประเทศมากมาย ไม่ว่าจะเป็น แบรนด์แอมบาสเดอร์ระดับโลกคนแรกอย่างเป็นทางการของ Celine ตลอดจนได้รับเลือกให้เป็นแบรนด์แอมบาสเดอร์ของ BVLGARI แบรนด์หรูชั้นนำของอิตาลี อีกด้วย นอกจากผลงานจากแบล็กพิงก์ แล้วเธอยังได้รับหน้าที่เป็น ที่ปรึกษาด้านการเต้น ในรายการ วัยรุ่นวัยฝัน ซีซัน 2 และ3 หรือ Youth With You ของประเทศจีนอีกด้วย</p>', 'ทั้งสวย ทั้งมากความสามารถ เลยจริงๆ สำหรับ ลิซ่า-ลลิษา มโนบาล หรือ ลิซ่า BLACKPINK เด็กไทยมากความสามารถ ที่ไปแจ้งเกิดโด่งดังเป็นศิลปินเกิร์ลกรุ๊ปที่ประเทศเกาหลีใต้ ซึ่งล่าสุดนั้นความสวยน่ารักบวกกับความ', 'Money', '2023-01-26 07:49:38', 231, 'poom'),
(32, 'ประวัติ เจนนี BLACKPINK สาวสวยสุดแซ่บประจำวง BLACKPINK ', '10113403820230127_201336.jpg', '<h6>\"เจนนี คิม\" หรือที่แฟนๆ รู้จักในชื่อ \"เจนนี BLACKPINK\" เป็นนักร้องชาวเกาหลีใต้ หนึ่งในสมาชิกของวงเกิร์ลกรุ๊ปชื่อดัง BLACKPINK เกิดเมื่อวันที่ 16 มกราคม ปี 1996ที่กรุงโซล ประเทศเกาหลีใต้ เธอไปศึกษาต่อที่ประเทศนิวซีแลนด์ในฐานะนักเรียนแลกเปลี่ยนเป็นเวลา 5 ปี ก่อนจะย้ายกลับมาที่บ้านเกิด เพื่อทำตามความฝันที่อยากจะเป็นนักร้อง</h6><figure class=\"image image_resized\" style=\"width:18.16%;\"><img src=\"https://cms.dmpcdn.com/musicarticle/2020/11/04/b8094560-1e7e-11eb-931b-3b6d32595673_original.jpg\"></figure><h3>เจนนี BLACKPINK</h3><p><br>เจนนี่ ได้ผ่านการออดิชั่นของ YG Entertainment ในช่วงเดือนสิงหาคม ปี 2010 ต่อมาในปี 2012 ศิลปินสาวก็ได้ความสนใจจากแฟนๆ ภายหลังที่ทาง YG Entertainment ได้อัปโหลดคลิปของเธอลงบน Youtube ขณะที่เธอทำการแร็ปในปี 2012</p><p>ต่อมาในเดือนกันยายน ปี 2016 เจนนี ได้เดบิวต์ในฐานะสมาชิกของวง BLACKPINK โดยเปิดตัวด้วยอัลบั้ม “สแควร์วัน”</p>', '\"เจนนี คิม\" หรือที่แฟนๆ รู้จักในชื่อ \"เจนนี BLACKPINK\" เป็นนักร้องชาวเกาหลีใต้ หนึ่งในสมาชิกของวงเกิร์ลกรุ๊ปชื่อดัง BLACKPINK เกิดเมื่อวันที่ 16 มกราคม ปี 1996ที่กรุงโซล ประเทศเกาหลีใต้ เธอไปศึกษาต่อท', 'blackpink', '2023-01-27 13:13:36', 99, 'poom'),
(35, 'ประวัติ จีซู BLACKPINK พี่สาวสุดสวย เจ้าของฉายา \'จีซู 4 มิติ\'', '81505828420230201_202929.jpg', '<h3>ประวัติ จีซู BLACKPINK</h3><h6><img class=\"image_resized\" style=\"width:15.24%;\" src=\"https://cms.dmpcdn.com/musicarticle/2020/10/30/73da6140-1a8b-11eb-8b5f-a9f42b71c393_original.jpg\"><br>จีซู BLACKPINK (Jisoo BLACKPINK) หรือ คิม จีซู (KIM JISOO) พี่สาวสุดสวยหนึ่งในสมาชิกของวงเกิร์ลกรุ๊ปชื่อดังของเกาหลี BLACKPINK เธอเกิดเมื่อวันที่ 3 มกราคม ปี 1995 ในจังหวัดคย็องกี ประเทศเกาหลีใต้ เธอเป็นบุตรสาวคนสุดท้องในจำนวน 3 คน โดยมีพี่สาวหนึ่งคนชื่อ คิม จียุน และมีพี่ชายอีกหนึ่งคนชื่อ คิม จ็องฮุน</h6><p><img class=\"image_resized\" style=\"width:18.66%;\" src=\"https://cms.dmpcdn.com/musicarticle/2023/01/03/98889ac0-8b4f-11ed-b3ce-07719a612272_webp_original.jpg\" alt=\"จีซู BLACKPINK\"></p><p>จีซู BLACKPINK<br>จีซู จบการศึกษาระดับมัธยมตอนต้นที่โรงเรียนมัธยม ควาช็อนชุงอัง (Gwacheon Jungang High School) ในจังหวัดคย็องกี จากนั้นก็ได้ย้ายไปศึกษาต่อในระดับมัธยมตอนปลายที่โรงเรียนมัธยมศิลปะการแสดงโซล (School of Performing Arts Seoul)</p><p>จุดเริ่มต้นในวงการบันเทิงของ จีซู เริ่มต้นจากการที่เธอผ่านการออดิชันโดยการร้องเพลง “I Have a Lover” ของนักร้องสาว อี อึนมี และเธอก็ได้เข้าสังกัด YG Entertainment ในฐานะศิลปินฝึกหัดในเดือนกรกฎาคม ปี 2011 และหลังจากนั้น จีซู ก็ได้เปิดตัวเป็นหนึ่งในสมาชิกของวง BLACKPINK ซึ่งวงได้ทยอยปล่อยผลงานเพลงฮิตออกมามากมายให้แฟนเพลงได้ติดตามกัน</p><p>&nbsp;</p>', 'จีซู BLACKPINK (Jisoo BLACKPINK) หรือ คิม จีซู (KIM JISOO) พี่สาวสุดสวยหนึ่งในสมาชิกของวงเกิร์ลกรุ๊ปชื่อดังของเกาหลี BLACKPINK เธอเกิดเมื่อวันที่ 3 มกราคม ปี 1995 ในจังหวัดคย็องกี ประเทศเกาหลีใต้ เธอเ', 'blackpink', '2023-02-01 19:28:32', 136, 'poom'),
(36, 'ประวัติ โรเซ่ BLACKPINK สาวสวยผู้มีนำเสียงทรงพลังแห่งวง BLACKPINK', '173145130720230202_143757.jpg', '<h3>ประวัติ โรเซ่ BLACKPINK</h3><p><br>โรแซนน์ พัก (Roseanne Park) หรือ พัก แช-ย็อง (Park Chaeyoung) (ชื่อเกาหลี) หรือชื่อในวงการที่แฟนๆ รู้จักดีคือ โรเซ่ BLACKPINK (Rosé BLACKPINK) ศิลปินสาวหนึ่งในสมาชิกของ BLACKPINK วงเกิร์ลกรุ๊ปชื่อดังของเกาหลี เกิดเมื่อวันที่ 11 กุมภาพันธ์ ปี 1997 โดยเธอเกิดและอาศัยอยู่ที่ประเทศนิวซีแลนด์ จนกระทั้งเธอมีอายุ 7 ขวบ ก็ได้ย้ายไปอาศัยอยู่ที่เมลเบิร์น ออสเตรเลีย ซึ่งเธอเคยเป็นนักร้องประสานเสียงในโบสถ์ที่ออสเตรเลียนี้อีกด้วย</p><figure class=\"image image_resized\" style=\"width:25.01%;\"><img src=\"https://cms.dmpcdn.com/musicarticle/2020/11/03/72d70250-1dbd-11eb-9443-5fafc9ce7cfe_original.jpg\"></figure><p>โรเซ่ BLACKPINK<br>ต่อมาในปี 2012 ทาง โรเซ่ ในวัย 16 ปี ก็ได้เข้าออดิชั่นกับทางค่าย YG Entertainment ตามคำแนะนำของคุณพ่อของเธอ โดยนักร้องสาวได้อันดับที่หนึ่งจากผู้สมัครราว 700 คน โดยในระยะเวลาเพียง 2 เดือนเธอก็ได้ย้ายไปอยู่ที่กรุงโซล และเซ็ญสัญญาเข้ามาเป็นศิลปินฝึกหัดกับค่าย YG Entertainment ในวันที่ 7 พฤษภาคม ปี 2012 และภายหลังจากที่ โรเซ่ ได้ฝึกฝนเป็นระยะเวลา 4 ปี เธอก็ได้เดบิวต์อย่างเป็นทางการในฐานะหนึ่งในสมาชิกของวง BLACKPINK ในปี 2016</p>', 'โรแซนน์ พัก (Roseanne Park) หรือ พัก แช-ย็อง (Park Chaeyoung) (ชื่อเกาหลี) หรือชื่อในวงการที่แฟนๆ รู้จักดีคือ โรเซ่ BLACKPINK (Rosé BLACKPINK) ศิลปินสาวหนึ่งในสมาชิกของ BLACKPINK วงเกิร์ลกรุ๊ปชื่อดังข', 'blackpink', '2023-02-02 07:37:57', 152, 'poom');

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
(1, '173235335520230202_031614.jpg', 'poom', '12345678', 'poom05@gmail.com', 'admin'),
(15, '139897746820230128_134838.jpg', 'ton', '12345678', 'phakphumi05@gmail.com', 'user'),
(16, '131189744820230131_120445.jpg', 'poom01', '12345678', 'poom01@gmail.com', 'admin'),
(18, '4147472820230202_074009.jpg', 'poom02', '123456', 'poom02@gmail.com', 'user');

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
  MODIFY `id_comm` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `article_tb`
--
ALTER TABLE `article_tb`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
