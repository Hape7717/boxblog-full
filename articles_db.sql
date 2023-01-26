-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2023 at 09:33 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

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
  `comment` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `id_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article_comment`
--

INSERT INTO `article_comment` (`id_comm`, `comment`, `username`, `id_article`) VALUES
(10, 'ttse', 'poom', 30),
(11, 'น่ารักมากๆ', 'poom', 31);

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
(29, '10 สุดยอด น้ำตก ที่ยิ่งใหญ่ที่สุดในโลก สวยตะลึงราวกับเทลงมาจากฟากฟ้า', '152240055620230126_143918.jpg', '<p>น้ำตก นับเป็นสิ่งสวยงามที่รังสรรค์โดยธรรมชาติอย่างแท้จริง การได้ชมภาพน้ำจำนวนมหาศาลไหลลงจากหน้าผาลงสู่แม่น้ำเบื้องล่างนั้น ก่อให้เกิดความรู้สึกพิเศษยากเกินจะบรรยายเลยทีเดียว เรามาลองชม 10 สุดยอด น้ำตก จากทั่วโลก (เท่าที่นักสำรวจค้นพบแล้ว) กันดีกว่า ว่าจะงดงามขนาดไหน</p><figure class=\"image image_resized\" style=\"width:54.14%;\"><img src=\"https://cms.dmpcdn.com/travel/2018/06/20/53990a9a-c064-49bf-806f-4a5588283d87.jpg\"></figure><h3>10. Jog Falls</h3><figure class=\"image image_resized\" style=\"width:54.26%;\"><img src=\"https://cms.dmpcdn.com/travel/2018/06/20/7bae709e-27c8-4e44-9e6d-39835a55258e.jpg\"></figure><p>&nbsp;Jog Falls นั้นเป็นส่วนหนึ่งของแม่น้ำ Sharavathi ในประเทศอินเดีย ด้วยความสูงกว่า 253 เมตรทำให้นับเป็นน้ำตกที่สูงที่สุดของอินเดียโดยปริยาย ก่อนถึงฤดูน้ำหลาก Jog Falls นั้นจะเป็นแค่น้ำตกเล็กๆ เพียงสองสายลงมาตามหน้าผาเท่านั้นเอง</p><figure class=\"image image_resized\" style=\"width:54.5%;\"><img src=\"https://cms.dmpcdn.com/travel/2018/06/20/780a0fc9-4672-466f-83f4-792a8f9184b6.jpg\"></figure><h3>9. Huangguoshu Falls</h3><figure class=\"image image_resized\" style=\"width:54.5%;\"><img src=\"https://cms.dmpcdn.com/travel/2018/06/20/0b9bd7a4-1fe2-448d-9dd7-01c4623a5245.jpg\"></figure><p>ความสูง 77.8 เมตร กว้าง 101 เมตร ตั้งอยู่ในประเทศจีน ด้านหลังน้ำตกยังมีถ้ำอยู่ด้วย ทำให้นักท่องเที่ยวเดินเข้าไปสัมผัสสายน้ำได้อย่างใกล้ชิด</p><figure class=\"image image_resized\" style=\"width:54.68%;\"><img src=\"https://cms.dmpcdn.com/travel/2018/06/20/f1aa97b1-1e3e-470a-bd99-dc27b53cbe66.jpg\"></figure><h3>8. Gullfoss Falls</h3><figure class=\"image image_resized\" style=\"width:54.86%;\"><img src=\"https://cms.dmpcdn.com/travel/2018/06/20/b0ebcbe3-6ced-4626-baff-792bd22c05ba.jpg\"></figure><p>&nbsp; &nbsp; &nbsp; &nbsp; น้ำตก Gullfoss หรือ Golden Falls เป็นน้ำตกในประเทศไอซ์แลนด์ ที่มีปริมาณน้ำมากตลอดทั้งปี แม้ว่าจะเป็นฤดูร้อนก็ตาม จึงทำให้เป็นน้ำตกที่นักท่องเที่ยวเดินทางมาเยี่ยมชมตลอดทั้งปี</p><p><br>&nbsp;</p>', 'น้ำตก นับเป็นสิ่งสวยงามที่รังสรรค์โดยธรรมชาติอย่างแท้จริง การได้ชมภาพน้ำจำนวนมหาศาลไหลลงจากหน้าผาลงสู่แม่น้ำเบื้องล่างนั้น ก่อให้เกิดความรู้สึกพิเศษยากเกินจะบรรยายเลยทีเดียว เรามาลองชม 10 สุดยอด น้ำตก', 'ที่ท่องเที่ยว', '2023-01-26 07:39:18', 2, 'poom'),
(30, 'ประวัติ \"ลิซ่า BLACKPINK\" พร้อมย้อนวัยใสต้าวลิซสุดน่ารัก สมัยยังไม่ได้เป็นศิลปิน', '1257123520230126_144938.jpg', '<p>ทั้งสวย ทั้งมากความสามารถ เลยจริงๆ สำหรับ ลิซ่า-ลลิษา มโนบาล หรือ ลิซ่า BLACKPINK เด็กไทยมากความสามารถ ที่ไปแจ้งเกิดโด่งดังเป็นศิลปินเกิร์ลกรุ๊ปที่ประเทศเกาหลีใต้ ซึ่งล่าสุดนั้นความสวยน่ารักบวกกับความสามารถของเธอนั้นก็ทำให้เธอมีผู้ติดตามใน IG มากกว่า 10 ล้านคน และกลายเป็น ดาราที่มีคนติดตาม IG มากที่สุดในประเทศไทยเลยทีเดียว</p><figure class=\"image image_resized\" style=\"width:58.5%;\"><img src=\"https://static.thairath.co.th/media/PZnhTOtr5D3rd9ocLQ7l68Br9a6kVkl4ymXfojryecuWknC.jpg\" alt=\"ประวัติ &quot;ลิซ่า Blackpink&quot; วันเกิดวัย 21 ปี สวยดังสมวัย ไอดอลสาวไทย\"></figure><p>ประวัติ ลิซ่า BLACKPINK<br>ลิซ่า มีชื่อจริงว่า ลลิษา มโนบาล<br>ชื่อเดิมคือ ปราณปรียา มโนบาล<br>ชื่อเล่น ลิซ่า, ลลิซ<br>ชื่อเล่นเดิม ป๊อกแป๊ก<br>เกิดวันที่ 27 มีนาคม พ.ศ. 2540<br>ภูมิลำเนา เป็นคนจังหวัดบุรีรัมย์<br>จบการศึกษาระดับมัธยมศึกษาจากโรงเรียนประภามนตรี 1 และ 2<br>IG : lalalalisa_m<br>ลิซ่า เกิดที่จังหวัดบุรีรัมย์ แต่เติบโตที่กรุงเทพมหานคร ชื่อเดิมคือ ปราณปรียา มโนบาล ซึ่งต่อมาเปลี่ยนเป็น ลลิษา มโนบาล คำว่า \"ลลิษา\" แปลว่า \"ผู้ที่ได้รับการยกย่อง เธอมีคุณพ่อบุญธรรมชื่อ มาร์โค บรอยช์ไวเลอร์ ชาวสวิตเซอร์แลนด์ เป็นที่ปรึกษาการประกอบธุรกิจร้านอาหารและผู้เชี่ยวชาญทางด้านอาหารไทยในกรุงเทพมหานคร ในสมัยที่เธอเป็นนักเรียนนั้นเธอเรียกว่าเป็นเด็กกิจกรรมของโรงเรียนเลยก็ว่าได้ ลิซ่า เคยเป็นตัวแทนโรงเรียนประกวดร้องเพลงในโครงการ \"3 คุณธรรมนำไทย\" ที่จัดโดยศูนย์คุณธรรม ได้รับรางวัลรองชนะเลิศ ประเภททีม เมื่อ พ.ศ. 2552</p><p>ลิซ่า เริ่มเป็นที่สนใจในปี ค.ศ. 2012 หลังจากวายจีอัปโหลดวิดีโอการเต้นของเธอลงบนยูทูปในชื่อคลิปว่า WHO\'S THAT GIRL??? ในวันที่ 3 พฤษภาคม 2556 เธอยังได้แสดงมิวสิกวิดีโอเพลง Ringa Linga ของแทยัง และเป็นนางแบบให้กับเสื้อผ้ายี่ห้อโนนากอน (Nonagon) ร่วมกับบี.ไอและบ็อบบี วงไอคอนในปี 2557</p><p>หลังจากการฝึกหัดนานกว่า 5 ปี ลิซ่าได้เป็นหนึ่งในสมาชิกวงแบล็กพิงก์ และเปิดตัวครั้งแรกด้วยอัลบั้ม สแควร์วัน เมื่อวันที่ 8 สิงหาคม 2559 ในเดือนพฤศจิกายน แบล็กพิงก์ได้รับรางวัลเอเชียอาร์ติสต์อะวอดส์รางวัลแรก สาขาศิลปินหน้าใหม่ยอดเยี่ยม ในปีต่อมา พวกเธอกวาดสามรางวัลจากแกออนชาร์ตเคป็อปอะวอดส์ ในสาขาศิลปินหน้าใหม่แห่งปี, เพลงแห่งปี ประจำเดือนสิงหาคม และเพลงแห่งปี ประจำเดือนพฤศจิกายน</p><p>โดยส่วนตัวของลิซ่านั้นเรียกว่าเป็นสมาชิกวง แบล็กพิงก์ ที่ได้รับความนิยมจากทั่วโลก ได้ร่วมงานกับแบรนด์ดังต่างประเทศมากมาย ไม่ว่าจะเป็น แบรนด์แอมบาสเดอร์ระดับโลกคนแรกอย่างเป็นทางการของ Celine ตลอดจนได้รับเลือกให้เป็นแบรนด์แอมบาสเดอร์ของ BVLGARI แบรนด์หรูชั้นนำของอิตาลี อีกด้วย นอกจากผลงานจากแบล็กพิงก์ แล้วเธอยังได้รับหน้าที่เป็น ที่ปรึกษาด้านการเต้น ในรายการ วัยรุ่นวัยฝัน ซีซัน 2 และ3 หรือ Youth With You ของประเทศจีนอีกด้วย</p>', 'ทั้งสวย ทั้งมากความสามารถ เลยจริงๆ สำหรับ ลิซ่า-ลลิษา มโนบาล หรือ ลิซ่า BLACKPINK เด็กไทยมากความสามารถ ที่ไปแจ้งเกิดโด่งดังเป็นศิลปินเกิร์ลกรุ๊ปที่ประเทศเกาหลีใต้ ซึ่งล่าสุดนั้นความสวยน่ารักบวกกับความ', 'blackpink', '2023-01-26 07:49:38', 5, 'poom'),
(31, 'ประวัติ โรเซ่ BLACKPINK สาวสวยผู้มีนำเสียงทรงพลังแห่งวง BLACKPINK', '207593390620230126_145433.jpg', '<h3>ประวัติ โรเซ่ BLACKPINK</h3><p>โรแซนน์ พัก (Roseanne Park) หรือ พัก แช-ย็อง (Park Chaeyoung) (ชื่อเกาหลี) หรือชื่อในวงการที่แฟนๆ รู้จักดีคือ โรเซ่ BLACKPINK (Rosé BLACKPINK) ศิลปินสาวหนึ่งในสมาชิกของ BLACKPINK วงเกิร์ลกรุ๊ปชื่อดังของเกาหลี เกิดเมื่อวันที่ 11 กุมภาพันธ์ ปี 1997 โดยเธอเกิดและอาศัยอยู่ที่ประเทศนิวซีแลนด์ จนกระทั้งเธอมีอายุ 7 ขวบ ก็ได้ย้ายไปอาศัยอยู่ที่เมลเบิร์น ออสเตรเลีย ซึ่งเธอเคยเป็นนักร้องประสานเสียงในโบสถ์ที่ออสเตรเลียนี้อีกด้วย</p><figure class=\"image image_resized\" style=\"width:16.67%;\"><img src=\"https://static2.yan.vn/YanNews/2167221/202008/yg-bat-ngo-danh-up-fan-voi-poster-rose-vong-1-rat-gi-va-nay-no-7a51dbf3.jpg\" alt=\"YG &quot;đánh úp&quot; fan với poster Rosé khoe vòng 1 &quot;rất gì và này nọ&quot;\"></figure><h3>โรเซ่ BLACKPINK</h3><h6>ต่อมาในปี 2012 ทาง โรเซ่ ในวัย 16 ปี ก็ได้เข้าออดิชั่นกับทางค่าย YG Entertainment ตามคำแนะนำของคุณพ่อของเธอ โดยนักร้องสาวได้อันดับที่หนึ่งจากผู้สมัครราว 700 คน โดยในระยะเวลาเพียง 2 เดือนเธอก็ได้ย้ายไปอยู่ที่กรุงโซล และเซ็ญสัญญาเข้ามาเป็นศิลปินฝึกหัดกับค่าย YG Entertainment ในวันที่ 7 พฤษภาคม ปี 2012 และภายหลังจากที่ โรเซ่ ได้ฝึกฝนเป็นระยะเวลา 4 ปี เธอก็ได้เดบิวต์อย่างเป็นทางการในฐานะหนึ่งในสมาชิกของวง BLACKPINK ในปี 2016</h6><h6><img class=\"image_resized\" style=\"width:17.64%;\" src=\"https://cms.dmpcdn.com/musicarticle/2020/11/03/7275f690-1dbd-11eb-9275-d9e61fe8653e_original.jpg\"></h6><p>โรเซ่ BLACKPINK<br>รายชื่อผลงานเพลงของวง Blackpink<br>Albums<br>Studio albums</p><p>เกาหลี :<br>ปี 2020<br>&nbsp; - The Album (วางจำหน่ายในวันที่ 2 ตุลาคม ปี 2020)</p><p>ญี่ปุ่น :&nbsp;<br>ปี 2018<br>&nbsp; - Blackpink in Your Area</p><p>Single albums<br>ปี 2016<br>&nbsp; - Square One<br>&nbsp; - Square Two<br>ปี 2020<br>&nbsp; - How You Like That</p><p>Extended plays<br>เกาหลี :&nbsp;<br>ปี 2018<br>&nbsp; - Square Up<br>ปี 2019<br>&nbsp; - Kill This Love</p><p>ญี่ปุ่น :&nbsp;<br>ปี 2017<br>&nbsp; - Blackpink</p><p>Singles<br>ปี 2016<br>&nbsp; - Boombayah<br>&nbsp;- Whistle<br>&nbsp;- Playing with Fire<br>&nbsp;- Stay</p><p>ปี 2017<br>&nbsp; - As If It\'s Your Last</p><p>ปี 2018<br>&nbsp; - Ddu-Du Ddu-Du</p><p>ปี 2019<br>&nbsp; - Kill This Love</p><p>ปี 2020<br>&nbsp; - How You Like That<br>&nbsp; - Ice Cream (with Selena Gomez)</p>', 'ประวัติ โรเซ่ BLACKPINK โรแซนน์ พัก (Roseanne Park) หรือ พัก แช-ย็อง (Park Chaeyoung) (ชื่อเกาหลี) หรือชื่อในวงการที่แฟนๆ รู้จักดีคือ โรเซ่ BLACKPINK (Rosé BLACKPINK) ศิลปินสาวหนึ่งในสมาชิกของ BLACKPI', 'blackpink', '2023-01-26 07:54:33', 3, 'poom');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `avatar` blob NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `username`, `password`, `email`, `role`) VALUES
(1, '', 'poom', '12345678', 'poom05@gmail.com', 'admin'),
(13, '', 'how', '12345678', 'how@gmail.com', 'user'),
(14, '', 'tayarat', 'tayarat122', 'tayarat@gmail.com', 'user');

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
  MODIFY `id_comm` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `article_tb`
--
ALTER TABLE `article_tb`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
