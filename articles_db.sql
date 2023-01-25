-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2023 at 02:27 PM
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
  `comment` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `id_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article_comment`
--

INSERT INTO `article_comment` (`id_comm`, `comment`, `username`, `id_article`) VALUES
(1, 'test', 'poom', 22),
(2, 'test2', 'poom', 22),
(4, 'test5', 'poom', 22),
(5, 'DCA comment', 'poom', 18),
(9, 'ton test\r\n', 'ton', 18);

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
(18, 'DCA คืออะไร?', '1295858366.jpg', '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(68, 68, 68);font-family:Thongterm;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px auto 24px;max-width:700px;orphans:2;overflow-wrap:break-word;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">นักลงทุนหลายคนมีมุมมองที่ผิด ว่าการ <strong style=\"box-sizing:border-box;font-family:Thongterm;line-height:1.5;\">DCA</strong> (Dollar-Cost Averaging) เป็นการออมที่หวังว่าวันหนึ่งจะช่วยให้เราเป็นอิสระทางการเงิน โดยไม่จำเป็นต้องมีความรู้ด้านการลงทุน ซึ่ง<strong style=\"box-sizing:border-box;font-family:Thongterm;line-height:1.5;\">เป็นความเชื่อ</strong>ที่น่ากลัวมาก เพราะจะทำให้ไม่ระมัดระวังในการเลือกหุ้น หรือกองทุน ที่จะลงทุน ซึ่งนับได้ว่าเป็นอีกหนึ่งสาเหตุที่ทำให้ขาดทุน</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(68, 68, 68);font-family:Thongterm;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px auto 24px;max-width:700px;orphans:2;overflow-wrap:break-word;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">ก่อนจะพูดถึงข้อดี, ข้อเสีย และสิ่งที่นักลงทุนมือใหม่มักจะเข้าใจผิด เกี่ยวกับการทำ Dollar-Cost Averaging เรามาทบทวนความเข้าใจกันสักหน่อยว่าการ DCA คืออะไร ?</p><h2 style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(68, 68, 68);font-family:Thongterm;font-size:22px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:500;letter-spacing:normal;line-height:1.1;margin:50px auto 40px;max-width:700px;orphans:2;overflow-wrap:break-word;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><strong style=\"box-sizing:border-box;font-family:Thongterm;line-height:1.5;\">DCA คืออะไร?</strong></h2><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(68, 68, 68);font-family:Thongterm;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px auto 24px;max-width:700px;orphans:2;overflow-wrap:break-word;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">การ DCA คืออีกรูปแบบหนึ่งของ<strong style=\"box-sizing:border-box;font-family:Thongterm;line-height:1.5;\">การลงทุน&nbsp;</strong>ซึ่งจะ<strong style=\"box-sizing:border-box;font-family:Thongterm;line-height:1.5;\">ลงทุนอย่างสม่ำเสมอ</strong>ในสินทรัพย์ที่เราเลือกเอาไว้ ไม่ว่าจะเป็นหุ้น หรือกองทุนก็ตาม<strong style=\"box-sizing:border-box;font-family:Thongterm;line-height:1.5;\"> เป็นจำนวนเงินเท่า ๆ กันทุกครั้ง โดยไม่สนใจว่าทรัพย์สินที่เลือกไว้จะราคาเท่าไหร่ </strong>ด้วยเหตุนี้ราคาของสินทรัพย์ที่เราได้ในภาพรวมนั้นก็จะเฉลี่ย ๆ กันไป ซึ่งโดยปกติแล้วความถี่ของการ DCA ของหลาย ๆ คนก็มักจะอยู่ที่รายเดือน เป็นอีกหนึ่งวิธียอดนิยมที่ใช้สร้างวินัยการลงทุนกัน</p><figure class=\"image image_resized\" style=\"width:auto;\"><img style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(68, 68, 68);font-family:Thongterm;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin-bottom:24px;margin-right:auto;margin-top:0px;max-width:700px;orphans:2;overflow-wrap:break-word;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\" src=\"https://www.finnomena.com/wp-content/uploads/2019/02/01.png\" alt=\"คุณรู้จัก DCA ดีแค่ไหน?\" srcset=\"https://www.finnomena.com/wp-content/uploads/2019/02/01.png 744w, https://www.finnomena.com/wp-content/uploads/2019/02/01-150x74.png 150w, https://www.finnomena.com/wp-content/uploads/2019/02/01-300x149.png 300w, https://www.finnomena.com/wp-content/uploads/2019/02/01-202x100.png 202w, https://www.finnomena.com/wp-content/uploads/2019/02/01-400x198.png 400w\" sizes=\"100vw\" width=\"720\"></figure><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(68, 68, 68);font-family:Thongterm;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px auto 24px;max-width:700px;orphans:2;overflow-wrap:break-word;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">ยกตัวอย่างเช่น อย่างตัวอย่างในรูปข้างบนนี้คือ การ DCA ในกองทุน ก. เป็นจำนวนเงิน 5,000 บาท ทุกๆ เดือน หรือจะเป็น การ DCA ในหลายสินทรัพย์เช่นการลงทุนใน กองทุน ข. และหุ้น ค. โดยลงทุนอย่างละ 3,000 บาท ทุกๆ 2 เดือน ก็ได้เช่นกัน ซึ่งจะเห็นได้ว่า จำนวนสินทรัพย์, ประเภทสินทรัพย์, และระยะเวลาความสม่ำเสมอ ขึ้นอยู่กับการตัดสินใจของเรา เพราะสิ่งที่สำคัญของ DCA คือ<strong style=\"box-sizing:border-box;font-family:Thongterm;line-height:1.5;\">การลงทุนอย่างเป็นประจำ โดยไม่สนใจเรื่องของราคา</strong></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:border-box;color:rgb(68, 68, 68);font-family:Thongterm;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px auto 24px;max-width:700px;orphans:2;overflow-wrap:break-word;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">เมื่อเริ่มเข้าใจแล้วว่าการทำ DCA เป็นอย่างไร เราก็มาดูกันเลยดีกว่า ว่าข้อดีและข้อเสีย ของ DCA มีอะไรบ้าง แล้วตบท้ายด้วยสิ่งที่ DCA ไม่ใช่ หรือสิ่งที่นักลงทุนมือใหม่จะเข้าใจผิดกับ DCA โดยเริ่มจากข้อดีก่อนเนอะ 🙂</p>', 'นักลงทุนหลายคนมีมุมมองที่ผิด ว่าการ DCA (Dollar-Cost Averaging) เป็นการออมที่หวังว่าวันหนึ่งจะช่วยให้เราเป็นอิสระทางการเงิน โดยไม่จำเป็นต้องมีความรู้ด้านการลงทุน ซึ่งเป็นความเชื่อที่น่ากลัวมาก เพราะจะ', 'การเงิน', '2023-01-23 08:01:47', 10, ''),
(20, 'Hypervisor (ไฮเปอร์ไวเซอร์) คือ อะไร มีประโยชน์และจุดประสงค์อะไร มีกี่ประเภท', '226521695.jpg', '<h1><strong>Hypervisor (ไฮเปอร์ไวเซอร์) คือ อะไร มีประโยชน์และจุดประสงค์อะไร มีกี่ประเภท</strong></h1><p>&nbsp;</p><p>Hypervisor (ไฮเปอร์ไวเซอร์) คือ อะไร มีประโยชน์และจุดประสงค์อะไร มีกี่ประเภท ระบบสมองกลแบบฝังตัวของ Hypervisor มีการทำงานอย่างไร ? มาหาคำตอบกัน<br>hypervisor คือเทคนิคการจำลองให้ระบบปฏิบัติการหลายระบบสามารถทำงานพร้อมกันบนโฮสต์ได้ โดยหน้าที่ของ hyper v คือการตั้งค่าระบบปฏิบัติการแต่ละระบบไม่ให้เกิดการทำงานที่ทับซ้อนกัน Hypervisor ได้ถูกเรียกอีกอย่างว่า Virtual Machine Management (VMM) ขึ้นอยู่กับภารกิจที่ได้รับเพื่อจัดการเครื่องเสมือนหลายเครื่อง</p><p>โดยคลัสเตอร์การคำนวณ, การคำนวณแบบกริด, พีซีหรือเมนเฟรมซึ่งอยู่ในคอมพิวเตอร์ทุกประเภทจะมีระบบที่ต่างกัน เพราะในแต่ละระบบปฏิบัติการถูกออกแบบตามความต้องการของระบบนั้นๆ สำหรับ Hypervisor ถูกออกแบบให้เหมาะกับเมนเฟรมมากกว่า Windows OS เนื่องจาก Hypervisor ต้องจัดการหลายระบบพร้อมกันได้เหมือนกับโฮสต์</p><p>จุดประสงค์ของพื้นฐานของ Hypervisor (ไฮเปอร์ไวเซอร์) เป็นอย่างไร<br>จุดประสงค์ของ Hypervisor หรือ Virtual Machine Manager (VMM) คือการให้คอมพิวเตอร์หลายเครื่องสามารถแบ่งปันแพลตฟอร์มฮาร์ดแวร์เดียวกันได้ ซึ่งระบบปฏิบัติการได้ออกแบบเพื่อให้ทำงานกับฮาร์ดแวร์ได้แบบ 1 ต่อ 1 เท่านั้น แต่โปรเซสเซอร์แบบมัลติคอร์มัลติเธรดและ RAM จำนวนมากจะทำให้สามารถรันโปรแกรมพร้อมกันหลายตัวได้</p><p>Hypervisor VMware จะแยกระบบปฏิบัติการ (OS) ให้ออกจากฮาร์ดแวร์ โดยจะอนุญาตให้แต่ละครั้งในเวลาที่ใช้งาน server คือ ระบบปฏิบัติการด้วยฮาร์ดแวร์แบบพื้นฐาน ซึ่งมันจะทำหน้าที่เหมือนกับตำรวจจราจรที่คอยให้ในการใช้งานการใช้ CPU, หน่วยความจำ, GPU และฮาร์ดแวร์ส่วนอื่น ๆ ระบบปฏิบัติการแต่ละระบบซึ่งถูกควบคุมโดย Hyperviso จะถูกเรียกว่า guest OS<br>อีกทั้งระบบปฏิบัติการของ Hypervisor จะมีชื่อเรียกว่า โฮสต์ OS เพราะตั้งอยู่ระหว่าง guest OS และฮาร์ดแวร์ นอกจากนี้คุณสามารถมี guest OS หลายประเภทได้ เช่น Windows, OS X, Linux เป็นต้น</p><p>ประโยชน์สำคัญของ Hypervisor (ไฮเปอร์ไวเซอร์) และสามารถทำอะไรได้บ้าง<br>ประโยชน์ที่สำคัญของ Hypervisor คือความปลอดภัย ถ้าคุณอยากทดสอบซอฟต์แวร์ซึ่งอาจมีความเสี่ยง หรืออันตรายต่อคอมพิวเตอร์ของคุณ คุณสามารถทดสอบใน Hypervisor ได้ เพราะถ้าเกสต์ OS มีไวรัสมันจะไม่ส่งผลกระทบกับไฟล์ที่อยู่บนโฮสต์ของระบบปฏิบัติการ เว้นเสียแต่ว่ามีโฟลเดอร์ที่แชร์เชื่อมต่อกับระบบทั้งสอง แต่ถ้าระบบปฏิบัติการทั้งสองแยกกันไวรัสจะไม่สามารถเข้าสู่คอมพิวเตอร์ได้ จึงทำให้ข้อมูลทั้งหมดปลอดภัย</p><p>Hypervisor ซึ่งนิยมใช้กันมากในปัจจุบัน ได้แก่ VMware ESXi, Xen, Microsoft Hyper-V, VMware Workstation, Oracle Virtualbox และ Microsoft VirtualPC ไม่ว่าระบบ ปฏิบัติการ มี กี่ ประเภททั้งหมดนี้สามารถช่วยให้ผู้ใช้งานจำลองระบบปฏิบัติการมากกว่าหนึ่งระบบขึ้นไปบนฮาร์ดแวร์ชิ้นเดียวได้</p>', 'Hypervisor (ไฮเปอร์ไวเซอร์) คือ อะไร มีประโยชน์และจุดประสงค์อะไร มีกี่ประเภท ระบบสมองกลแบบฝังตัวของ Hypervisor มีการทำงานอย่างไร ? มาหาคำตอบกัน hypervisor คือเทคนิคการจำลองให้ระบบปฏิบัติการหลายระบบสาม', 'Computer', '0000-00-00 00:00:00', 20, ''),
(21, 'Dedicated Server, VPS และ VMware คืออะไรและต่างกันอย่างไร', NULL, '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(68, 68, 68);font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 15px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><span class=\"wysiwyg-font-size-large\" style=\"outline:none;\"><strong style=\"outline:none;\">Dedicated Server, VPS และ VMware คืออะไรและต่างกันอย่างไร</strong></span></p><figure class=\"image\"><img src=\"https://www.dataplugs.com/wp-content/uploads/2019/10/vps_1.jpg\" alt=\"Difference Between Virtual Private Servers and Dedicated Servers?\"></figure><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(68, 68, 68);font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:15px 0px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">&nbsp; &nbsp; &nbsp; &nbsp;<strong style=\"outline:none;\">Dedicated Server</strong> คือ Physical Server ที่รองรับการให้บริการบนระบบเครือข่าย เป็นรูปแบบบริการสำหรับเช่าใช้ Server โดยสามารถใช้งาน Resource ทั้งหมดของเครื่องและไม่ Shared Resource กับเครื่องอื่น สามารถปรับแต่ง Resource ได้เองโดยอิสระ มีความยืดหยุ่นมากกว่าบริการอื่น สามารถบริหารจัดการ Resource ของตนเองได้อย่างเต็มประสิทธิภาพทั้ง CPU, Memory, Disk รวมถึง Network เป็นบริการที่มีประสิทธิภาพสูงสุด มักใช้สำหรับเว็บไซต์ที่มี Traffic สูงๆ มีปริมาณการเข้าใช้งานพร้อมกันจำนวนมากๆ ต้องการระบบการจัดเก็บไฟล์ขนาดใหญ่ และต้องการความเป็นส่วนตัวสำหรับการเข้าถึงข้อมูล</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(68, 68, 68);font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:15px 0px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><span style=\"font-weight:400;outline:none;\">&nbsp; &nbsp; &nbsp; &nbsp;<strong style=\"outline:none;\">VPS</strong> คือชื่อบริการซึ่งเป็นบริการเซิร์ฟเวอร์เสมือน เป็นการแบ่ง Physical Server 1 เครื่องออกเป็น VM (Virtual Machin) ย่อยหลายๆ เครื่อง เพื่อให้สามารถแยกการประมวลผลออกจากกัน ใช้ Software ที่สามารถจัดการ VM ผ่าน Web UI สนับสนุนเทคโนโลยี Virtualization เช่น OpenVZ, Xen PV, Xen HVM, XenServer, Linux KVM, LXC และ OpenVZ7 เป็นบริการที่เหมาะกับผู้ที่ต้องการความอิสระในการปรับแต่งการทำงานระดับ Root หรือ Services ต่างๆ เสมือนใช้เซิร์ฟเวอร์ตัวเอง เป็นบริการที่ราคาถูกที่สุดหากเปรียบเทียบกับบริการอื่น</span></p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(68, 68, 68);font-family:&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:15px 0px;orphans:2;outline:none;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><span style=\"font-weight:400;outline:none;\">&nbsp; &nbsp; &nbsp; &nbsp;<strong style=\"outline:none;\">VMware</strong> คือหนึ่งในบริการของ Cloud VPS ซึ่งเป็นเทคโนโลยีสำหรับทำระบบ Server Virtualization เป็นส่วนหนึ่งใน Software Defined Data Center เป็นโปรแกรมสำหรับควบคุมและสร้างคอมพิวเตอร์เสมือน (Virtual Machine) มี 2 องค์ประกอบหลักคือ ESXi และ vCenter Server เป็นโปรแกรมจำลองคอมพิวเตอร์เสมือนเช่นเดียวกับ VPS แต่ความสามารถสูงกว่า รองรับการทำ High Availability, Failover และ Load Balancing เป็นต้น &nbsp; &nbsp; &nbsp; &nbsp;ระบบ Cloud ของ VMware มีต้นทุนของระบบที่สูงกว่าแบบอื่นๆ รวมถึงมีการใช้เทคโนโลยีที่มีประสิทธิภาพมากกว่า จึงทำให้การทำงานของเซิร์ฟเวอร์เสมือนของผู้ใช้งานสามารถทำงานได้อย่างต่อเนื่องและมีความปลอดภัยของข้อมูลมากที่สุด</span></p>', 'Dedicated Server คือ Physical Server ที่รองรับการให้บริการบนระบบเครือข่าย เป็นรูปแบบบริการสำหรับเช่าใช้ Server โดยสามารถใช้งาน Resource ทั้งหมดของเครื่องและไม่ Shared Resource กับเครื่องอื่น สามารถปรั', 'Computer', '0000-00-00 00:00:00', 30, ''),
(22, '12 สุดยอดสถานที่ท่องเที่ยวในนิวซีแลนด์ New Zealand', '331783384.jpg', '<h1><strong>12 สุดยอดสถานที่ท่องเที่ยวในนิวซีแลนด์ New Zealand</strong></h1><figure class=\"image image_resized\" style=\"width:58.95%;\"><img src=\"https://www.yingpook.com/static/assets/uploads/wp-content/uploads/2018/04/96810288_2410536539236250_8851505225677144064_n.jpg\" alt=\"12 สุดยอดสถานที่ท่องเที่ยวในนิวซีแลนด์ New Zealand\"></figure><p>เที่ยวนิวซีแลนด์ ดินแดนสวรรค์บนดิน ที่ขึ้นชื่อเรื่องความงดงามของธรรมชาติ และอากาศอันบริสุทธิ์ มีสถานที่เที่ยวและกิจกรรมสำหรับนักท่องเที่ยวมากมาย ทั้งเดินบนธารน้ำแข็งขนาดยักษ์ ชมทะเลสาบสีเขียวฟ้าใส ตาม.</p>', 'เที่ยวนิวซีแลนด์ ดินแดนสวรรค์บนดิน ที่ขึ้นชื่อเรื่องความงดงามของธรรมชาติ และอากาศอันบริสุทธิ์ มีสถานที่เที่ยวและกิจกรรมสำหรับนักท่องเที่ยวมากมาย ทั้งเดินบนธารน้ำแข็งขนาดยักษ์ ชมทะเลสาบสีเขียวฟ้าใส ตาม', 'ท่องเที่ยว', '0000-00-00 00:00:00', 40, ''),
(25, 'Deploy Go ไปยัง Azure App Service', '1726566467.jpg', '<figure class=\"image\"><img src=\"https://www.borntodev.com/wp-content/uploads/2023/01/11130495.png\"></figure><p style=\"text-align:center;\"><br>มาสร้างตัวอย่าง Go Application อย่างง่าย ๆ กัน<br>ไปที่ Visual Studio Code แล้วใช้คำสั่ง `go mod init ตามด้วยชื่อ module`<br>โดยคำสั่ง go mod init มันจะสร้างไฟล์ go.mod มาให้ แล้วการที่เราใส่ path ด้านหลังนั้นเพื่อให้จัดการ และ เรียกใช้ง่ายขึ้น เช่น เวลาที่ต้องการนำโปรเจกต์นี้ไปทำเป็น package ของตัวเองก็สามารถเรียกใช้จาก Github ได้เลย เจ้าไฟล์ go.mod มีหน้าที่เก็บพวกชื่อ package และเวอร์ชันของ packa</p>', ' สรุปสั้น ๆ จากงาน Microsoft Ignite ปีนี้ Microsoft ได้ออกมาอัปเดตว่า Azure App Service ที่เป็นบริการเอาสำหรับโฮสต์เว็บแอปพลิเคชัน, เว็บ API หรือ Mobile Backend ได้มีการอัปเดตว่าเค้าได้มีการรองรับภาษา', 'Computer', '0000-00-00 00:00:00', 0, ''),
(26, 'test', '129257328520230125_134500.jpg', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s w</p>', 'test', 'Money', '0000-00-00 00:00:00', 0, ''),
(27, 'test2', '27889226620230125_195555.jpg', '<p><strong style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);color:rgb(0, 0, 0);font-family:&quot;Open Sans&quot;, Arial, sans-serif;font-size:14px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;letter-spacing:normal;margin:0px;orphans:2;padding:0px;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">Lorem Ipsum</strong><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:&quot;Open Sans&quot;, Arial, sans-serif;font-size:14px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></span></p>', 'test2', 'test', '2023-01-25 12:55:55', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `role`) VALUES
(1, 'poom', '12345678', 'poom05@gmail.com', 'admin'),
(9, 'ton', '12345678', 'phakphumi05@gmail.com', 'user'),
(13, 'how', '12345678', 'how@gmail.com', 'user');

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
  MODIFY `id_comm` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `article_tb`
--
ALTER TABLE `article_tb`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
