-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: lavenderdatabase.mysql.database.azure.com    Database: lavender
-- ------------------------------------------------------
-- Server version	5.6.47.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `baiviet`
--

DROP TABLE IF EXISTS `baiviet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baiviet` (
  `MABAIVIET` int(11) NOT NULL AUTO_INCREMENT,
  `TIEUDE` text NOT NULL,
  `MOTA` text,
  `NOIDUNG` longtext,
  `THUMNAIL` longtext,
  `XACNHAN` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`MABAIVIET`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baiviet`
--

LOCK TABLES `baiviet` WRITE;
/*!40000 ALTER TABLE `baiviet` DISABLE KEYS */;
INSERT INTO `baiviet` VALUES (2,'Việt Nam đã tạo lập thành công hệ sinh thái an toàn thông tin mạng, sẽ \'xuất ngoại\' nhiều hơn các sản phẩm Make in Vietnam','Theo đại diện Cục An toàn thông tin, Việt Nam đã có hệ sinh thái đa dạng, đầy đủ các chủng loại sản phẩm an toàn thông tin mạng, với chất lượng tương đương sản phẩm nước ngoài. Một số sản phẩm đã được trao giải thưởng ở nước ngoài','<h1>Việt Nam đ&atilde; tạo lập th&agrave;nh c&ocirc;ng hệ sinh th&aacute;i an to&agrave;n th&ocirc;ng tin mạng, sẽ &#39;xuất ngoại&#39; nhiều hơn c&aacute;c sản phẩm Make in Vietnam</h1>  <p><a href=\"https://www.thegioididong.com/tin-tuc/profile/0\">Phạm Hữu Th&agrave;nh</a>&nbsp;2 giờ trước</p>  <p><img alt=\"antoanmang\" src=\"https://cdn.tgdd.vn/Files/2021/12/17/1404929/anhdaibai_1280x720-800-resize.jpg\" title=\"antoanmang\" /></p>  <p>Ảnh minh họa hệ sinh th&aacute;i sản phẩm an to&agrave;n th&ocirc;ng tin mạng</p>  <h2>Theo đại diện Cục An to&agrave;n th&ocirc;ng tin, Việt Nam đ&atilde; c&oacute; hệ sinh th&aacute;i đa dạng, đầy đủ c&aacute;c chủng loại sản phẩm an to&agrave;n th&ocirc;ng tin mạng, với chất lượng tương đương sản phẩm nước ngo&agrave;i. Một số sản phẩm đ&atilde; được trao giải thưởng ở nước ngo&agrave;i.&nbsp;Th&ocirc;ng tin n&agrave;y m&igrave;nh vừa đọc được từ&nbsp;<a href=\"https://ictnews.vietnamnet.vn/bao-mat/viet-nam-da-co-he-sinh-thai-san-pham-an-toan-thong-tin-mang-da-dang-400637.html\" rel=\"nofollow\" target=\"_blank\" title=\"ictnews\" type=\"ictnews\">ictnews</a>&nbsp;(chuy&ecirc;n trang của&nbsp;<a href=\"https://vietnamnet.vn/\" rel=\"nofollow\" target=\"_blank\" title=\"Báo Vietnamnet\" type=\"Báo Vietnamnet\">B&aacute;o Vietnamnet</a>), thấy kh&aacute; hữu &iacute;ch n&ecirc;n muốn chia sẻ để mọi người c&ugrave;ng biết.</h2>  <h3><strong>Dần h&igrave;nh th&agrave;nh nền c&ocirc;ng nghiệp an to&agrave;n th&ocirc;ng tin nội địa</strong></h3>  <p>Chia sẻ tại lễ c&ocirc;ng bố v&agrave; trao danh hiệu &ldquo;Ch&igrave;a kh&oacute;a v&agrave;ng&rdquo; năm 2021 vừa được Hiệp hội An to&agrave;n th&ocirc;ng tin Việt Nam (VNISA) tổ chức, &ocirc;ng Nguyễn Th&agrave;nh Ph&uacute;c, Cục trưởng Cục An to&agrave;n th&ocirc;ng tin, Bộ TT&amp;TT cho biết: Bộ TT&amp;TT đ&atilde; x&aacute;c định vấn đề l&agrave;m chủ giải ph&aacute;p, c&ocirc;ng nghệ bảo đảm an to&agrave;n th&ocirc;ng tin mạng l&agrave; yếu tố căn cơ, then chốt trong c&ocirc;ng t&aacute;c bảo đảm an to&agrave;n th&ocirc;ng tin.</p>  <p><img alt=\"antoanmang\" src=\"https://cdn.tgdd.vn/Files/2021/12/17/1404929/anhminhhoa_1280x960-800-resize.jpg\" title=\"antoanmang\" /></p>  <p>&Ocirc;ng Nguyễn Th&agrave;nh Ph&uacute;c, Bộ Th&ocirc;ng tin v&agrave; Truyền th&ocirc;ng</p>  <p>Với vai tr&ograve; quản l&yacute;, dẫn dắt, thời gian qua Bộ TT&amp;TT đ&atilde; c&ugrave;ng với VNISA hỗ trợ cộng đồng doanh nghiệp an to&agrave;n th&ocirc;ng tin mạng để tập trung ph&aacute;t triển, l&agrave;m chủ Hệ sinh th&aacute;i sản phẩm, an to&agrave;n an ninh mạng Make in Vietnam.</p>  <p>T&iacute;nh đến nay, Việt Nam đ&atilde; c&oacute; hệ sinh th&aacute;i gồm đa dạng, đầy đủ c&aacute;c chủng loại sản phẩm an to&agrave;n th&ocirc;ng tin mạng, với chất lượng tương đương sản phẩm nước ngo&agrave;i. Một số sản phẩm đ&atilde; được đ&aacute;nh gi&aacute;, c&ocirc;ng nhận, trao giải thưởng ở nước ngo&agrave;i.&nbsp;</p>  <p>Từ kết quả c&ocirc;ng t&aacute;c thẩm định, đ&aacute;nh gi&aacute; c&aacute;c sản phẩm, dịch vụ an to&agrave;n th&ocirc;ng tin mạng tham dự &ldquo;Ch&igrave;a kh&oacute;a v&agrave;ng&rdquo; năm nay, &ocirc;ng Vũ Quốc Kh&aacute;nh, Ph&oacute; Chủ tịch VNISA, Ph&oacute; Chủ tịch Hội đồng b&igrave;nh chọn cho biết, qua số lượng vượt trội của nhiều sản phẩm mới v&agrave; sự hiện diện của nhiều doanh nghiệp mới trong hạng mục &ldquo;Sản phẩm an to&agrave;n th&ocirc;ng tin triển vọng xuất sắc&rdquo;.</p>  <p><img alt=\"antoanmang\" src=\"https://cdn.tgdd.vn/Files/2021/12/17/1404929/antoanmang_1280x720-800-resize.jpg\" title=\"antoanmang\" /></p>  <p>Ảnh minh họa &quot;Ch&igrave;a kh&oacute;a v&agrave;ng&quot;</p>  <p>Đồng thời, chương tr&igrave;nh cũng cho thấy sự đa dạng của c&aacute;c sản phẩm v&agrave; dịch vụ an to&agrave;n th&ocirc;ng tin của c&aacute;c doanh nghiệp Việt Nam, với mức độ nội địa h&oacute;a v&agrave; tự ph&aacute;t triển giải ph&aacute;p khoa học kỹ thuật rất cao, ho&agrave;n to&agrave;n l&agrave;m chủ c&ocirc;ng nghệ trong nhiều lĩnh vực: Từ gi&aacute;m s&aacute;t an ninh mạng, cảnh b&aacute;o sớm đến phản ứng nhanh, chống tấn c&ocirc;ng mạng.</p>  <p>Từ c&aacute;c giải ph&aacute;p bảo vệ website đến c&aacute;c phần mềm chống m&atilde; độc; từ c&aacute;c sản phẩm mật m&atilde; d&acirc;n sự đến c&aacute;c giải ph&aacute;p l&agrave;m việc từ xa an to&agrave;n; từ c&aacute;c giải ph&aacute;p nền tảng phục vụ cho chuyển đổi số đến c&aacute;c giải ph&aacute;p giao dịch điện tử an to&agrave;n; Từ c&aacute;c dịch vụ đ&aacute;nh gi&aacute; v&agrave; bảo vệ an to&agrave;n th&ocirc;ng tin cho hệ thống đến c&aacute;c dịch vụ tư vấn an to&agrave;n th&ocirc;ng tin...</p>  <p><img alt=\"antoanmang\" src=\"https://cdn.tgdd.vn/Files/2021/12/17/1404929/antoanmang11_1280x800-800-resize.jpg\" title=\"antoanmang\" /></p>  <p>Ảnh minh họa dịch vụ an to&agrave;n th&ocirc;ng tin</p>  <p>&ldquo;Thực tế, nhiều sản phẩm, dịch vụ của c&aacute;c doanh nghiệp Việt Nam ho&agrave;n to&agrave;n c&oacute; thể thay thế sản phẩm, dịch vụ tương tự của nước ngo&agrave;i&rdquo;, &ocirc;ng Vũ Quốc Kh&aacute;nh nhận x&eacute;t.</p>  <h3><strong>Giải b&agrave;i to&aacute;n mở rộng thị trường cho sản phẩm Make in Vietnam</strong></h3>  <p>Tuy nhi&ecirc;n, Cục trưởng Cục An to&agrave;n th&ocirc;ng tin Nguyễn Th&agrave;nh Ph&uacute;c cũng chỉ r&otilde;: Số liệu doanh thu h&agrave;ng qu&yacute;, h&agrave;ng năm của sản phẩm an to&agrave;n th&ocirc;ng tin mạng nội địa v&agrave; sản phẩm nước ngo&agrave;i vẫn c&ograve;n ch&ecirc;nh lệch; doanh thu sản phẩm nội địa c&ograve;n thấp so với doanh thu sản phẩm nước ngo&agrave;i.</p>  <p>Trả lời cho c&acirc;u hỏi &ldquo;Đ&acirc;u l&agrave; lời giải cho b&agrave;i to&aacute;n về sự ch&ecirc;nh lệch doanh thu giữa sản phẩm nội địa v&agrave; sản phẩm của nước ngo&agrave;i?&quot;, &ocirc;ng Nguyễn Th&agrave;nh Ph&uacute;c nhấn mạnh, thị trường l&agrave; mở, l&agrave; tu&acirc;n theo quy luật cung cầu.</p>  <p><img alt=\"antoanmang\" src=\"https://cdn.tgdd.vn/Files/2021/12/17/1404929/baomatkhihoptructuyen-1587704997_750x0_1280x777-800-resize.jpg\" title=\"antoanmang\" /></p>  <p>Sản phẩm Make in Viet Nam ho&agrave;n to&agrave;n c&oacute; ưu thế về quy tr&igrave;nh hỗ trợ nghiệp vụ</p>  <p>Do vậy, sản phẩm tốt, dịch vụ tốt sẽ được người d&ugrave;ng lựa chọn. Một sản phẩm tốt cần: Tốt về t&iacute;nh năng kỹ thuật; tốt về quy tr&igrave;nh hỗ trợ nghiệp vụ; tốt về nhận sự hỗ trợ; tốt về giải quyết được vấn đề an to&agrave;n th&ocirc;ng tin của Việt Nam.</p>  <p>&quot;Trong 4 c&aacute;i cần tốt kể tr&ecirc;n, sản phẩm Make in Viet Nam ho&agrave;n to&agrave;n c&oacute; ưu thế về quy tr&igrave;nh hỗ trợ nghiệp vụ, về nhận sự hỗ trợ cũng như việc giải quyết được c&aacute;c vấn đề an to&agrave;n th&ocirc;ng tin của Việt Nam. &quot;Ch&uacute;ng ta phải tận dụng được lợi thế n&agrave;y để cạnh tranh với sản phẩm nước ngo&agrave;i&rdquo;, &ocirc;ng Nguyễn Th&agrave;nh Ph&uacute;c n&ecirc;u quan điểm.</p>  <p>Nh&igrave;n lại h&agrave;nh tr&igrave;nh gần 1 năm vừa qua, đại diện Cục An to&agrave;n th&ocirc;ng tin đ&aacute;nh gi&aacute;: Năm 2021 đ&aacute;nh dấu bước tiến quan trọng của lĩnh vực an to&agrave;n th&ocirc;ng tin, đặc biệt l&agrave; ảnh hưởng của dịch bệnh Covid-19 đ&atilde; l&agrave;m cho động lực cần chuyển đổi số mạnh hơn bao giờ hết. Việc đảm bảo an to&agrave;n th&ocirc;ng tin mạng giai đoạn hiện nay trở n&ecirc;n cấp thiết, trọng yếu hơn bao hết.</p>  <p><img alt=\"antoanmang\" src=\"https://cdn.tgdd.vn/Files/2021/12/17/1404929/tin-tac-nga-tan-cong-my-9586362_4102020_1280x846-800-resize.jpg\" title=\"antoanmang\" /></p>  <p>Đảm bảo an to&agrave;n th&ocirc;ng tin mạng giai đoạn hiện nay trở n&ecirc;n cấp thiết, trọng yếu hơn bao hết</p>  <p>Đại diện Cục An to&agrave;n th&ocirc;ng tin cho rằng, đ&acirc;y l&agrave; cơ hội lớn v&agrave; cũng l&agrave; th&aacute;ch thức với c&aacute;c doanh nghiệp an to&agrave;n th&ocirc;ng tin mạng Việt Nam trong việc mở rộng thị trường, đưa sản phẩm an to&agrave;n th&ocirc;ng tin mạng Make in Vietnam đến tay người sử dụng trong nước v&agrave; vươn ra quốc tế.</p>  <p>&quot;Bộ TT&amp;TT k&ecirc;u gọi c&aacute;c doanh nghiệp trong lĩnh vực an to&agrave;n th&ocirc;ng tin mạng đẩy mạnh nghi&ecirc;n cứu, ph&aacute;t triển sản phẩm mới, đi trước một bước để ph&aacute;t triển những sản phẩm m&agrave; thế giới chưa ho&agrave;n thiện để khẳng định thương hiệu Make in Vietnam trong lĩnh vực an to&agrave;n th&ocirc;ng tin mạng. Bộ TT&amp;TT cũng tin tưởng lĩnh vực n&agrave;y sớm c&oacute; thể trở th&agrave;nh mũi nhọn trong việc khẳng định chất lượng của sản phẩm Việt Nam, của tr&iacute; tuệ người Việt&rdquo;, đại diện Cục An to&agrave;n th&ocirc;ng tin n&oacute;i.</p>  <p><img alt=\"antoanmang\" src=\"https://cdn.tgdd.vn/Files/2021/12/17/1404929/baomatthongtin_1280x670-800-resize.jpg\" title=\"antoanmang\" /></p>  <p>C&aacute;c doanh nghiệp trong lĩnh vực an to&agrave;n th&ocirc;ng tin mạng cần đẩy mạnh nghi&ecirc;n cứu, ph&aacute;t triển sản phẩm mới</p>  <p>Ở g&oacute;c độ của VNISA, Chủ tịch Nguyễn Th&agrave;nh Hưng cũng n&ecirc;u khuyến nghị c&aacute;c doanh nghiệp: Với c&aacute;c sản phẩm, dịch vụ an to&agrave;n th&ocirc;ng tin đ&atilde; khẳng định tr&ecirc;n thị trường, n&ecirc;n c&oacute; hướng tiếp tục ph&aacute;t triển tiệm cận c&aacute;c ti&ecirc;u chuẩn quốc tế nhằm từng bước vươn ra thị trường quốc tế.</p>  <p>C&aacute;c doanh nghiệp cũng n&ecirc;n đầu tư ph&aacute;t triển c&aacute;c dịch vụ an to&agrave;n th&ocirc;ng tin cơ bản, chi ph&iacute; hợp l&yacute;, ph&ugrave; hợp số đ&ocirc;ng người d&ugrave;ng tại Việt Nam, phục vụ cho tiến tr&igrave;nh chuyển đổi số.&nbsp;</p>  <p>Bạn đ&aacute;nh gi&aacute; như thế n&agrave;o về&nbsp;hệ sinh th&aacute;i sản phẩm an to&agrave;n th&ocirc;ng tin mạng Việt Nam? Để tăng cường bảo mật cho m&aacute;y t&iacute;nh v&agrave; c&aacute;c dữ liệu c&aacute; nh&acirc;n của m&igrave;nh th&igrave; c&aacute;c bạn c&oacute; thể chon mua phần mềm bảo vệ&nbsp;Kaspersky c&oacute; gi&aacute; kh&aacute; tốt bằng c&aacute;ch bấm v&agrave;o n&uacute;t cam b&ecirc;n dưới.</p>  <p>&nbsp;</p>','https://cdn.tgdd.vn/Files/2021/12/17/1404929/anhdaibai_1280x720-800-resize.jpg',1),(3,'MediaTek bật mí về chip Dimensity 8000, GPU được cho là nhanh gấp đôi và tiết kiệm điện năng hơn 22% so với thế hệ trước','Tại buổi họp báo mới đây, MediaTek đã xác nhận rằng chip Dimensity 9000 sẽ được trang bị cho OPPO Find X4 và Redmi K50 sắp tới. Chưa hết, hãng còn bật mí sự tồn tại của chip Dimensity 8000 mới, dĩ nhiên là giá thành sẽ thấp hơn Dimensity 9000.','<h1>MediaTek bật m&iacute; về chip Dimensity 8000, GPU được cho l&agrave; nhanh gấp đ&ocirc;i v&agrave; tiết kiệm điện năng hơn 22% so với thế hệ trước</h1>  <p><img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2021/12/17/1404952/dimensity-8000-teaser_1280x720-800-resize.jpg\" /></p>  <p>Tại buổi họp b&aacute;o mới đ&acirc;y, MediaTek đ&atilde; x&aacute;c nhận rằng chip Dimensity 9000 sẽ được trang bị cho&nbsp;<a href=\"https://www.thegioididong.com/dtdd/oppo-find-x4\" target=\"_blank\" title=\"Chi tiết OPPO Find X4\" type=\"Chi tiết OPPO Find X4\">OPPO Find X4</a>&nbsp;v&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd/xiaomi-redmi-k50\" target=\"_blank\" title=\"Chi tiết Xiaomi Redmi K50\" type=\"Chi tiết Xiaomi Redmi K50\">Redmi K50</a>&nbsp;sắp tới. Chưa hết, h&atilde;ng c&ograve;n bật m&iacute; sự tồn tại của chip Dimensity 8000 mới, dĩ nhi&ecirc;n l&agrave; gi&aacute; th&agrave;nh sẽ thấp hơn&nbsp;Dimensity 9000.</p>  <p>Tuy&nbsp;MediaTek kh&ocirc;ng&nbsp;tiết lộ nhiều th&ocirc;ng tin về&nbsp;Dimensity 8000 trong b&agrave;i thuyết tr&igrave;nh ở buổi họp b&aacute;o, nhưng về ph&iacute;a leaker nổi tiếng&nbsp;Digital Chat Station cho biết rằng con chip mới n&agrave;y sẽ được sản xuất tr&ecirc;n quy tr&igrave;nh&nbsp;5 nm của TSMC thay v&igrave; quy tr&igrave;nh 4 nm ti&ecirc;n tiến.</p>  <p>Chip&nbsp;Dimensity 8000 được cho l&agrave;&nbsp;sẽ sử dụng kiến tr&uacute;c ARMv8 cũ hơn với CPU 8 nh&acirc;n bao gồm 4 nh&acirc;n Cortex-A78 tốc độ 2.75 GHz v&agrave; 4 nh&acirc;n Cortex-A55 tốc độ 2.0 GHz, thay v&igrave; Cortex-A710 v&agrave; Cortex-A510 mới được sử dụng trong Dimensity 9000</p>  <p>MediaTek bật m&iacute; về chip Dimensity 8000 tại buổi họp b&aacute;o mới đ&acirc;y</p>  <h2>Tại buổi họp b&aacute;o mới đ&acirc;y, MediaTek đ&atilde; x&aacute;c nhận rằng chip Dimensity 9000 sẽ được trang bị cho&nbsp;<a href=\"https://www.thegioididong.com/dtdd/oppo-find-x4\" target=\"_blank\" title=\"Chi tiết OPPO Find X4\" type=\"Chi tiết OPPO Find X4\">OPPO Find X4</a>&nbsp;v&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd/xiaomi-redmi-k50\" target=\"_blank\" title=\"Chi tiết Xiaomi Redmi K50\" type=\"Chi tiết Xiaomi Redmi K50\">Redmi K50</a>&nbsp;sắp tới. Chưa hết, h&atilde;ng c&ograve;n bật m&iacute; sự tồn tại của chip Dimensity 8000 mới, dĩ nhi&ecirc;n l&agrave; gi&aacute; th&agrave;nh sẽ thấp hơn&nbsp;Dimensity 9000.</h2>  <p>Tuy&nbsp;MediaTek kh&ocirc;ng&nbsp;tiết lộ nhiều th&ocirc;ng tin về&nbsp;Dimensity 8000 trong b&agrave;i thuyết tr&igrave;nh ở buổi họp b&aacute;o, nhưng về ph&iacute;a leaker nổi tiếng&nbsp;Digital Chat Station cho biết rằng con chip mới n&agrave;y sẽ được sản xuất tr&ecirc;n quy tr&igrave;nh&nbsp;5 nm của TSMC thay v&igrave; quy tr&igrave;nh 4 nm ti&ecirc;n tiến.</p>  <p>Chip&nbsp;Dimensity 8000 được cho l&agrave;&nbsp;sẽ sử dụng kiến tr&uacute;c ARMv8 cũ hơn với CPU 8 nh&acirc;n bao gồm 4 nh&acirc;n Cortex-A78 tốc độ 2.75 GHz v&agrave; 4 nh&acirc;n Cortex-A55 tốc độ 2.0 GHz, thay v&igrave; Cortex-A710 v&agrave; Cortex-A510 mới được sử dụng trong Dimensity 9000.</p>  <p><img alt=\"Chip Dimensity 8000 sẽ phổ biến ở phân khúc smartphone tầm trung\" src=\"https://cdn.tgdd.vn/Files/2021/12/17/1404952/chip-dimensity-8000_1280x720-800-resize.jpg\" title=\"Chip Dimensity 8000 sẽ phổ biến ở phân khúc smartphone tầm trung\" /></p>  <p>Chip Dimensity 8000 sẽ phổ biến ở ph&acirc;n kh&uacute;c smartphone tầm trung</p>  <p>Về đồ họa, Dimensity 8000 sẽ song h&agrave;nh c&ugrave;ng GPU Mali-G510 MC6 mới. Được biết, G510 nhanh gấp đ&ocirc;i v&agrave; tiết kiệm điện năng hơn 22% so với thế hệ GPU ARM trước đ&acirc;y. Theo đ&oacute;, con chip mới n&agrave;y được dự đo&aacute;n sẽ phổ biến cho c&aacute;c d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Đặt mua smartphone tại Thegioididong.com\" type=\"Đặt mua smartphone tại Thegioididong.com\">smartphone</a>&nbsp;tầm trung trong thời gian tới, nhất l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd-xiaomi-redmi\" target=\"_blank\" title=\"Đặt mua smartphone Redmi tại Thegioididong.com\" type=\"Đặt mua smartphone Redmi tại Thegioididong.com\">Redmi</a>&nbsp;v&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd-realme\" target=\"_blank\" title=\"Đặt mua smartphone Realme tại Thegioididong.com\" type=\"Đặt mua smartphone Realme tại Thegioididong.com\">Realme</a>&nbsp;rất quan t&acirc;m.</p>  <p>Dimensity 8000 dự kiến&nbsp;tương th&iacute;ch với bộ nhớ&nbsp;LPDDR5 v&agrave; UFS 3.1, hỗ trợ tốc độ l&agrave;m tươi m&agrave;n h&igrave;nh 168 Hz ở độ ph&acirc;n giải 1.080+ v&agrave; 120 Hz ở độ ph&acirc;n giải 1.440p+.</p>  <p>Bạn nhận x&eacute;t thế n&agrave;o về th&ocirc;ng tin r&ograve; rỉ ph&iacute;a tr&ecirc;n của chip&nbsp;Dimensity 8000 sắp tới? Trong l&uacute;c chờ đợi smartphone tầm trung d&ugrave;ng chip&nbsp;Dimensity 8000 ra mắt, c&aacute;c bạn c&oacute; thể tham khảo th&ecirc;m nhiều&nbsp;smartphone cấu h&igrave;nh tốt trong tầm gi&aacute; từ 4-7 triệu đồng&nbsp;tại&nbsp;<a href=\"https://www.thegioididong.com/\" target=\"_blank\" title=\"Thế Giới Di Động\" type=\"Thế Giới Di Động\">Thế Giới Di Động</a>,&nbsp;bằng c&aacute;ch&nbsp;click v&agrave;o n&uacute;t m&agrave;u cam b&ecirc;n dưới.</p>','https://cdn.tgdd.vn/Files/2021/12/17/1404952/dimensity-8000-teaser_1280x720-800-resize.jpg',1),(5,'Cấu hình của laptop đồ họa giá rẻ dưới 20 triệu sẽ như thế nào? Gửi đến bạn 3 gợi ý đáng đồng tiền bát gạo tại Thế Giới Di Động','Vậy cấu hình của những chiếc laptop đồ họa dưới 20 triệu sẽ như thế nào? Cùng 24h Công nghệ tìm hiểu nhé!\r\nBên dưới sẽ là những thông số về cấu hình của dòng laptop đồ họa dưới 20 triệu cùng với 3 gợi ý laptop đáng giá mà mình muốn gửi đến các bạn.','<h1>Cấu h&igrave;nh của laptop đồ họa gi&aacute; rẻ dưới 20 triệu sẽ như thế n&agrave;o? Gửi đến bạn 3 gợi &yacute; đ&aacute;ng đồng tiền b&aacute;t gạo tại Thế Giới Di Động</h1>\r\n\r\n<p><a href=\"https://www.thegioididong.com/tin-tuc/profile/0\">Nguyễn Th&aacute;i Quy</a>&nbsp;3 giờ trước&nbsp;4 b&igrave;nh luận</p>\r\n\r\n<p><img alt=\"Laptop đồ họa giá rẻ dưới 20 triệu\" src=\"https://cdn.tgdd.vn/Files/2021/09/06/1380709/laptopdohoa1_1280x720-800-resize.jpg\" title=\"Laptop đồ họa giá rẻ dưới 20 triệu\" /></p>\r\n\r\n<h2>Những chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\" title=\"laptop\" type=\"laptop\">laptop</a>&nbsp;phục vụ cho nhu cầu c&ocirc;ng việc &#39;hạng nặng&#39; như thiết kế đồ họa thường phải c&oacute; cấu h&igrave;nh mạnh, m&agrave;n h&igrave;nh đẹp, đi k&egrave;m với đ&oacute; l&agrave; gi&aacute; th&agrave;nh kh&aacute; cao. Tuy nhi&ecirc;n, những chiếc laptop đồ họa gi&aacute; rẻ trong tầm gi&aacute; 20 triệu vẫn c&oacute; thể đ&aacute;p ứng được c&aacute;c nhu cầu s&aacute;ng tạo của bạn. Vậy cấu h&igrave;nh của những chiếc&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/cau-hinh-laptop-do-hoa-gia-re-duoi-20-trieu-1380709\" target=\"_blank\" title=\"laptop đồ họa dưới 20 triệu\" type=\"laptop đồ họa dưới 20 triệu\">laptop đồ họa dưới 20 triệu</a>&nbsp;sẽ như thế n&agrave;o? C&ugrave;ng&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc\" target=\"_blank\" title=\"24h Công Nghệ\" type=\"24h Công Nghệ\">24h C&ocirc;ng nghệ</a>&nbsp;t&igrave;m hiểu nh&eacute;!</h2>\r\n\r\n<p>B&ecirc;n dưới sẽ l&agrave; những th&ocirc;ng số về cấu h&igrave;nh của d&ograve;ng laptop đồ họa dưới 20 triệu c&ugrave;ng với 3 gợi &yacute; laptop đ&aacute;ng gi&aacute; m&agrave; m&igrave;nh muốn gửi đến c&aacute;c bạn.</p>\r\n\r\n<h3><strong>Cấu h&igrave;nh laptop đồ họa dưới 20 triệu</strong></h3>\r\n\r\n<p><strong>Vi xử l&yacute;</strong></p>\r\n\r\n<p>Những chiếc laptop đồ họa dưới 20 triệu thường được trang bị vi xử l&yacute; Intel Core i5 hoặc AMD Ryzen 5. Với những con chip n&agrave;y, cho bạn khả năng chạy c&aacute;c phần mềm đồ họa như Photoshop, Illustrator, CorelDraw,... một c&aacute;ch ổn định, mượt m&agrave;.</p>\r\n\r\n<p><img alt=\"Vi xử lý\" src=\"https://cdn.tgdd.vn/Files/2021/08/06/1373534/corei5_1280x720-800-resize.jpg\" title=\"Vi xử lý\" /></p>\r\n\r\n<p>Một số mẫu laptop dưới 20 triệu c&ograve;n được trang bị chip&nbsp;Intel Core i7 hoặc AMD Ryzen 7 nhưng b&ugrave; lại bạn thường sẽ phải đ&aacute;nh đổi với những th&ocirc;ng số kh&aacute;c của m&aacute;y đấy nh&eacute;!</p>\r\n\r\n<p><strong>Ổ cứng v&agrave; RAM</strong></p>\r\n\r\n<p><img alt=\"ổ cứng\" src=\"https://cdn.tgdd.vn/Files/2021/08/06/1373534/ocung_1280x720-800-resize.jpg\" title=\"ổ cứng\" /></p>\r\n\r\n<p>Về ổ cứng, m&aacute;y laptop đồ họa dưới 20 triệu thường mang trong m&igrave;nh ổ cứng SSD mạnh mẽ, cho kh&ocirc;ng gian lưu trữ lớn, thường c&oacute; dung lượng 256 GB hoặc 512 GB. B&ecirc;n cạnh đ&oacute; ch&uacute;ng ta sẽ c&oacute; 8 GB RAM, thoải m&aacute;i để bạn vừa bật phần mềm đồ họa c&ugrave;ng với v&agrave;i tab tr&igrave;nh duyệt.</p>\r\n\r\n<p>Ngo&agrave;i ra, tr&ecirc;n một số chiếc laptop sẽ cho khả năng n&acirc;ng cấp ổ cứng v&agrave; RAM gi&uacute;p đ&aacute;p ứng c&aacute;c nhu cầu cao hơn của người d&ugrave;ng, rất cần thiết cho d&acirc;n thiết kế.</p>\r\n\r\n<p><strong>Card đồ họa</strong></p>\r\n\r\n<p><img alt=\"Card đồ họa\" src=\"https://cdn.tgdd.vn/Files/2021/08/06/1373534/carddohoa_1280x720-800-resize.jpg\" title=\"Card đồ họa\" /></p>\r\n\r\n<p>Với mức gi&aacute; dưới 20 triệu th&igrave; những chiếc laptop đồ họa sẽ được trang bị c&aacute;c card đồ họa rời hoặc card đồ họa t&iacute;ch hợp tầm trung, b&aacute;n chuy&ecirc;n như:&nbsp;NVIDIA GeForce GTX, GeForce MX, Intel Iris, AMD Radeon,...</p>\r\n\r\n<p><strong>M&agrave;n h&igrave;nh</strong></p>\r\n\r\n<p><img alt=\"Man hinh\" src=\"https://cdn.tgdd.vn/Files/2021/09/06/1380709/msi-prestige-15-30_1280x720-800-resize.jpg\" title=\"Man hinh\" /></p>\r\n\r\n<p>Đối với một người l&agrave;m thiết kế đồ hoạ th&igrave; chức năng quan trọng nhất ch&iacute;nh l&agrave; khả năng hiển thị của m&aacute;y. M&aacute;y phải c&oacute; một m&agrave;n h&igrave;nh tốt, tr&aacute;nh bị sai lệch m&agrave;u qu&aacute; nhiều để cho ra một sản phẩm chuẩn nhất. Hiện nay c&oacute; 2 loại m&agrave;n h&igrave;nh phổ biến LCD v&agrave; OLED tr&ecirc;n c&aacute;c d&ograve;ng laptop n&oacute;i chung v&agrave; laptop đồ hoạ n&oacute;i ri&ecirc;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.thegioididong.com/tin-tuc/cau-hinh-laptop-do-hoa-gia-re-duoi-20-trieu-1380709\" /></p>\r\n\r\n<p>Video so s&aacute;nh m&agrave;n h&igrave;nh LCD v&agrave; OLED</p>\r\n\r\n<p>C&aacute;c mẫu laptop đồ hoạ thường được trang bị m&agrave;n h&igrave;nh với độ ph&acirc;n giải Full HD (1920 x 1080) c&ugrave;ng với k&iacute;ch thước từ 14 inch cho đến 15.5 inch t&ugrave;y v&agrave;o nhu cầu của mỗi người. Ngo&agrave;i ra, ở một số mẫu m&aacute;y, m&agrave;n h&igrave;nh đ&atilde; c&oacute; c&ocirc;ng nghệ OLED hiện đại v&agrave; c&oacute; độ bao phủ m&agrave;u DCI-P3 100%.</p>\r\n\r\n<h3><strong>TOP 3 laptop đồ họa dưới 20 triệu tốt nhất</strong></h3>\r\n\r\n<p><em>*Danh s&aacute;ch được m&igrave;nh xếp theo thứ tự gi&aacute; b&aacute;n giảm dần v&agrave; gi&aacute; một số mẫu sẽ thay đổi khi hết khuyến m&atilde;i bạn nh&eacute;!</em></p>\r\n\r\n<h3><strong>1.&nbsp;MSI Modern 15 A5M R7</strong></h3>\r\n\r\n<p><img alt=\"msi modern 15\" src=\"https://cdn.tgdd.vn/Files/2021/09/06/1380709/msimodern15-guidingtech_1280x720-800-resize.jpg\" title=\"msi modern 15\" /></p>\r\n\r\n<p>M&agrave;n h&igrave;nh m&aacute;y cho m&agrave;u sắc rực rỡ. Nguồn: Guiding Tech</p>\r\n\r\n<p>Mở đầu danh s&aacute;ch l&agrave; đại diện đến từ thương hiệu m&aacute;y t&iacute;nh&nbsp;<a href=\"https://www.thegioididong.com/laptop-msi\" target=\"_blank\" title=\"MSI\" type=\"MSI\">MSI</a>&nbsp;nổi tiếng -&nbsp;<a href=\"https://www.thegioididong.com/laptop/msi-modern-15-a5m-r7-237vn\" target=\"_blank\" title=\"MSI Modern 15\" type=\"MSI Modern 15\">MSI Modern 15</a>. Chiếc m&aacute;y n&agrave;y sở hữu cho m&igrave;nh một m&agrave;n h&igrave;nh lớn với k&iacute;ch thước 15.6 inch c&ugrave;ng với độ ph&acirc;n giải Full HD cho bạn một kh&ocirc;ng gian l&agrave;m việc thoải m&aacute;i, g&oacute;c nh&igrave;n rộng.</p>\r\n\r\n<p><img alt=\"msi modern 15\" src=\"https://cdn.tgdd.vn/Files/2021/09/06/1380709/msimodern15-guidingtech2_1280x720-800-resize.jpg\" title=\"msi modern 15\" /></p>\r\n\r\n<p>Laptop MSI Modern 15 cho hiệu suất xử l&yacute; đồ hoạ ấn tượng. Nguồn: Guiding Tech</p>\r\n\r\n<p>M&aacute;y được trang bị vi xử l&yacute; AMD Ryzen 7 - 5700U c&ugrave;ng với 8 GB RAM cho một hiệu năng v&ocirc; c&ugrave;ng mạnh mẽ, chưa hết m&aacute;y c&ograve;n được bổ sung th&ecirc;m sức mạnh đồ hoạ nhờ v&agrave;o Card đồ họa t&iacute;ch hợp - AMD Radeon Graphics. Do đ&oacute; c&aacute;c phần mềm đồ họa nặng kh&ocirc;ng phải l&agrave; vấn đề lớn với chiếc m&aacute;y n&agrave;y.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop/msi-modern-15-a5m-r7-237vn\"><img src=\"https://cdn.tgdd.vn/Products/Images/44/263792/msi-modern-15-a5m-r7-237vn-021221-110854-600x600.jpg\" title=\"MSI Modern 15 A5M R7 5700U (237VN)\" /></a></p>\r\n\r\n<h3><a href=\"https://www.thegioididong.com/laptop/msi-modern-15-a5m-r7-237vn\">MSI Modern 15 A5M R7 5700U (237VN)</a></h3>\r\n\r\n<p><strong>19.990.000₫</strong></p>\r\n\r\n<p>Qu&agrave;&nbsp;<strong>740.000₫</strong></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop/msi-modern-15-a5m-r7-237vn\">XEM CHI TIẾT</a></p>\r\n\r\n<h3><strong>2.&nbsp;Dell Inspiron 15 3511</strong></h3>\r\n\r\n<p>Tiếp nối TOP 3 laptop đồ họa dưới 20 triệu đ&aacute;ng mua h&ocirc;m nay l&agrave; một đại diện đến từ thương hiệu m&aacute;y t&iacute;nh&nbsp;<a href=\"https://www.thegioididong.com/laptop-dell\" target=\"_blank\" title=\"Dell\" type=\"Dell\">Dell</a>&nbsp;-&nbsp;<a href=\"https://www.thegioididong.com/laptop/dell-inspiron-15-3511-i5-p112f001bbl\" target=\"_blank\" title=\"Dell Inspiron 15 3511\" type=\"Dell Inspiron 15 3511\">Dell Inspiron 15 3511</a>.&nbsp;</p>\r\n\r\n<p><img alt=\"dell 3511\" src=\"https://cdn.tgdd.vn/Files/2021/09/06/1380709/dell3511-technologyandthings_1280x720-800-resize.jpg\" title=\"dell 3511\" /></p>\r\n\r\n<p>M&aacute;y c&oacute; k&iacute;ch thước m&agrave;n h&igrave;nh lớn, m&agrave;u sắc rực rỡ. Nguồn: Technology and things</p>\r\n\r\n<p>M&agrave;n h&igrave;nh 15.6 inch sở hữu độ ph&acirc;n giải Full HD hỗ trợ bạn l&agrave;m việc với c&aacute;c phần mềm đồ hoạ tối ưu v&agrave; giải tr&iacute; với h&igrave;nh ảnh ch&acirc;n thật, sắc n&eacute;t.</p>\r\n\r\n<p>G&oacute;c nh&igrave;n được n&acirc;ng l&ecirc;n đến 178 độ nhờ c&ocirc;ng nghệ WVA, cho ph&eacute;p bạn l&agrave;m việc ở cả những nơi c&oacute; điều kiện &aacute;nh s&aacute;ng kh&ocirc;ng thuận lợi m&agrave; kh&ocirc;ng lo mỏi hay l&oacute;a mắt nhờ c&ocirc;ng nghệ chống ch&oacute;i Anti Glare.</p>\r\n\r\n<p><img alt=\"dell 3511\" src=\"https://cdn.tgdd.vn/Files/2021/09/06/1380709/dell3511-shivtechsmart_1280x774-800-resize.jpg\" title=\"dell 3511\" /></p>\r\n\r\n<p>M&aacute;y c&oacute; khả năng xử l&yacute; tốt c&aacute;c phần mềm đồ hoạ, video. Nguồn: Shiv Tech Smart</p>\r\n\r\n<p>Dell Inspiron 15 mang trong m&igrave;nh một tr&aacute;i tim Intel Core I5 Tiger Lake mạnh mẽ c&ugrave;ng với 4 GB RAM (c&oacute; thể n&acirc;ng cấp th&ecirc;m) vừa đủ để bạn l&agrave;m việc thoải m&aacute;i.</p>\r\n\r\n<p>Đam m&ecirc; s&aacute;ng tạo được khơi nguồn nhờ card đồ họa t&iacute;ch hợp Intel Iris Xe Graphics, cho bạn thỏa sức chỉnh sửa ảnh, render video cơ bản,... với c&aacute;c ứng dụng Photoshop, Ai, Premiere,..</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop/dell-inspiron-15-3511-i5-p112f001bbl\"><img src=\"https://cdn.tgdd.vn/Products/Images/44/252242/dell-inspiron-15-3511-i5-p112f001bbl-211021-043051-600x600.jpg\" title=\"Dell Inspiron 15 3511 i5 1135G7 (P112F001BBL)\" /></a></p>\r\n\r\n<h3><a href=\"https://www.thegioididong.com/laptop/dell-inspiron-15-3511-i5-p112f001bbl\">Dell Inspiron 15 3511 i5 1135G7 (P112F001BBL)</a></h3>\r\n\r\n<p><strong>19.990.000₫</strong></p>\r\n\r\n<p>Qu&agrave;&nbsp;<strong>100.000₫</strong></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop/dell-inspiron-15-3511-i5-p112f001bbl\">XEM CHI TIẾT</a></p>\r\n\r\n<h3><strong>3.&nbsp;Asus VivoBook A515EA OLED</strong></h3>\r\n\r\n<p>Ứng cử vi&ecirc;n kh&eacute;p lại danh s&aacute;ch cũng l&agrave; một chiếc laptop s&aacute;ng gi&aacute; cho c&aacute;c bạn l&agrave;m đồ hoạ ở tầm gi&aacute; dưới 20 triệu, chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop/asus-vivobook-a515ea-oled-i5-l12032w\" target=\"_blank\" title=\"Asus VivoBook OLED\" type=\"Asus VivoBook OLED\">Asus VivoBook A515EA OLED</a>&nbsp;hứa hẹn đem lại cho bạn nhiều trải nghiệm sử dụng đ&aacute;ng gi&aacute;.</p>\r\n\r\n<p><img alt=\"asus vivo book oled\" src=\"https://cdn.tgdd.vn/Files/2021/09/06/1380709/asusvivobookoled1-jazzmanshardware_1282x720-800-resize.jpg\" title=\"asus vivo book oled\" /></p>\r\n\r\n<p>M&aacute;y sở hữu m&agrave;n h&igrave;nh OLED v&ocirc; c&ugrave;ng chất lượng. Nguồn: Jazzman&#39;s Hardware</p>\r\n\r\n<p>Đ&uacute;ng như t&ecirc;n gọi của sản phẩm, mẫu Laptop n&agrave;y được trang bị m&agrave;n h&igrave;nh OLED k&iacute;ch thước 15.6 inch sắc n&eacute;t rực rỡ. M&agrave;n h&igrave;nh c&oacute; độ ph&acirc;n giải Full HD c&ugrave;ng với độ s&aacute;ng l&ecirc;n tới 600 nit sẽ gi&uacute;p c&aacute;c bạn c&oacute; thể l&agrave;m việc ở mọi điều kiện kh&ocirc;ng gian &aacute;nh s&aacute;ng kh&aacute;c nhau.</p>\r\n\r\n<p>Chưa dừng lại ở đ&oacute;, m&aacute;y c&ograve;n c&oacute; độ phủ m&agrave;u DCI-P3 100% cực kỳ th&iacute;ch hợp cho c&aacute;c bạn l&agrave;m đồ hoạ để tr&aacute;nh sai m&agrave;u nhất c&oacute; thể.</p>\r\n\r\n<p><img alt=\"asus vivobook oled\" src=\"https://cdn.tgdd.vn/Files/2021/09/06/1380709/asusvivobookoled2_1280x739-800-resize.jpg\" title=\"asus vivobook oled\" /></p>\r\n\r\n<p>M&aacute;y xử l&yacute; tốt c&aacute;c t&aacute;c vụ đồ hoạ</p>\r\n\r\n<p>Về phần hiệu năng b&ecirc;n trong, Asus VivoBook được cung cấp sức mạnh bởi vi xử l&yacute; Intel Core i5 Tiger Lake mạnh mẽ c&ugrave;ng với 8 GB RAM (c&oacute; thể n&acirc;ng cấp th&agrave;nh 16 GB RAM) cho hiệu suất xử l&yacute; h&igrave;nh ảnh, kết xuất video mượt m&agrave; v&agrave; nhanh ch&oacute;ng.</p>\r\n\r\n<p>Hơn nữa, bạn sẽ t&igrave;m thấy một năng lượng l&agrave;m việc, đam m&ecirc; s&aacute;ng tạo kh&ocirc;ng ngừng nghỉ với card t&iacute;ch hợp Intel Iris Xe Graphics c&oacute; sẵn tr&ecirc;n chiếc m&aacute;y n&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n','https://cdn.tgdd.vn/Files/2021/09/06/1380709/thumbnail1_800x450-300x200.png',1),(17,'3 cách tải hình nền giáng sinh 2021 cực đẹp cho máy tính, giúp bạn mang không khí Noel về góc làm việc nhỏ của mình','Giáng sinh đang đến gần, không khí cũng bắt đầu se lạnh và mọi người cũng đã trang trí Noel khắp mọi nơi rồi. Hãy bắt đầu trang trí cho chiếc máy tính của bạn, người bạn luôn luôn ở cạnh và giúp bạn có mùa giáng sinh ‘không có lạnh’.','<h1 style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 45px;font-family: Roboto Condensed\", sans-serif;\">3 cách tải hình nền giáng sinh 2021 cực đẹp cho máy tính, giúp bạn mang không khí Noel về góc làm việc nhỏ của mình</span></h1>\n<p style=\"text-align:start;\"><a href=\"https://www.thegioididong.com/tin-tuc/profile/0\" target=\"_self\"><span style=\"color: rgb(40,138,214);font-size: 12px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Nguyễn Thang Khang</span></a> <span style=\"color: rgb(153,153,153);font-size: 12px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">1 giờ trước</span> <a href=\"javascript:;\" target=\"_self\"><span style=\"color: rgb(51,51,51);font-size: 12px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Lưu bài viết</span></a></p>\n<p style=\"text-align:start;\"></p>\n<div style=\"text-align:none;\"><img src=\"https://cdn.tgdd.vn/Files/2021/12/16/1404787/huongdancachtaihinhnengiangsinh20212131231-_1366x768-800-resize.jpg\" alt=\"Hướng dẫn cách tải hình nền giáng sinh 2021\" style=\"height: auto;width: auto\"/></div>\n<h2 style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Giáng sinh đang đến gần, không khí cũng bắt đầu se lạnh và mọi người cũng đã trang trí Noel khắp mọi nơi rồi. Hãy bắt đầu trang trí cho chiếc</span> <a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">máy tính</span></a> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">của bạn, người bạn luôn luôn ở cạnh và giúp bạn có mùa giáng sinh ‘không có lạnh’. Và sau đây, mình sẽ hướng dẫn các bạn</span> <a href=\"https://www.thegioididong.com/tin-tuc/cach-tai-hinh-nen-giang-sinh-cho-may-tinh-1404787\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">cách tải hình nền giáng sinh cho máy tính</span></a> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">cực kỳ đẹp nhé.</span></h2>\n<h3 style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 30px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><strong>1. Cách tải hình nền giáng sinh cho máy tính</strong></span></h3>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><strong>Cách 1</strong>. Đầu tiên và đơn giản nhất để bạn có thể tải được hình ảnh giáng sinh đẹp và chất lượng cao là <strong>tìm kiếm trên Google hình ảnh</strong> &gt; mở công cụ lọc</span> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><strong>ảnh dung lượng cao</strong></span> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">lên với những từ khóa liên quan giáng sinh.</span></p>\n<p style=\"text-align:start;\"></p>\n<img src=\"https://cdn.tgdd.vn/Files/2021/12/16/1404787/huongdancachtaihinhnengiangsinh20217-_1366x768-800-resize.jpg\" alt=\"Hướng dẫn cách tải hình nền giáng sinh 2021\" style=\"height: auto;width: auto\"/>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><strong>Cách 2</strong>. Bạn cũng có thể truy cập các</span> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><strong>đường link dưới đây và chọn mục Download</strong></span> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">để tải hình ảnh về.</span></p>\n<ul>\n<li><a href=\"https://www.deviantart.com/adni18/art/White-Christmas-72931923\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Link tải hình nên giáng sinh Deviant Artist</span></a></li>\n<li><a href=\"https://www.hdwallpapers.net/tags/christmas\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Link tải hình nền giáng sinh HD Wallpaper</span></a></li>\n<li><a href=\"https://getwallpapers.com/collection/christmas-penguin-wallpaper\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Link tải hình nền giáng sinh Getwapapers</span></a></li>\n</ul>\n<p style=\"text-align:start;\"></p>\n<img src=\"https://cdn.tgdd.vn/Files/2021/12/16/1404787/huongdancachtaihinhnengiangsinh20216-_1366x768-800-resize.jpg\" alt=\"Hướng dẫn cách tải hình nền giáng sinh 2021\" style=\"height: auto;width: auto\"/>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Có vài</span> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><strong>công cụ yêu cầu bạn phải đăng nhập</strong></span> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">hoặc nếu chưa có bạn có thể</span> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><strong>đăng ký tài khoản</strong></span> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">theo form nhé.</span></p>\n<p style=\"text-align:start;\"></p>\n<img src=\"https://cdn.tgdd.vn/Files/2021/12/16/1404787/huongdancachtaihinhnengiangsinh20215-_1366x768-800-resize.jpg\" alt=\"Hướng dẫn cách tải hình nền giáng sinh 2021\" style=\"height: auto;width: auto\"/>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><strong>Cách 3</strong>. Cuối cùng, mình có một vài tấm hình giáng sinh trong đường link dưới đây. Nếu bạn thấy thích có thể tải về và tham khảo ở bên dưới.</span>&nbsp;</p>\n','https://cdn.tgdd.vn/Files/2021/12/16/1404787/huongdancachtaihinhnengiangsinh20212131231-_1366x768-800-resize.jpg',1),(18,'Nên mua iPad hay máy tính bảng Android? Cùng khám phá xem đâu là thiết bị thích hợp nhất để làm việc, học tập online và giải trí','Ngày nay, một chiếc máy tính bảng với màn hình lớn hơn smartphone, nhẹ hơn laptop sẽ nhận được nhiều sự săn đón của người dùng cho nhu cầu học tập và làm việc online','<h1 style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 45px;font-family: Roboto Condensed\", sans-serif;\">Nên mua iPad hay máy tính bảng Android? Cùng khám phá xem đâu là thiết bị thích hợp nhất để làm việc, học tập online và giải trí</span></h1>\n<p style=\"text-align:start;\"><a href=\"https://www.thegioididong.com/tin-tuc/profile/0\" target=\"_self\"><span style=\"color: rgb(40,138,214);font-size: 12px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Phạm Thị Hoài Linh</span></a> <span style=\"color: rgb(153,153,153);font-size: 12px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">3 giờ trước</span> <span style=\"color: rgb(153,153,153);font-size: 12px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">7 bình luận</span> <a href=\"javascript:;\" target=\"_self\"><span style=\"color: rgb(51,51,51);font-size: 12px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Lưu bài viết</span></a></p>\n<p style=\"text-align:start;\"></p>\n<img src=\"https://cdn.tgdd.vn/Files/2021/11/15/1398037/h2_1280x720-800-resize.jpg\" alt=\"Nên mua iPad hay máy tính bảng? Cùng khám phá xem đâu là thiết bị thích hợp nhất cho các tác vụ công việc và học tập của bạn\" style=\"height: auto;width: auto\"/>\n<h2 style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Ngày nay, một chiếc</span> <a href=\"https://www.thegioididong.com/may-tinh-bang\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">máy tính bảng</span></a><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"> với màn hình lớn hơn</span> <a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">smartphone</span></a><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">, nhẹ hơn</span> <a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">laptop</span></a> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">sẽ nhận được nhiều sự săn đón của người dùng cho nhu cầu học tập và làm việc online. Vậy có bao giờ bạn thắc mắc là</span> <a href=\"https://www.thegioididong.com/tin-tuc/nen-mua-ipad-hay-may-tinh-bang-android-1398037\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">nên mua iPad hay máy tính bảng Android</span></a> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">chưa? Hãy cùng</span> <a href=\"https://www.thegioididong.com/tin-tuc\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">24h Công nghệ</span></a><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"> đi tìm lời giải cho câu hỏi này nha.</span></h2>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Bên dưới mình sẽ liệt kê ra những điểm mạnh của</span> <a href=\"https://www.thegioididong.com/may-tinh-bang-apple-ipad\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">iPad</span></a><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"> cũng như của tablet Android. Từ đó gợi ý một vài mẫu máy tính bảng đang rất HOT tại</span> <a href=\"https://www.thegioididong.com/\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Thế Giới Di Động</span></a><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">. Hãy theo dõi bài viết và lựa chọn sản phẩm phù hợp nhất với nhu cầu của bản thân, bạn nhé!</span></p>\n<h3 style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 30px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><strong>iPad và những ưu điểm </strong></span></h3>\n<p style=\"text-align:start;\"></p>\n<img src=\"https://cdn.tgdd.vn/Files/2021/11/15/1398037/phanmemipad_1280x720-800-resize.png\" alt=\"Phần mềm iPadOS\" style=\"height: auto;width: auto\"/>\n<p style=\"text-align:center;\"><span style=\"color: rgb(153,153,153);font-size: 14px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">iPad và những điểm mạnh về hệ điều hành.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Với hệ điều hành  iPadOS mạnh mẽ, iPad mang đến hiệu năng vận hành mượt mà, trơn tru và trực quan hơn cho người sử dụng. Nhờ đó, bạn có thể thoải mái sử dụng các tác vụ trên điện thoại mà không lo nóng máy hay giật lag.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Ngoài ra, Apple chỉ cho phép các ứng dụng được cài đặt thông qua cửa hàng ứng dụng riêng của mình.  Đặc biệt, Apple App Store trên iPad cũng tối ưu kho ứng dụng lên tới 2 triệu tiện ích, cho phép người dùng tải về tiện ích một cách bảo mật và thỏa sức trải nghiệm. </span></p>\n<p style=\"text-align:start;\"></p>\n<img src=\"https://cdn.tgdd.vn/Files/2021/11/15/1398037/ipadvoikhoungdungkhonglo_1280x720-800-resize.png\" alt=\"iPad với 2 triệu ứng dụng \" style=\"height: auto;width: auto\"/>\n<p style=\"text-align:center;\"><span style=\"color: rgb(153,153,153);font-size: 14px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">iPad với 2 triệu ứng dụng trong kho tiện ích. Nguồn: USA Today.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Thêm vào đó, chế độ hiển thị của iPad cũng chạy mượt và tốc độ nhanh hơn nhờ cải tiến công nghệ IPS, góp phần đưa người dùng vào thế giới hình ảnh sắc nét, mướt mắt và toàn diện hơn. </span></p>\n<h3 style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 30px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><strong>Máy tính bảng Android và những ưu điểm</strong></span></h3>\n<p style=\"text-align:start;\"></p>\n<img src=\"https://cdn.tgdd.vn/Files/2021/11/15/1398037/gia-tablet-android_1280x538-800-resize.jpg\" alt=\"Nên mua iPad hay máy tính bảng Android? Cùng khám phá xem đâu là thiết bị thích hợp nhất để làm việc, học tập và giải trí\" style=\"height: auto;width: auto\"/>\n<p style=\"text-align:center;\"><span style=\"color: rgb(153,153,153);font-size: 14px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Chỉ cần từ 3 - 5 triệu là đã có thể mua ngay được 1 chiếc tablet Android tại Thế Giới Di Động. (Cập nhật giá ngày 21/12/2021)</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Trên thị trường có khá nhiều máy tính bảng Android với nhiều mẫu mã và tầm giá khác nhau, từ các thiết bị cao cấp với giá chục triệu đồng đến những chiếc máy tính bảng giá rẻ chỉ khoảng 3 triệu đồng. Chính vì vậy so với iPad, máy tính bảng Android sẽ cho người dùng nhiều sự lựa chọn hơn về giá.</span></p>\n<p style=\"text-align:start;\"></p>\n<img src=\"https://cdn.tgdd.vn/Files/2021/11/15/1398037/tabletandroid_1280x720-800-resize.png\" alt=\"Máy tính bảng Android \" style=\"height: auto;width: auto\"/>\n<p style=\"text-align:center;\"><span style=\"color: rgb(153,153,153);font-size: 14px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">So với iPad, máy tính bảng Android sẽ cho người dùng nhiều sự lựa chọn hơn về giá.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Nhìn chung các chiếc tablet Android có phần cứng khá mạnh mẽ, hỗ trợ công việc tốt hơn nhờ bút cảm ứng và bàn phím gắn ngoài. Những máy tính bảng thường được trang bị thêm khe cắm thẻ nhớ để người dùng có thể nâng cấp dần bộ nhớ của máy khi cần thiết giúp tiết kiệm chi phí bỏ ra ban đầu.</span>&nbsp;</p>\n','https://cdn.tgdd.vn/Files/2021/11/15/1398037/tabletandroid_1280x720-800-resize.png',1),(20,'TOP 5 máy tính bảng tốt nhất cho trẻ em với ưu điểm là màn hình lớn, pin trâu cho bé thỏa sức học tập và khám phá thế giới','Máy sỡ hữu màn hình với kích thước 9.7 inch với độ phân giải cao 800x1.340 pixels, cho chất lượng hiển thị khá, màu sắc tươi sáng. Với kích thước màn hình này thì các bé nhà bạn vẫn có thể thoải mái trong việc học online tại nhà. ','<h1 style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 45px;font-family: Roboto Condensed\", sans-serif;\">TOP 5 máy tính bảng tốt nhất cho trẻ em với ưu điểm là màn hình lớn, pin trâu cho bé thỏa sức học tập và khám phá thế giới</span></h1>\n<p style=\"text-align:start;\"><a href=\"https://www.thegioididong.com/tin-tuc/profile/0\" target=\"_self\"><span style=\"color: rgb(40,138,214);font-size: 12px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Nguyễn Ngọc Kim Ngân</span></a> <span style=\"color: rgb(153,153,153);font-size: 12px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">1 ngày trước</span> <span style=\"color: rgb(153,153,153);font-size: 12px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">4 bình luận</span> <a href=\"javascript:;\" target=\"_self\"><span style=\"color: rgb(51,51,51);font-size: 12px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Lưu bài viết</span></a></p>\n<p style=\"text-align:start;\"></p>\n<img src=\"https://cdn.tgdd.vn/Files/2021/12/19/1405410/nentablettreem1_1280x720-800-resize.jpg\" alt=\"Máy tính bảng trẻ em\" style=\"height: auto;width: auto\"/>\n<h2 style=\"text-align:start;\"><a href=\"https://www.thegioididong.com/may-tinh-bang\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Máy tính bảng</span></a><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">,</span> <a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">smartphone</span></a><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"> đã và đang dần trở nên quen thuộc với mỗi gia đình có con nhỏ. Những thiết bị này giúp cho các bé học tập, giải trí và thỏa sức sáng tạo. Hôm nay</span> <a href=\"https://www.thegioididong.com/tin-tuc\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">24h Công nghệ</span></a> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">sẽ giới thiệu đến mọi người TOP 5</span> <a href=\"https://www.thegioididong.com/tin-tuc/may-tinh-bang-tot-nhat-cho-tre-em-1405410\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">máy tính bảng tốt nhất cho trẻ em</span></a> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">trong dịp Noel sắp đến làm quà tặng thưởng cho các bé nhà mình!</span></h2>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><em>*Danh sách sản phẩm sắp xếp theo thứ tự giá từ thấp lên cao và giá bán một số sản phẩm có thể thay đổi khi hết khuyến mãi bạn nhé!</em></span></p>\n<h3 style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 30px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><strong>1. Máy tính bảng Masstel Tab 10S - Màn hình lớn bảo vệ mắt của bé yêu</strong></span></h3>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Mở đầu cho TOP 5 hôm nay sẽ là chiếc</span> <a href=\"https://www.thegioididong.com/may-tinh-bang/masstel-tab-10s\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Masstel Tab 10S</span></a><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">, một chiếc máy tính bảng nhỏ gọn, màn hình lớn và dung lượng pin khủng. </span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Masstel Tab 10S sở hữu màn hình IPS LCD 10.1 inch giúp cho các bé yêu thỏa sức sáng tạo, xem các chương trình trên YouTube và giải trí. Với những nhà có con đang trong giai đoạn học online thì kích thước màn hình Masstel T10S sẽ vô cùng tuyệt vời. Các bé có thể nhìn rõ hơn những bài giảng mà thầy cô truyền tải.</span></p>\n<p style=\"text-align:start;\"></p>\n<img src=\"https://cdn.tgdd.vn/Files/2021/12/19/1405410/masstel-tab10-4g-den-13_1280x853-800-resize.jpg\" alt=\"Masstel Tab 10S \" style=\"height: auto;width: auto\"/>\n<p style=\"text-align:center;\"><span style=\"color: rgb(153,153,153);font-size: 14px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Màn hình chiếc máy tính bảng Masstel Tab 10S.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Cụm camera đủ dùng với camera sau có độ phân giải 5 MP cùng những chế độ chụp ảnh như: chạm lấy nét, chụp toàn cảnh panorama, quay video chuẩn HD,… Các bé yêu nhà bạn có thể dễ dàng chụp ảnh quay clip bài tập gửi thầy cô nhanh chóng. Camera trước cảm biến 2 MP thích hợp để các bé có thể call video, học online.</span></p>\n<p style=\"text-align:start;\"></p>\n<img src=\"https://cdn.tgdd.vn/Files/2021/12/19/1405410/masstel-tab10-4g-den-6_1280x853-800-resize.jpg\" alt=\"Masstel Tab 10S \" style=\"height: auto;width: auto\"/>\n<p style=\"text-align:center;\"><span style=\"color: rgb(153,153,153);font-size: 14px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Thiết kế nguyên khối sang trọng.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Masstel T10S được trang bị viên pin 6.000 mAh, cùng các chế độ tiết kiệm pin giúp thời lượng sử dụng trở nên lâu hơn. Viên pin Li-Po hạn chế rò rỉ năng lượng giúp cho máy hoạt động liên tục suốt ngày dài.</span></p>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Với viên pin khủng này thì bạn có thể yên tâm cho con của mình sử dụng để học online mà không cần phải vừa học, vừa cắm sạc.</span>&nbsp;</p>\n','https://cdn.tgdd.vn/Files/2021/12/19/1405410/nentablettreem1_1280x720-800-resize.jpg',1),(21,'Chưa nhận được tiền hỗ trợ Covid-19 thì phải làm sao? Bạn xem 4 cách phản ánh này để tránh mất quyền lợi nhé','Theo Nghị quyết 68, trường hợp người lao động bị ngừng việc, tạm hoãn hợp đồng lao động, nghỉ việc không lương, doanh nghiệp sẽ có trách nhiệm làm hồ sơ, thủ tục để người lao động nhận được hỗ trợ.','<h3 style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 18px;font-family: Roboto Condensed\", sans-serif;\">Chưa nhận được tiền hỗ trợ Covid-19 thì phải làm sao? Bạn xem 4 cách phản ánh này để tránh mất quyền lợi nhé</span></h3>\n<p style=\"text-align:start;\"><a href=\"https://www.thegioididong.com/tin-tuc/profile/0\" target=\"_self\"><span style=\"color: rgb(40,138,214);font-size: 12px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Nguyễn Ngọc Huy</span></a> <span style=\"color: rgb(153,153,153);font-size: 12px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">38 phút trước</span> <a href=\"javascript:;\" target=\"_self\"><span style=\"color: rgb(51,51,51);font-size: 12px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Lưu bài viết</span></a></p>\n<p style=\"text-align:start;\"></p>\n<p></p>\n<img src=\"https://cdn.tgdd.vn/Files/2021/12/22/1406186/chua-nhan-duoc-tien-ho-tro-covid_1280x720-800-resize.jpg\" alt=\"Chưa nhận được tiền hỗ trợ Covid\" style=\"height: auto;width: auto\"/>\n<h2 style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Tiền hỗ trợ Covid-19, đến nay đã là đợt 3 từ Quỹ bảo hiểm thất nghiệp theo</span> <a href=\"https://thuvienphapluat.vn/van-ban/Lao-dong-Tien-luong/Nghi-quyet-68-NQ-CP-2021-chinh-sach-ho-tro-nguoi-lao-dong-su-dung-lao-dong-gap-kho-khan-dich-COVID19-479816.aspx\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Nghị quyết 68/NQ-CP</span></a> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">và</span> <a href=\"https://thuvienphapluat.vn/van-ban/Lao-dong-Tien-luong/Quyet-dinh-23-2021-QD-TTg-chinh-sach-ho-tro-nguoi-lao-dong-gap-kho-khan-do-dai-dich-COVID-19-480459.aspx\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Quyết định 23/2021/QĐ-TTg</span></a> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">của Thủ tướng Chính phủ đã được chuyển đến nhiều người lao động, nhưng cũng còn nhiều người ở thời điểm này chưa nhận được tiền. Sau đây là 4</span> <a href=\"https://www.thegioididong.com/tin-tuc/cach-phan-anh-chua-nhan-duoc-tien-ho-tro-covid-1406186\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">cách phản ánh chưa nhận được tiền hỗ trợ Covid</span></a> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">trên</span> <a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">điện thoại</span></a> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">và</span> <a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\"><span style=\"color: rgb(40,138,214);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">máy tính</span></a> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">cho bạn.</span></h2>\n<h3 style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 30px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><strong>1. Không nhận được tiền trợ cấp Covid-19 liên hệ ai?</strong></span></h3>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Theo Nghị quyết 68, trường hợp người lao động bị ngừng việc, tạm hoãn hợp đồng lao động, nghỉ việc không lương, doanh nghiệp sẽ có trách nhiệm làm hồ sơ, thủ tục để người lao động nhận được hỗ trợ.</span></p>\n<p style=\"text-align:start;\"></p>\n<img src=\"https://cdn.tgdd.vn/Files/2021/12/22/1406186/chua-nhan-duoc-tien-ho-tro-covid-4_1280x720-800-resize.jpg\" alt=\"Chưa nhận được tiền hỗ trợ Covid\" style=\"height: auto;width: auto\"/>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">Do đó, nếu bạn không nhận được tiền hỗ trợ có thể liên hệ chính doanh nghiệp của mình để biết lý do. Trường hợp là người lao động tự do, cần liên hệ UBND cấp xã để hỏi về việc mình có ở trong danh sách hỗ trợ hay không, tiền giải ngân đã về đến địa phương hay chưa.</span></p>\n<h3 style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 30px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><strong>2. Cách phản ánh chưa nhận được tiền hỗ trợ Covid qua email</strong></span></h3>\n<p style=\"text-align:start;\"><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><strong>Bước 1</strong>. Bạn mở ứng dụng Mail trên điện thoại, nhấn</span> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><strong>Tạo mới</strong></span> <span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\">và nhập nội dung như sau:</span></p>\n<ul>\n<li><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><strong>Đến</strong>: thongtinchinhphu@chinhphu.vn</span></li>\n<li><span style=\"color: rgb(51,51,51);font-size: 16px;font-family: Helvetica, Arial, \"DejaVu Sans\", \"Liberation Sans\", Freesans, sans-serif;\"><strong>Chủ đề</strong>: V/v chưa nhận được tiền hỗ trợ Covid-19</span>&nbsp;</li>\n</ul>\n','https://cdn.tgdd.vn/Files/2021/12/22/1406186/chua-nhan-duoc-tien-ho-tro-covid_1280x720-800-resize.jpg',1),(22,'13123','123123','<p>1231123123123123</p>\n',NULL,1);
/*!40000 ALTER TABLE `baiviet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baohanh`
--

DROP TABLE IF EXISTS `baohanh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baohanh` (
  `MABAOHANH` int(11) NOT NULL AUTO_INCREMENT,
  `IMEI` varchar(20) NOT NULL,
  `NGAYBAOHANH` datetime NOT NULL,
  `CHIPHI` float NOT NULL,
  `GHICHU` text,
  PRIMARY KEY (`MABAOHANH`),
  KEY `FK_REFERENCE_17` (`IMEI`),
  CONSTRAINT `FK_REFERENCE_17` FOREIGN KEY (`IMEI`) REFERENCES `chitietsanpham` (`IMEI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baohanh`
--

LOCK TABLES `baohanh` WRITE;
/*!40000 ALTER TABLE `baohanh` DISABLE KEYS */;
/*!40000 ALTER TABLE `baohanh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietgiohang`
--

DROP TABLE IF EXISTS `chitietgiohang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietgiohang` (
  `MAGIOHANG` int(11) NOT NULL,
  `MASANPHAM` int(11) NOT NULL,
  `SOLUONG` int(11) DEFAULT NULL,
  `DUNGLUONG` varchar(45) NOT NULL,
  `MAUSAC` varchar(100) NOT NULL,
  PRIMARY KEY (`MAGIOHANG`,`MASANPHAM`,`DUNGLUONG`,`MAUSAC`),
  KEY `FK_REFERENCE_5` (`MASANPHAM`),
  CONSTRAINT `FK_REFERENCE_20` FOREIGN KEY (`MAGIOHANG`) REFERENCES `giohang` (`MAGIOHANG`),
  CONSTRAINT `FK_REFERENCE_5` FOREIGN KEY (`MASANPHAM`) REFERENCES `sanpham` (`MASANPHAM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietgiohang`
--

LOCK TABLES `chitietgiohang` WRITE;
/*!40000 ALTER TABLE `chitietgiohang` DISABLE KEYS */;
INSERT INTO `chitietgiohang` VALUES (7,1,1,'512GB','Xanh nước'),(8,1,4,'1T','Xanh lá'),(8,1,1,'1T','Xanh nước'),(8,1,1,'256GB','Vàng'),(8,1,4,'512GB','Xanh nước'),(8,25,1,'1T','Xanh lá'),(8,49,1,'256GB','Vàng'),(9,26,1,'512GB','Xanh lá'),(10,1,1,'64G','Trắng'),(11,1,2,'512GB','Trắng'),(11,1,1,'512GB','Vàng'),(11,1,1,'512GB','Xanh lá'),(11,1,1,'512GB','Xanh nước'),(11,25,1,'1T','Xanh lá');
/*!40000 ALTER TABLE `chitietgiohang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitiethoadon`
--

DROP TABLE IF EXISTS `chitiethoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitiethoadon` (
  `SOHOADON` int(11) NOT NULL,
  `IMEI` varchar(20) NOT NULL,
  `TIEN` float NOT NULL,
  PRIMARY KEY (`SOHOADON`,`IMEI`),
  KEY `FK_REFERENCE_15` (`IMEI`),
  CONSTRAINT `FK_REFERENCE_15` FOREIGN KEY (`IMEI`) REFERENCES `chitietsanpham` (`IMEI`),
  CONSTRAINT `FK_REFERENCE_6` FOREIGN KEY (`SOHOADON`) REFERENCES `hoadon` (`SOHOADON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitiethoadon`
--

LOCK TABLES `chitiethoadon` WRITE;
/*!40000 ALTER TABLE `chitiethoadon` DISABLE KEYS */;
INSERT INTO `chitiethoadon` VALUES (79,'1516213156',22999000),(81,'123123123',8000000),(87,'1516213156',22999000),(88,'12321',12000000),(89,'123456',10000000),(94,'111111',111111000),(96,'123456788',24590000),(98,'123456787',22999000),(100,'I11-230201',32000000),(101,'2302011',39000000),(103,'1234',1000000),(104,'123456784',20900000);
/*!40000 ALTER TABLE `chitiethoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietsanpham`
--

DROP TABLE IF EXISTS `chitietsanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietsanpham` (
  `IMEI` varchar(20) NOT NULL,
  `MASANPHAM` int(11) NOT NULL,
  `NGAYSANXUAT` datetime NOT NULL,
  `TINHTRANG` varchar(30) NOT NULL,
  `MAUSAC` varchar(45) NOT NULL,
  `DUNGLUONG` varchar(45) DEFAULT NULL,
  `GIAMOI` float DEFAULT NULL,
  `IMAGE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IMEI`),
  KEY `CHITIETSANPHAM_MAUSAC_FK_idx` (`MAUSAC`),
  KEY `CHITIETSANPHAM_DUNGLUONG_FK_idx` (`DUNGLUONG`),
  KEY `CHITIETSANPHAM_MASANPHAM_FK_idx` (`MASANPHAM`),
  CONSTRAINT `CHITIETSANPHAM_MASANPHAM_FK` FOREIGN KEY (`MASANPHAM`) REFERENCES `sanpham` (`MASANPHAM`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietsanpham`
--

LOCK TABLES `chitietsanpham` WRITE;
/*!40000 ALTER TABLE `chitietsanpham` DISABLE KEYS */;
INSERT INTO `chitietsanpham` VALUES ('1',1,'2021-12-15 00:00:00','Đã bán','Xanh lá','1T',24590000,'C:\\home\\site\\wwwroot/wwwroot/mobile/Apple/iPh'),('11',1,'2021-12-23 00:00:00','Đã bán','Xanh lá','512GB',320,NULL),('111111',1,'2021-12-18 00:00:00','Đã bán','Xanh nước','512GB',111111000,'/mobile/Apple/iPhone/13/Xanh nước'),('1231231',1,'2021-12-02 07:00:00','Đã bán','Xanh nước','512GB',31323200,'/mobile/Apple/iPhone/13/Xanh nước'),('123123123',49,'2021-12-19 07:00:00','Đã bán','Vàng','256GB',8000000,'/mobile/Xiaomi/Pad/5/Vàng'),('12321',1,'2021-12-19 00:00:00','Đã bán','Trắng','64G',12000000,'/mobile/Apple/iPhone/13/Trắng'),('1234',1,'2021-12-17 00:00:00','Đã bán','Vàng','512GB',1000000,'/mobile/Apple/iPhone/13/Vàng'),('123456',1,'2021-12-20 00:00:00','Đã bán','Xanh lá','512GB',10000000,'/mobile/Apple/iPhone/13/Xanh lá'),('123456766',40,'2021-12-17 00:00:00','Sẵn có','Trắng','126GB',8999000,''),('1234567779',45,'2021-11-29 00:00:00','Sẵn có','Xanh lá','null',7900000,'/mobile/'),('123456778',43,'2021-11-28 00:00:00','Sẵn có','Xanh lá','64G',6900000,'/mobile/'),('123456781',32,'2021-11-30 00:00:00','Sẵn có','Xanh lá','null',5900000,'/mobile/'),('123456782',31,'2021-11-30 00:00:00','Sẵn có','Xanh lá','null',5900000,'/mobile/'),('123456783',30,'2021-11-30 00:00:00','Sẵn có','Đen','null',30999000,'/mobile/'),('123456784',26,'2021-11-29 00:00:00','Đã bán','Xanh lá','512GB',20900000,'/mobile/'),('123456785',25,'2021-11-30 00:00:00','Sẵn có','Xanh nước','1T',23900000,'/mobile/'),('123456786',25,'2021-11-30 00:00:00','Sẵn có','Xanh nước','512GB',20900000,'/mobile/'),('123456787',1,'2021-12-03 07:00:00','Đã bán','Xanh nước','1T',22999000,'/mobile/Apple/iPhone/13/Xanh nước'),('123456788',1,'2021-11-11 00:00:00','Đã bán','Xanh lá','1T',24590000,'/mobile/Apple/iPhone/13/Xanh lá'),('123456789',1,'2021-12-02 07:00:00','Đã bán','Xanh nước','512GB',31323200,'/mobile/Apple/iPhone/13/Xanh nước'),('123456790',52,'2021-12-01 00:00:00','Sẵn có','Xanh lá','null',35900000,'/mobile/'),('123456791',51,'2021-12-01 00:00:00','Sẵn có','Xanh lá','null',22000000,'/mobile/'),('123456792',50,'2021-12-01 00:00:00','Sẵn có','Xanh lá','null',27990000,'/mobile/'),('123456793',49,'2021-12-01 00:00:00','Sẵn có','Xanh lá','null',29900000,'/mobile/'),('123456794',42,'2021-12-01 00:00:00','Sẵn có','Xanh lá','null',12900000,'/mobile/'),('123456795',41,'2021-12-01 00:00:00','Sẵn có','Xanh lá','null',10900000,'/mobile/'),('123456796',40,'2021-12-01 00:00:00','Sẵn có','Xanh lá','null',5900000,'/mobile/'),('123456798',38,'2021-12-01 00:00:00','Sẵn có','Xanh lá','null',5900000,'/mobile/'),('123456799',37,'2021-12-01 00:00:00','Sẵn có','Xanh lá','64G',5900000,'/mobile/'),('1516213156',1,'2021-12-03 00:00:00','Đã bán','Xanh nước','1T',22999000,'/mobile/Apple/iPhone/13/Xanh nước'),('230201001',47,'2021-12-21 00:00:00','Sẵn có','Đen','null',15000000,'/mobile/NOKIA/Nok'),('230201002',38,'2021-12-22 00:00:00','Sẵn có','Đen','500GB',21500000,NULL),('23020101',42,'2021-12-22 00:00:00','Sẵn có','Đen','null',6900000,'/mobile/Oppo/OPPO'),('23020102',40,'2021-12-22 00:00:00','Sẵn có','Đen','null',12312000,'/mobile/Oppo/Reno'),('23020103',1,'2021-12-23 00:00:00','Sẵn có','Xanh',NULL,29999000,'/mobile/Apple/iPh'),('23020104',31,'2021-12-21 00:00:00','Sẵn có','Xanh lá','null',22800000,'/mobile/Samsung/G'),('23020105',56,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,25900000,'/laptop/Dell/Dell/Vostro 3400 i7/Đen'),('23020106',54,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,3590000,'/mobile/Oneplus/OnePlus/5 /Đen'),('23020107',53,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,27999000,'/laptop/ASUS/Acer/Nitro 5 Gaming AN515 57 71V'),('23020108',52,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,47790000,'/laptop/Apple/MacBook/Pro 2018 13.3inch/Đen'),('23020109',50,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,44900000,'/laptop/ASUS//Asus ROG Zephyrus G14 Alan Walk'),('2302011',1,'2021-12-23 00:00:00','Đã bán','Xanh nước','1T',39000000,'/mobile/Apple/iPhone/13/Xanh nước'),('23020110',51,'2021-12-22 00:00:00','Sẵn có','Đen','null',30890000,'/laptop/ASUS/Asus/TUF Gaming FX516PM i7/Đen'),('23020111',53,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,27999000,'/laptop/ASUS/Acer/Nitro 5 Gaming AN515 57 71V'),('23020114',43,'2021-12-23 00:00:00','Sẵn có','Xanh lá','null',8490000,'/mobile/Vivo//Vivo V23e /Xanh lá'),('23020115',45,'2021-12-23 00:00:00','Sẵn có','Xanh lá','null',4099000,'/mobile/Sony/Xperia/PRO-I/Xanh lá'),('23020116',45,'2021-12-23 00:00:00','Sẵn có','Xanh lá','null',4099000,'/mobile/Sony/Xperia/PRO-I/Xanh lá'),('23020117',48,'2021-12-22 00:00:00','Sẵn có','Xanh lá','null',8690000,'/mobile/Realme/Realme/8 Pro/Xanh lá'),('23020118',48,'2021-12-22 00:00:00','Sẵn có','Xanh lá','null',8690000,'/mobile/Realme/Realme/8 Pro/Xanh lá'),('23020119',44,'2021-12-23 00:00:00','Sẵn có','Xanh lá','null',9400000,'/mobile/Xiaomi//Xiaomi 11 Lite 5G NE/Xanh lá'),('2302012',51,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,30890000,'/laptop/ASUS/Asus/TUF Gaming FX516PM i7/Đen'),('23020120',44,'2021-12-22 00:00:00','Sẵn có','Xanh lá','null',9400000,'/mobile/Xiaomi//Xiaomi 11 Lite 5G NE/Xanh lá'),('23020121',41,'2021-12-22 00:00:00','Sẵn có','Trắng','64G',7799000,'/mobile/Samsung/Galaxy/Note10/Trắng'),('23020122',41,'2021-12-22 00:00:00','Sẵn có','Trắng','64G',7799000,'/mobile/Samsung/Galaxy/Note10/Trắng'),('23020123',41,'2021-12-23 00:00:00','Sẵn có','Xanh lá','64G',7799000,'/mobile/Samsung/Galaxy/Note10/Xanh lá'),('23020124',41,'2021-12-23 00:00:00','Sẵn có','Xanh lá','64G',7799000,'/mobile/Samsung/Galaxy/Note10/Xanh lá'),('23020125',43,'2021-12-22 00:00:00','Sẵn có','Xanh lá','64G',8490000,'/mobile/Vivo//Vivo V23e /Xanh lá'),('23020126',43,'2021-12-22 00:00:00','Sẵn có','Xanh lá','64G',8490000,'/mobile/Vivo//Vivo V23e /Xanh lá'),('23020127',44,'2021-12-22 00:00:00','Sẵn có','Xanh lá','64G',9400000,'/mobile/Xiaomi//Xiaomi 11 Lite 5G NE/Xanh lá'),('23020128',44,'2021-12-08 00:00:00','Sẵn có','Xanh lá','64G',9400000,'/mobile/Xiaomi//Xiaomi 11 Lite 5G NE/Xanh lá'),('2302013',43,'2021-12-23 00:00:00','Sẵn có','Xanh lá','null',8490000,'/mobile/Vivo//Vivo V23e /Xanh lá'),('2302014',1,'2021-12-23 00:00:00','Sẵn có','Xanh lá','512GB',39000000,'/mobile/Apple/iPhone/13/Xanh lá'),('2302015',1,'2021-12-23 00:00:00','Sẵn có','Trắng','512GB',37000000,'/mobile/Apple/iPhone/13/Trắng'),('2302016',1,'2021-12-23 00:00:00','Sẵn có','Vàng','512GB',37000000,'/mobile/Apple/iPhone/13/Vàng'),('2302017',1,'2021-12-23 00:00:00','Sẵn có','Xanh','512GB',37000000,'/mobile/Apple/iPhone/13/Xanh'),('2302018',1,'2021-12-23 00:00:00','Sẵn có','Xanh lá','512GB',37000000,'/mobile/Apple/iPhone/13/Xanh lá'),('25900007',56,'2021-12-22 00:00:00','Sẵn có','Đen','null',25900000,'/laptop/Dell/Dell/Vostro 3400 i7/Đen'),('30000104',37,'2021-12-21 00:00:00','Sẵn có','Xanh','null',23990000,'/mobile/Samsung/G'),('30000105',58,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,87900000,'/laptop/Apple/Laptop/MacBook Pro 14 M1 Max 20'),('465976',25,'2021-12-18 00:00:00','Đã bán','Tím','64G',10000000,'/mobile/Apple/Iphone/12/Tím'),('99000006',57,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,99000000,'/laptop/Apple/Apple/MacBook Pro 16 M1 Max 202'),('9999999',1,'2021-12-24 00:00:00','Sẵn có','Xanh','64G',8000000,'/mobile/Apple/iPhone/13/Xanh'),('G1-230201',41,'2021-12-23 00:00:00','Sẵn có','Trắng',NULL,7799000,'/mobile/Samsung/Galaxy/Note10/Trắng'),('G10-230201',31,'2021-12-23 00:00:00','Sẵn có','Xanh',NULL,22800000,'/mobile/Samsung/Galaxy/S21/Xanh'),('G2-230201',41,'2021-12-23 00:00:00','Sẵn có','Xanh lá',NULL,7799000,'/mobile/Samsung/Galaxy/Note10/Xanh lá'),('G3-230201',41,'2021-12-23 00:00:00','Sẵn có','Xanh lá','64G',7899000,'/mobile/Samsung/Galaxy/Note10/Xanh lá'),('G4-230201',41,'2021-12-23 00:00:00','Sẵn có','Trắng','64G',7899000,'/mobile/Samsung/Galaxy/Note10/Trắng'),('G5-230201',37,'2021-12-23 00:00:00','Sẵn có','Xanh lá','null',23990000,'/mobile/Samsung/Galaxy/ZFlip/Xanh lá'),('G6-230201',37,'2021-12-23 00:00:00','Sẵn có','Xanh','null',23990000,'/mobile/Samsung/Galaxy/ZFlip/Xanh'),('G7-230201',37,'2021-12-23 00:00:00','Sẵn có','Xanh','null',24990000,'/mobile/Samsung/Galaxy/ZFlip/Xanh'),('G8-230201',32,'2021-12-23 00:00:00','Sẵn có','Xanh','null',16000000,'/mobile/Samsung/Galaxy/S20/Xanh'),('G9-230201',31,'2021-12-23 00:00:00','Sẵn có','Xanh','null',22800000,'/mobile/Samsung/Galaxy/S21/Xanh'),('I1-230201',30,'2021-12-23 00:00:00','Sẵn có','Xanh',NULL,1000000,'/laptop/Dell/Inspiron/7441/Xanh'),('I10-230201',1,'2021-12-23 00:00:00','Sẵn có','Tím','512GB',32000000,'/mobile/Apple/iPhone/13/Tím'),('I11-230201',1,'2021-12-23 00:00:00','Đã bán','Xanh nước','512GB',32000000,'/mobile/Apple/iPhone/13/Xanh nước'),('I12-230201',1,'2021-12-23 00:00:00','Sẵn có','Trắng','512GB',32000000,'/mobile/Apple/iPhone/13/Trắng'),('I13-230201',1,'2021-12-23 00:00:00','Sẵn có','Vàng','512GB',32000000,'/mobile/Apple/iPhone/13/Vàng'),('I14-230201',1,'2021-12-23 00:00:00','Sẵn có','Xanh','512GB',32000000,'/mobile/Apple/iPhone/13/Xanh'),('I2-230201',30,'2021-12-23 00:00:00','Sẵn có','Xanh',NULL,1000000,'/laptop/Dell/Inspiron/7441/Xanh'),('I3-230201',26,'2021-12-23 00:00:00','Sẵn có','Xanh',NULL,1500000,'/mobile/Apple/Iphone/11/Xanh'),('I4-230201',25,'2021-12-23 00:00:00','Sẵn có','Xanh',NULL,1800000,'/mobile/Apple/Iphone/12/Xanh'),('I5-230201',25,'2021-12-23 00:00:00','Sẵn có','Tím',NULL,1800000,'/mobile/Apple/Iphone/12/Tím'),('I6-230201',25,'2021-12-23 00:00:00','Sẵn có','Tím','512GB',1700000,'/mobile/Apple/Iphone/12/Tím'),('I7-230201',25,'2021-12-23 00:00:00','Sẵn có','Xanh nước','512GB',1700000,'/mobile/Apple/Iphone/12/Xanh nước'),('I8-230201',25,'2021-12-23 00:00:00','Sẵn có','Xanh nước','64G',1700000,'/mobile/Apple/Iphone/12/Xanh nước'),('I9-230201',25,'2021-12-23 00:00:00','Sẵn có','Tím','64G',1700000,'/mobile/Apple/Iphone/12/Tím'),('M1-230201',58,'2021-12-22 00:00:00','Sẵn có','Đen','null',87900000,'/laptop/Apple/Laptop/MacBook Pro 14 M1 Max 20'),('M10-230201',50,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,44900000,'/laptop/ASUS/Asus/ROG Zephyrus G14 Alan Walke'),('M11-230201',50,'2021-12-23 00:00:00','Sẵn có','Xanh lá',NULL,44900000,'/laptop/ASUS/Asus/ROG Zephyrus G14 Alan Walke'),('M2-230201',57,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,87900000,'/laptop/Apple/Apple/MacBook Pro 16 M1 Max 202'),('M3-230201',56,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,25900000,'/laptop/Dell/Dell/Vostro 3400 i7/Đen'),('M4-230201',55,'2021-12-22 00:00:00','Sẵn có','Đen','null',25900000,'/laptop/Dell/Dell/Gaming G15 5515 R5/Đen'),('M5-230201',53,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,27999000,'/laptop/ASUS/Acer/Nitro 5 Gaming AN515 57 71V'),('M6-230201',52,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,47790000,'/laptop/Apple/MacBook/Pro 2018 13.3inch/Đen'),('M7-230201',52,'2021-12-23 00:00:00','Sẵn có','Xanh lá',NULL,47790000,'/laptop/Apple/MacBook/Pro 2018 13.3inch/Xanh '),('M8-230201',51,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,30890000,'/laptop/ASUS/Asus/TUF Gaming FX516PM i7/Đen'),('M9-230201',51,'2021-12-23 00:00:00','Sẵn có','Xanh lá',NULL,30890000,'/laptop/ASUS/Asus/TUF Gaming FX516PM i7/Xanh '),('N1-230201',47,'2021-12-23 00:00:00','Sẵn có','Xanh lá',NULL,3490000,'/mobile/NOKIA/Nokia/G10/Xanh lá'),('O1-230201',55,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,3590000,'/laptop/Dell/Dell/Gaming G15 5515 R5/Đen'),('O2-230201',54,'2021-12-22 00:00:00','Sẵn có','Đen','null',3590000,'/mobile/Oneplus/OnePlus/5 /Đen'),('O3-230201',42,'2021-12-23 00:00:00','Sẵn có','Đen','64G',6990000,'/mobile/Oppo/OPPO/A95/Đen'),('O4-230201',42,'2021-12-23 00:00:00','Sẵn có','Xanh lá','64G',6990000,'/mobile/Oppo/OPPO/A95/Xanh lá'),('O5-230201',42,'2021-12-23 00:00:00','Sẵn có','Xanh lá',NULL,6990000,'/mobile/Oppo/OPPO/A95/Xanh lá'),('O6-230201',42,'2021-12-23 00:00:00','Sẵn có','Xanh lá',NULL,6990000,'/mobile/Oppo/OPPO/A95/Xanh lá'),('O7-230201',42,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,6990000,'/mobile/Oppo/OPPO/A95/Đen'),('R1-230201',48,'2021-12-23 00:00:00','Sẵn có','Xanh lá',NULL,8690000,'/mobile/Realme/Realme/8 Pro/Xanh lá'),('R10-230201',40,'2021-12-23 00:00:00','Sẵn có','Xanh lá','null',1130000,'/mobile/Oppo/Reno/8/Xanh lá'),('R11-230201',40,'2021-12-23 00:00:00','Sẵn có','Trắng','null',1130000,'/mobile/Oppo/Reno/8/Trắng'),('R12-230201',40,'2021-12-23 00:00:00','Sẵn có','Trắng',NULL,1140000,'/mobile/Oppo/Reno/8/Trắng'),('R13-230201',40,'2021-12-23 00:00:00','Sẵn có','Trắng',NULL,1140000,'/mobile/Oppo/Reno/8/Trắng'),('R14-230201',40,'2021-12-23 00:00:00','Sẵn có','Xanh lá',NULL,1140000,'/mobile/Oppo/Reno/8/Xanh lá'),('R15-230201',40,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,1140000,'/mobile/Oppo/Reno/8/Đen'),('R17-230201',38,'2021-12-23 00:00:00','Sẵn có','Xanh lá',NULL,21500000,'/mobile/Samsung/Galaxy/Note20/Xanh lá'),('R18-230201',38,'2021-12-23 00:00:00','Sẵn có','Đen',NULL,21500000,'/mobile/Samsung/Galaxy/Note20/Đen'),('R19-230201',38,'2021-12-23 00:00:00','Sẵn có','Đen','null',20500000,'/mobile/Samsung/Galaxy/Note20/Đen'),('R20-230201',38,'2021-12-23 00:00:00','Sẵn có','Xanh lá','null',20500000,'/mobile/Samsung/Galaxy/Note20/Xanh lá'),('R6-230201',40,'2021-12-23 00:00:00','Sẵn có','Đen','64G',1230000,'/mobile/Oppo/Reno/8/Đen'),('R7-230201',40,'2021-12-23 00:00:00','Sẵn có','Xanh lá','64G',1230000,'/mobile/Oppo/Reno/8/Xanh lá'),('R8-230201',40,'2021-12-23 00:00:00','Sẵn có','Trắng','64G',1230000,'/mobile/Oppo/Reno/8/Trắng'),('R9-230201',40,'2021-12-23 00:00:00','Sẵn có','Đen','null',1130000,'/mobile/Oppo/Reno/8/Đen'),('uhew843',41,'2021-12-18 00:00:00','Sẵn có','Trắng','64G',2000000,NULL),('V1-230201',49,'2021-12-23 00:00:00','Sẵn có','Vàng',NULL,1230000,'/mobile/Vivo/Vivi/Y20/Vàng'),('V2-230201',49,'2021-12-23 00:00:00','Sẵn có','Xanh lá',NULL,1230000,'/mobile/Vivo/Vivi/Y20/Xanh lá'),('V3-230201',46,'2021-12-22 00:00:00','Sẵn có','Xanh lá','126GB',9999000,'/mobile/Vsmart/VSMART/STAR 5/Xanh lá'),('V5-230201',43,'2021-12-23 00:00:00','Sẵn có','Xanh lá','64G',8490000,'/mobile/Vivo/Vivo/V23e /Xanh lá'),('V6-230201',43,'2021-12-22 00:00:00','Sẵn có','Xanh lá','null',8490000,'/mobile/Vivo/Vivo/V23e /Xanh lá'),('X1-230201',45,'2021-12-23 00:00:00','Sẵn có','Xanh lá',NULL,4099000,'/mobile/Sony/Xperia/PRO-I/Xanh lá'),('X2-230201',44,'2021-12-21 00:00:00','Sẵn có','Xanh lá','64G',9400000,'C:\\home\\site\\wwwroot/wwwroot/mobile/Xiaomi/Xi'),('X3-230201',44,'2021-12-22 00:00:00','Sẵn có','Xanh lá','64G',9400000,'/mobile/Xiaomi/Xiaomi/11 Lite 5G NE/Xanh lá');
/*!40000 ALTER TABLE `chitietsanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietvanchuyen`
--

DROP TABLE IF EXISTS `chitietvanchuyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietvanchuyen` (
  `MACHITIETVANCHUYEN` int(11) NOT NULL AUTO_INCREMENT,
  `MAVANCHUYEN` int(11) NOT NULL,
  `THOIDIEM` datetime NOT NULL,
  `TRANGTHAI` text NOT NULL,
  PRIMARY KEY (`MACHITIETVANCHUYEN`,`MAVANCHUYEN`),
  KEY `FK_REFERENCE_19` (`MAVANCHUYEN`),
  CONSTRAINT `FK_REFERENCE_19` FOREIGN KEY (`MAVANCHUYEN`) REFERENCES `vanchuyen` (`MAVANCHUYEN`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietvanchuyen`
--

LOCK TABLES `chitietvanchuyen` WRITE;
/*!40000 ALTER TABLE `chitietvanchuyen` DISABLE KEYS */;
INSERT INTO `chitietvanchuyen` VALUES (1,15,'2021-12-21 19:42:31','Đã xuất kho'),(2,16,'2021-12-23 00:52:47','Đã xuất kho'),(3,18,'2021-12-23 07:13:57','Đã xuất kho'),(4,19,'2021-12-23 07:55:05','Đã xuất kho');
/*!40000 ALTER TABLE `chitietvanchuyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danhgia`
--

DROP TABLE IF EXISTS `danhgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danhgia` (
  `MADANHGIA` int(11) NOT NULL AUTO_INCREMENT,
  `MASANPHAM` int(11) NOT NULL,
  `MAKHACHHANG` int(11) NOT NULL,
  `NOIDUNG` text,
  `SOSAO` int(11) NOT NULL,
  `THOIGIAN` datetime NOT NULL,
  `IMAGE` text,
  PRIMARY KEY (`MADANHGIA`),
  KEY `FK_REFERENCE_11` (`MASANPHAM`),
  KEY `FK_REFERENCE_12` (`MAKHACHHANG`),
  CONSTRAINT `FK_REFERENCE_11` FOREIGN KEY (`MASANPHAM`) REFERENCES `sanpham` (`MASANPHAM`),
  CONSTRAINT `FK_REFERENCE_12` FOREIGN KEY (`MAKHACHHANG`) REFERENCES `khachhang` (`MAKHACHHANG`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danhgia`
--

LOCK TABLES `danhgia` WRITE;
/*!40000 ALTER TABLE `danhgia` DISABLE KEYS */;
/*!40000 ALTER TABLE `danhgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danhsachyeuthich`
--

DROP TABLE IF EXISTS `danhsachyeuthich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danhsachyeuthich` (
  `MAKHACHHANG` int(11) NOT NULL,
  `MASANPHAM` int(11) NOT NULL,
  PRIMARY KEY (`MAKHACHHANG`,`MASANPHAM`),
  KEY `MAKHACHHANG_FK_idx` (`MAKHACHHANG`),
  KEY `MASANPHAM_FK_idx` (`MASANPHAM`),
  CONSTRAINT `FK_DANHSACHYEUTHICH_KHACHHANG_MAKHACHHANG` FOREIGN KEY (`MAKHACHHANG`) REFERENCES `khachhang` (`MAKHACHHANG`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_DANHSACHYEUTHICH_KHACHHANG_MASANPHAM` FOREIGN KEY (`MASANPHAM`) REFERENCES `sanpham` (`MASANPHAM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danhsachyeuthich`
--

LOCK TABLES `danhsachyeuthich` WRITE;
/*!40000 ALTER TABLE `danhsachyeuthich` DISABLE KEYS */;
INSERT INTO `danhsachyeuthich` VALUES (14,1);
/*!40000 ALTER TABLE `danhsachyeuthich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giohang`
--

DROP TABLE IF EXISTS `giohang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giohang` (
  `MAGIOHANG` int(11) NOT NULL AUTO_INCREMENT,
  `MAKHACHHANG` int(11) NOT NULL,
  `TONGTIEN` float NOT NULL,
  PRIMARY KEY (`MAGIOHANG`),
  KEY `FK_REFERENCE_13` (`MAKHACHHANG`),
  CONSTRAINT `FK_REFERENCE_13` FOREIGN KEY (`MAKHACHHANG`) REFERENCES `khachhang` (`MAKHACHHANG`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giohang`
--

LOCK TABLES `giohang` WRITE;
/*!40000 ALTER TABLE `giohang` DISABLE KEYS */;
INSERT INTO `giohang` VALUES (7,1,0),(8,12,0),(9,15,0),(10,17,0),(11,14,0);
/*!40000 ALTER TABLE `giohang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `SOHOADON` int(11) NOT NULL AUTO_INCREMENT,
  `MAKHACHHANG` int(11) NOT NULL,
  `MAKHUYENMAI` int(11) DEFAULT NULL,
  `NGAYHOADON` datetime DEFAULT NULL,
  `MANHANVIEN` int(11) DEFAULT NULL,
  `TONGTIEN` float DEFAULT NULL,
  PRIMARY KEY (`SOHOADON`),
  KEY `FK_REFERENCE_7` (`MAKHACHHANG`),
  KEY `FK_REFERENCE_8` (`MAKHUYENMAI`),
  KEY `FK_REFERENCE_16` (`MANHANVIEN`),
  CONSTRAINT `FK_REFERENCE_16` FOREIGN KEY (`MANHANVIEN`) REFERENCES `nhanvien` (`MANHANVIEN`),
  CONSTRAINT `FK_REFERENCE_7` FOREIGN KEY (`MAKHACHHANG`) REFERENCES `khachhang` (`MAKHACHHANG`),
  CONSTRAINT `FK_REFERENCE_8` FOREIGN KEY (`MAKHUYENMAI`) REFERENCES `khuyenmai` (`MAKHUYENMAI`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES (65,14,NULL,'2021-12-16 20:57:38',1,31323200),(79,12,NULL,'2021-12-19 16:29:31',NULL,22999000),(81,12,NULL,'2021-12-19 19:43:38',NULL,8000000),(87,17,NULL,'2021-12-21 06:08:52',NULL,57998000),(88,17,NULL,'2021-12-21 06:09:23',1,12000000),(89,15,NULL,'2021-12-22 01:36:42',NULL,20000000),(94,12,NULL,'2021-12-22 21:10:22',NULL,333333000),(96,12,NULL,'2021-12-22 21:13:20',NULL,73770000),(98,12,NULL,'2021-12-22 21:15:10',5,22999000),(100,12,NULL,'2021-12-23 07:01:57',NULL,128000000),(101,12,NULL,'2021-12-23 07:02:05',NULL,39000000),(103,14,NULL,'2021-12-23 07:12:47',1,1000000),(104,15,NULL,'2021-12-23 07:52:18',1,20900000);
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `MAKHACHHANG` int(11) NOT NULL AUTO_INCREMENT,
  `TENKHACHHANG` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `SODIENTHOAI` varchar(20) DEFAULT NULL,
  `DIACHI` varchar(200) DEFAULT NULL,
  `NGAYSINH` datetime DEFAULT NULL,
  `LOAIKHACHHANG` varchar(30) DEFAULT NULL,
  `IMAGE` varchar(1000) DEFAULT NULL,
  `CCCD` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MAKHACHHANG`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (1,'Lê Mai Duy Khánh','19521678@gm.uit.edu.vn','0914630149','Lâm Đồng','2001-01-25 00:00:00','Thành viên','/khachhang','123'),(12,'Lê mai Duy Khánh','khanhlemaiduy123@gmail.com','0122121782','123 Lê Qui Đon','2021-12-06 00:00:00','Thành viên','/khachhang','123'),(14,'Khánh Lê Mai Khuêê','19521679@gm.uit.edu.vn','+84 914630','123 Lê Qui Đon','2021-12-17 00:00:00','Thành viên','/khachhang','123'),(15,'quang huy vo','vqh.official@gmail.com','0767969410','123 Lê Qui Đon','2021-12-02 00:00:00','Thành viên','/khachhang','212886839'),(16,'Nguyễn Khang','nguyenkhang1531@gmail.com','01242434','AB','2021-12-17 00:00:00','Thành viên','/khachhang','13434534'),(17,'Huy Võ Quang','19521640@gm.uit.edu.vn','0767969418','null','1969-12-03 00:00:00','Thành viên','/khachhang','212886199'),(18,'Nguyễn Thị Viết Hương','viethuonguit@gmail.com','0328419745','null','2021-12-18 00:00:00','Thành viên','/khachhang','null'),(20,'Nguyễn Ngọc Châu Pha','chaupha180801@gmail.com','0385276400','null','2001-08-16 00:00:00','Thành viên','/khachhang','null'),(21,'Khang Nguyễn Lê Nguyên','19521666@gm.uit.edu.vn','0767969418','Quảng Ngãi','2001-03-14 00:00:00','Thành viên','/khachhang','123456789101'),(22,'Huy Võ Quang','19521640@gm.uit.edu.vn','0914630148','Quảng Ngãi','2001-08-25 00:00:00','Thành viên','/khachhang','123456785'),(23,'Nguyễn Đức','duc1@gmail.com','0914630146','Đà Nẵng','2001-08-24 00:00:00','Thành viên','/khachhang','123456784'),(24,'Nguyễn Hồng Hải','hai1@gmail.com','0914630145','Ninh Thuận','2001-08-23 00:00:00','Thành viên','/khachhang','123456783'),(25,'Nguyễn Ái Linh','linh@gmail.com','0914630142','Quảng Trị','2001-08-22 00:00:00','Thành viên','/khachhang','123456782'),(26,'Đặng Nguyễn Ngọc Lâm','lam@gmail.com','0914630189','Quảng Ngãi','1995-08-21 00:00:00','Thành viên','/khachhang','123456799'),(29,'Khánh Lê','19521679@ms.uit.edu.vn','7','null','2021-12-21 00:00:00','Thành viên','/khachhang','null'),(30,'123','khanhlemaiduy123@outlook.com','123123',NULL,'2021-12-23 00:00:00','Thành viên',NULL,NULL);
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhangdangnhap`
--

DROP TABLE IF EXISTS `khachhangdangnhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhangdangnhap` (
  `REFRESHTOKEN` varchar(1000) NOT NULL,
  `MAKHACHHANG` int(11) NOT NULL,
  `IP` varchar(45) DEFAULT NULL,
  `LOCATION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`REFRESHTOKEN`),
  KEY `FK_KHACHHANGDANGNHAP_TAIKHOANKHACHHANG_idx` (`MAKHACHHANG`),
  CONSTRAINT `FK_KHACHHANGDANGNHAP_KHACHHANG` FOREIGN KEY (`MAKHACHHANG`) REFERENCES `khachhang` (`MAKHACHHANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhangdangnhap`
--

LOCK TABLES `khachhangdangnhap` WRITE;
/*!40000 ALTER TABLE `khachhangdangnhap` DISABLE KEYS */;
INSERT INTO `khachhangdangnhap` VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjE0Iiwicm9sZSI6IkdVRVNUIiwibmJmIjoxNjQwMjM5NDc1LCJleHAiOjE2NDExMDM0NzUsImlhdCI6MTY0MDIzOTQ3NX0.V0GjbvyxoCblfmmQ-ATStMswHXNyYMYPOUDU_-PNdms',14,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjE0Iiwicm9sZSI6IkdVRVNUIiwibmJmIjoxNjQwMjQ0NjIyLCJleHAiOjE2NDExMDg2MjIsImlhdCI6MTY0MDI0NDYyMn0.IwpLFxcqN7kRG87xPrhZez-XIOLvruEwo2H31FKTpns',14,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjE0Iiwicm9sZSI6IkdVRVNUIiwibmJmIjoxNjQwMjQ1NjMzLCJleHAiOjE2NDExMDk2MzMsImlhdCI6MTY0MDI0NTYzM30.SxZI5THOM40hs60vSu7i7HXAbin3b59xdqfnfYTMwmo',14,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjE0Iiwicm9sZSI6IkdVRVNUIiwibmJmIjoxNjQwMjQzNDg1LCJleHAiOjE2NDExMDc0ODUsImlhdCI6MTY0MDI0MzQ4NX0.6GA3AjbhdG6zOZX7x5RBbVvKxBiwP-TlK77q4R_5ie0',14,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjE1Iiwicm9sZSI6IkdVRVNUIiwibmJmIjoxNjQwMjQ1MzA2LCJleHAiOjE2NDExMDkzMDYsImlhdCI6MTY0MDI0NTMwNn0.xZwbgy4awb1b2LgTbk1Wv86vN2gY2Uf1lNSTUVdlG18',15,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjE1Iiwicm9sZSI6IkdVRVNUIiwibmJmIjoxNjQwMjQ1ODk2LCJleHAiOjE2NDExMDk4OTYsImlhdCI6MTY0MDI0NTg5Nn0.OSzrTTK9x4Sz2MiAvKOgCVVvJVjZApBGmvZPW2wb20E',15,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjE1Iiwicm9sZSI6IkdVRVNUIiwibmJmIjoxNjQwMjQ1ODYxLCJleHAiOjE2NDExMDk4NjEsImlhdCI6MTY0MDI0NTg2MX0._q1H0aWQRH_m6zMjN_lJADLsbPfVr0JDP8lt9q4Vv7g',15,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjE1Iiwicm9sZSI6IkdVRVNUIiwibmJmIjoxNjQwMjQwOTkzLCJleHAiOjE2NDExMDQ5OTMsImlhdCI6MTY0MDI0MDk5M30.DMHDAA8vlHb_gQp48oD0pc7sNUPObIvxojZiL7yEX5c',15,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjE1Iiwicm9sZSI6IkdVRVNUIiwibmJmIjoxNjQwMjQxMDI1LCJleHAiOjE2NDExMDUwMjUsImlhdCI6MTY0MDI0MTAyNX0.44VwfAx_QQW2qEEtdm7sdwRkkEu4TIHrLaPSIgVWRVw',15,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjE3Iiwicm9sZSI6IkdVRVNUIiwibmJmIjoxNjQwMjQ1MzAwLCJleHAiOjE2NDExMDkzMDAsImlhdCI6MTY0MDI0NTMwMH0.Jd4_YPL-pLvLrvy4P9ff35vtBRsk6hEyf14AOiiKcNA',17,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjI5Iiwicm9sZSI6IkdVRVNUIiwibmJmIjoxNjQwMTg1Njg4LCJleHAiOjE2NDEwNDk2ODgsImlhdCI6MTY0MDE4NTY4OH0.Duyp-vkEyWOAA6Qm2C5TVAv04rKBL_puC0OujPilcfU',29,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjI5Iiwicm9sZSI6IkdVRVNUIiwibmJmIjoxNjQwMTg1ODAzLCJleHAiOjE2NDEwNDk4MDMsImlhdCI6MTY0MDE4NTgwM30.wbPHFqDmiZ3iuxzE9HcFL0iKnpkgtq6WxjAwOe2AdU4',29,NULL,NULL);
/*!40000 ALTER TABLE `khachhangdangnhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khuyenmai`
--

DROP TABLE IF EXISTS `khuyenmai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khuyenmai` (
  `MAKHUYENMAI` int(11) NOT NULL AUTO_INCREMENT,
  `TENKHUYENMAI` varchar(30) NOT NULL,
  `TILEKHUYENMAI` float NOT NULL,
  `NGAYBATDAU` datetime NOT NULL,
  `NGAYKETTHUC` datetime NOT NULL,
  `DIEUKIEN` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`MAKHUYENMAI`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khuyenmai`
--

LOCK TABLES `khuyenmai` WRITE;
/*!40000 ALTER TABLE `khuyenmai` DISABLE KEYS */;
INSERT INTO `khuyenmai` VALUES (1,'12 tháng 12',0.22,'2021-11-13 00:00:00','2021-12-13 00:00:00','Đơn hàng trên 1  triệu đồng'),(2,'11 tháng 11',0.1,'2021-10-30 00:00:00','2021-11-15 00:00:00','Áp dụng cho tất cả đơn hàng'),(3,'1 tháng 1',0.2,'2021-12-01 00:00:00','2022-01-05 00:00:00','Áp dụng cho tất cả đơn hàng'),(4,'15 tháng 1',0.3,'2021-11-30 07:00:00','2022-01-29 07:00:00','Áp dụng cho tất cả đơn hàng'),(5,'20 tháng 12',0.5,'2021-12-20 00:00:00','2022-01-29 07:00:00','Áp dụng cho tất cả đơn hàng'),(6,'1 tháng 1',0.6,'2022-01-01 00:00:00','2022-01-28 00:00:00','Áp dụng cho tất cả đơn hàng'),(7,'Mừng Noel',0.3,'2021-12-23 00:00:00','2021-12-26 00:00:00','Áp dụng tất các hóa đơn'),(8,'Giáng sinh an lành chốt deal n',0.05,'2021-12-23 00:00:00','2022-01-09 00:00:00','Tất cả đơn'),(9,'Mừng Năm mới 2022',0.5,'2021-12-30 00:00:00','2022-01-06 00:00:00','Áp dụng tất các hóa đơn'),(10,'Mừng Năm mới 2022 (ĐẶC BIỆT)',0.6,'2021-12-01 00:00:00','2022-01-06 00:00:00',NULL),(11,'Mừng tết nguyên đán 2022',0.5,'2022-01-31 00:00:00','2022-02-04 00:00:00','Áp dụng tất các hóa đơn'),(12,'Tri ân khách hàng',0.3,'2022-03-01 00:00:00','2022-03-03 00:00:00','Áp dụng tất các hóa đơn');
/*!40000 ALTER TABLE `khuyenmai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khuyenmaicuatoi`
--

DROP TABLE IF EXISTS `khuyenmaicuatoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khuyenmaicuatoi` (
  `MAKHACHHANG` int(11) NOT NULL,
  `MAKHUYENMAI` int(11) NOT NULL,
  `NGAYTHEM` datetime DEFAULT NULL,
  PRIMARY KEY (`MAKHACHHANG`,`MAKHUYENMAI`),
  KEY `FK_KHACHHANG_KHUYENMAI_MAKHUYENMAI_idx` (`MAKHUYENMAI`),
  CONSTRAINT `FK_KHACHHANG_KHUYENMAI_MAKHACHHANG` FOREIGN KEY (`MAKHACHHANG`) REFERENCES `khachhang` (`MAKHACHHANG`),
  CONSTRAINT `FK_KHACHHANG_KHUYENMAI_MAKHUYENMAI` FOREIGN KEY (`MAKHUYENMAI`) REFERENCES `khuyenmai` (`MAKHUYENMAI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khuyenmaicuatoi`
--

LOCK TABLES `khuyenmaicuatoi` WRITE;
/*!40000 ALTER TABLE `khuyenmaicuatoi` DISABLE KEYS */;
INSERT INTO `khuyenmaicuatoi` VALUES (1,1,'2021-11-24 00:00:00'),(12,3,'2021-12-18 17:11:08'),(12,4,'2021-12-18 17:11:10'),(12,5,'2021-12-22 21:33:14'),(14,3,'2021-12-23 04:24:28'),(14,4,'2021-12-23 04:24:29'),(14,5,'2021-12-23 04:24:31'),(14,7,'2021-12-23 07:08:26'),(14,8,'2021-12-23 07:08:29'),(15,3,'2021-12-22 17:35:27'),(15,4,'2021-12-22 17:35:30'),(15,5,'2021-12-22 17:35:31'),(17,3,'2021-12-22 14:41:39'),(17,4,'2021-12-22 14:41:41'),(17,5,'2021-12-22 14:41:40');
/*!40000 ALTER TABLE `khuyenmaicuatoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaisanpham`
--

DROP TABLE IF EXISTS `loaisanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaisanpham` (
  `MALOAI` int(11) NOT NULL AUTO_INCREMENT,
  `TENLOAI` varchar(30) NOT NULL,
  PRIMARY KEY (`MALOAI`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaisanpham`
--

LOCK TABLES `loaisanpham` WRITE;
/*!40000 ALTER TABLE `loaisanpham` DISABLE KEYS */;
INSERT INTO `loaisanpham` VALUES (1,'Điện thoại'),(2,'Laptop');
/*!40000 ALTER TABLE `loaisanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhacungcap` (
  `MANHACUNGCAP` int(11) NOT NULL AUTO_INCREMENT,
  `TENNHACUNGCAP` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `SODIENTHOAI` varchar(20) NOT NULL,
  `DIACHI` varchar(200) NOT NULL,
  `IMAGE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MANHACUNGCAP`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhacungcap`
--

LOCK TABLES `nhacungcap` WRITE;
/*!40000 ALTER TABLE `nhacungcap` DISABLE KEYS */;
INSERT INTO `nhacungcap` VALUES (1,'Apple','apple@apple.com','123456789','LosA','/nhacungcap'),(2,'Samsung','khanhlemaiduy123@gmail.com','01242434','12','/nhacungcap'),(3,'LG','LG@gmail.com','01242434','Hàn Quốc','/nhacungcap');
/*!40000 ALTER TABLE `nhacungcap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `MANHANVIEN` int(11) NOT NULL AUTO_INCREMENT,
  `TENNHANVIEN` varchar(30) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `SODIENTHOAI` varchar(20) NOT NULL,
  `DIACHI` varchar(200) NOT NULL,
  `NGAYVAOLAM` datetime NOT NULL,
  `CCCD` varchar(20) NOT NULL,
  `NGAYSINH` datetime NOT NULL,
  `CHUCVU` varchar(20) NOT NULL,
  `IMAGE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MANHANVIEN`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (1,'Lê Mai Duy Khánh Em','khanhlemaiduy123@gmail.com','0914630145','Lâm Đồng','2021-11-14 07:00:00','123456789','2020-12-31 07:00:00','Giám đốc','/nhanvien'),(4,'Khánh','khanhlemaiduy123@gmail.com','0914630145','Lâm Đồng','2021-11-14 07:00:00','123456789','2020-12-31 07:00:00','Giám đốc','/nhanvien'),(5,'Khánh','khanhlemaiduy123@gmail.com','0914630145','Lâm Đồng','2021-11-14 07:00:00','123456789','2020-12-31 07:00:00','Giám đốc','/nhanvien'),(6,'Huỳnh Thảo Muội','muoi@gmail.com','0324567899','Cà Mau','2021-11-14 07:00:00','212916619','2001-04-20 00:00:00','Nhân viên','/Nhanvien'),(7,'Nguyễn Ngọc Châu Pha','pha@gmail.com','0215667899','Mộ Đức,Quảng Ngãi','2021-11-14 07:00:00','234567789','2001-08-08 00:00:00','Nhân viên','/Nhanvien'),(8,'Ngô Tường Vy','vy@gmail.com','0321212121','Vĩnh Long','2021-11-14 07:00:00','234567788','2001-08-09 00:00:00','Nhân viên','/Nhanvien'),(9,'Bùi Tiến Dũng','dungbui@gmail.com','0321212122','Nghệ An','2021-11-14 07:00:00','234567787','1996-08-09 00:00:00','Nhân viên','/Nhanvien'),(10,'Nguyễn Công Phượng','phuong@gmail.com','0321212121','Nghệ An','2021-11-14 07:00:00','234567786','1995-08-09 00:00:00','Nhân viên','/Nhanvien'),(11,'Nguyễn Tiến Linh','linh@gmail.com','0321212123','Bình Dương','2021-11-14 07:00:00','234567785','1997-08-09 00:00:00','Nhân viên','/Nhanvien'),(12,'Nguyễn Quang Hải','hai@gmail.com','0325777799','Hà Nội','2021-11-14 07:00:00','234567784','1997-09-09 00:00:00','Nhân viên','/Nhanvien'),(13,'Nguyễn Lê Khang','19521666@gm.uit.edu.vn','0327403627','Quảng Ngãi','2021-11-14 07:00:00','213343534','2001-03-15 00:00:00','Nhân viên','/Nhanvien'),(14,'Nguyễn Hoàng Đức','duc@gmail.com','0122313242','Hà Tĩnh','2021-11-14 07:00:00','213343535','1997-10-09 00:00:00','Nhân viên','/Nhanvien'),(15,'Nguyễn Thanh Tùng','mtp@gmail.com','0333336666','Thái Bình','2021-11-14 07:00:00','213343536','1994-10-09 00:00:00','Nhân viên','/Nhanvien'),(16,'Võ Quang Huy','vqh.official@gmail.com','0914630145','Lâm Đồng','2021-11-14 07:00:00','123456789','2020-12-31 07:00:00','Giám đốc','/nhanvien'),(17,'Nguyễn Khang','nguyenkhang1531@gmail.com','0327403627','Mộ Đức,Quảng Ngãi','2021-11-14 07:00:00','212816619','2001-03-15 00:00:00','Giám đốc','/nhanvien');
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanviendangnhap`
--

DROP TABLE IF EXISTS `nhanviendangnhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanviendangnhap` (
  `REFRESHTOKEN` varchar(1000) NOT NULL,
  `MANHANVIEN` int(11) NOT NULL,
  `IP` varchar(45) DEFAULT NULL,
  `LOCATION` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`REFRESHTOKEN`),
  KEY `FK_NHANVIENDANGNHAP_NHANVIEN_idx` (`MANHANVIEN`),
  CONSTRAINT `FK_NHANVIENDANGNHAP_NHANVIEN` FOREIGN KEY (`MANHANVIEN`) REFERENCES `nhanvien` (`MANHANVIEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanviendangnhap`
--

LOCK TABLES `nhanviendangnhap` WRITE;
/*!40000 ALTER TABLE `nhanviendangnhap` DISABLE KEYS */;
INSERT INTO `nhanviendangnhap` VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTY0MDA3ODIzOSwiZXhwIjoxNjQwOTQyMjM5LCJpYXQiOjE2NDAwNzgyMzl9.3-y1Jpi8C3FAHNhMG4WrwXe83fXuLHcUzN_AXTKj1Co',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTY0MDA5MTExNSwiZXhwIjoxNjQwOTU1MTE1LCJpYXQiOjE2NDAwOTExMTV9.7idOFG77jEYmLEa97kDnjj9l8GhrpR4co8_QUWSjXnI',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTY0MDAwODU4OCwiZXhwIjoxNjQwODcyNTg4LCJpYXQiOjE2NDAwMDg1ODh9.Cxh-ackAJCxzuwv-tSbg2zlgerlFsML_CUd90a4xVRM',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTY0MDAxOTUzOCwiZXhwIjoxNjQwODgzNTM4LCJpYXQiOjE2NDAwMTk1Mzh9.4spZepnH5wwXdW9jA2eeFFBlsVeUP1E43hsBJGq4oB4',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTY0MDE4NzY1NCwiZXhwIjoxNjQxMDUxNjU0LCJpYXQiOjE2NDAxODc2NTR9.rC59O2r3uOZ5xslfLtGwpmZQmvOeHTcfmZJveiOIWqs',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTY0MDE4NzYwOSwiZXhwIjoxNjQxMDUxNjA5LCJpYXQiOjE2NDAxODc2MDl9.2najaXYAj9E3Qo6MEjgs6cMiSz734kPcM3tW4G_6_y4',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTY0MDE5OTE0MCwiZXhwIjoxNjQxMDYzMTQwLCJpYXQiOjE2NDAxOTkxNDB9.8HqN3Egc7g-VZRt0Szbv01yeEpuQi7E4WAFQIZshMzs',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTY0MDI0MjQxNCwiZXhwIjoxNjQxMTA2NDE0LCJpYXQiOjE2NDAyNDI0MTR9.NpZ_MUM56-Gx5Y4VFBKxY_WhpAITsA7KjmZrWcqL9WI',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTY0MDI0MTY3OCwiZXhwIjoxNjQxMTA1Njc4LCJpYXQiOjE2NDAyNDE2Nzh9.0mmYxgNvlc_iBX2nASE5tDY3vYVG9z0WfFptbXd37K8',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTY0MDI0Mzg0NCwiZXhwIjoxNjQxMTA3ODQ0LCJpYXQiOjE2NDAyNDM4NDR9.suORYgIX1nbengagDI4QbVWuZa7u9sHtMkrisYQQO8k',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTY0MDI0MzYxNCwiZXhwIjoxNjQxMTA3NjE0LCJpYXQiOjE2NDAyNDM2MTR9.40KpPpxmCKCxu48ItSKFPqW5hAhlqNDbJwiay_lN7Kg',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTY0MDIzNjEwOSwiZXhwIjoxNjQxMTAwMTA5LCJpYXQiOjE2NDAyMzYxMDl9.BapzfHNhXD3CfBj22uISxjpmMURrzt70ggmw9filq7g',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTY0MDIzODYzNywiZXhwIjoxNjQxMTAyNjM3LCJpYXQiOjE2NDAyMzg2Mzd9.2YVPzdNl3RLkym0KXgvPnSkIL8t1R2GFDemk5MMD-Dg',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTY0MDIzOTQ0MCwiZXhwIjoxNjQxMTAzNDQwLCJpYXQiOjE2NDAyMzk0NDB9.4yeMO1Q4ibM8gf4kkoV26TotpbH6sT4VWQ0bk_eSzsc',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTYzOTc0NzAzNywiZXhwIjoxNjQwNjExMDM3LCJpYXQiOjE2Mzk3NDcwMzd9.V3yvgY4vTZToaLW-GypVkUnD6AfZ8xfsPH3zRNjwXOY',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTYzOTc0NzE0MSwiZXhwIjoxNjQwNjExMTQxLCJpYXQiOjE2Mzk3NDcxNDF9.FqVjnZYXSjX7a8dvNN8DUNTzEh6yOmMmKlE2NeN2Bvc',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTYzOTc0OTAzOSwiZXhwIjoxNjQwNjEzMDM5LCJpYXQiOjE2Mzk3NDkwMzl9.V5M2ISad0gwPcts1JApHtwf6qAPS5t_SNB6B-qiBDwI',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTYzOTc0OTc3NSwiZXhwIjoxNjQwNjEzNzc1LCJpYXQiOjE2Mzk3NDk3NzV9.jKBWxsp_6AXu3VJ_PAz-MNf0AryD5dqaqoSsACZrj4I',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTYzOTc0OTIyMywiZXhwIjoxNjQwNjEzMjIzLCJpYXQiOjE2Mzk3NDkyMjN9.LfPLTdWa8ObqFW1_msWiwmRZn5R1mOQtMyqvhU1O_TM',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTYzOTk5OTAxOSwiZXhwIjoxNjQwODYzMDE5LCJpYXQiOjE2Mzk5OTkwMTl9.Kq68sMI5jJPN7UnykE_2HgLwS-Ojc1CFFt7fcOcTvOM',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTYzOTkwNzMyMywiZXhwIjoxNjQwNzcxMzIzLCJpYXQiOjE2Mzk5MDczMjN9._KKUQA1rr2GDvb87Mzqql23y-y2K8cfY49HkTQl3TPY',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTYzOTkxMzY3OSwiZXhwIjoxNjQwNzc3Njc5LCJpYXQiOjE2Mzk5MTM2Nzl9.81HazlvjxD-Lr-YcfYIDu_0bwPj8x2qQ3hBD0JM8-T8',1,NULL,NULL),('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjUiLCJyb2xlIjoiQURNSU5JU1RSQVRPUiIsIm5iZiI6MTY0MDI0MTA3NSwiZXhwIjoxNjQxMTA1MDc1LCJpYXQiOjE2NDAyNDEwNzV9.QRMq0q5lNf6IxZCuSPZHRM8dScvU4NHTh7F44zD3lRY',5,NULL,NULL);
/*!40000 ALTER TABLE `nhanviendangnhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieunhapsanpham`
--

DROP TABLE IF EXISTS `phieunhapsanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieunhapsanpham` (
  `MAPHIEUNHAP` int(11) NOT NULL AUTO_INCREMENT,
  `MASANPHAM` int(11) NOT NULL,
  `MANHACUNGCAP` int(11) NOT NULL,
  `SOLUONGNHAP` int(11) NOT NULL,
  `NGAYNHAP` datetime NOT NULL,
  `TIENNHAP` float NOT NULL,
  `GHICHU` text,
  PRIMARY KEY (`MAPHIEUNHAP`),
  KEY `FK_REFERENCE_2` (`MASANPHAM`),
  KEY `FK_REFERENCE_4` (`MANHACUNGCAP`),
  CONSTRAINT `FK_REFERENCE_2` FOREIGN KEY (`MASANPHAM`) REFERENCES `sanpham` (`MASANPHAM`),
  CONSTRAINT `FK_REFERENCE_4` FOREIGN KEY (`MANHACUNGCAP`) REFERENCES `nhacungcap` (`MANHACUNGCAP`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieunhapsanpham`
--

LOCK TABLES `phieunhapsanpham` WRITE;
/*!40000 ALTER TABLE `phieunhapsanpham` DISABLE KEYS */;
INSERT INTO `phieunhapsanpham` VALUES (3,1,1,200,'2021-11-19 17:56:41',1000000000,'11');
/*!40000 ALTER TABLE `phieunhapsanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanpham` (
  `MASANPHAM` int(11) NOT NULL AUTO_INCREMENT,
  `TENSANPHAM` varchar(100) NOT NULL,
  `MALOAI` int(11) NOT NULL,
  `MATHUONGHIEU` int(11) NOT NULL,
  `MOTA` longtext,
  `IMAGE` text,
  `THOIDIEMRAMAT` datetime DEFAULT NULL,
  `DONGIA` float DEFAULT NULL,
  `THOIGIANBAOHANH` int(11) DEFAULT NULL,
  PRIMARY KEY (`MASANPHAM`),
  KEY `FK_REFERENCE_1` (`MALOAI`),
  KEY `FK_REFERENCE_3` (`MATHUONGHIEU`),
  CONSTRAINT `FK_REFERENCE_1` FOREIGN KEY (`MALOAI`) REFERENCES `loaisanpham` (`MALOAI`),
  CONSTRAINT `FK_REFERENCE_3` FOREIGN KEY (`MATHUONGHIEU`) REFERENCES `thuonghieu` (`MATHUONGHIEU`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (1,'iPhone 13',1,1,'aasdasd','/mobile/Apple/iPhone/13','2021-09-14 07:00:00',30000000,1),(25,'Iphone 12',1,1,NULL,'/mobile/Apple/Iphone/12','2021-11-29 07:00:00',1000000,1),(26,'Iphone 11',1,1,NULL,'/mobile/Apple/Iphone/11','2021-11-29 07:00:00',1000000,1),(30,'Inspiron 7441',2,16,'1','/laptop/Dell/Inspiron/7441','2021-11-28 00:00:00',1000000,1),(31,'Galaxy S21',1,2,NULL,'/mobile/Samsung/Galaxy/S21','2021-12-02 07:00:00',22800000,1),(32,'Galaxy S20',1,2,NULL,'/mobile/Samsung/Galaxy/S20','2021-12-02 07:00:00',16000000,1),(37,'Galaxy ZFlip',1,2,NULL,'/mobile/Samsung/Galaxy/ZFlip','2021-12-02 07:00:00',23990000,1),(38,'Galaxy Note20',1,2,NULL,'/mobile/Samsung/Galaxy/Note20','2021-12-02 07:00:00',21500000,1),(40,'Reno 8',1,3,'null','/mobile/Oppo/Reno/8','2021-12-02 07:00:00',12312,1),(41,'Galaxy Note10',1,2,NULL,'/mobile/Samsung/Galaxy/Note10','2021-12-02 07:00:00',7799000,1),(42,'OPPO A95',1,3,'null','/mobile/Oppo/OPPO/A95','2021-12-01 00:00:00',6990000,1),(43,'Vivo V23e ',1,4,'null','/mobile/Vivo/Vivo/V23e ','2021-11-24 00:00:00',8490000,1),(44,'Xiaomi 11 Lite 5G NE',1,5,'null','/mobile/Xiaomi/Xiaomi/11 Lite 5G NE','2021-11-28 00:00:00',9400000,1),(45,'Xperia PRO-I',1,6,'null','/mobile/Sony/Xperia/PRO-I','2021-12-01 00:00:00',4099000,1),(46,'VSMART STAR 5',1,7,'null','/mobile/Vsmart/VSMART/STAR 5','2021-12-01 00:00:00',9999000,1),(47,'Nokia G10',1,8,'null','/mobile/NOKIA/Nokia/G10','2021-12-02 00:00:00',3490000,1),(48,'Realme 8 Pro',1,9,'null','/mobile/Realme/Realme/8 Pro','2021-12-02 00:00:00',8690000,1),(49,'Vivi Y20',1,4,'dasdad','/mobile/Vivo/Vivi/Y20','2021-12-19 07:00:00',123123,2),(50,'Asus ROG Zephyrus G14 Alan Walker GA401QEC R9',2,10,'null','/laptop/ASUS/Asus/ROG Zephyrus G14 Alan Walker GA401QEC R9','2021-11-30 00:00:00',44900000,2),(51,'Asus TUF Gaming FX516PM i7',2,10,'null','/laptop/ASUS/Asus/TUF Gaming FX516PM i7','2021-12-02 00:00:00',30890000,2),(52,'MacBook Pro 2018 13.3inch',2,1,'null','/laptop/Apple/MacBook/Pro 2018 13.3inch','2021-12-19 07:00:00',47790000,2),(53,'Acer Nitro 5 Gaming AN515 57 71VV i7',2,10,'null','/laptop/ASUS/Acer/Nitro 5 Gaming AN515 57 71VV i7','2021-12-02 00:00:00',27999000,2),(54,'OnePlus 5 ',1,11,'null','/mobile/Oneplus/OnePlus/5 ','2021-11-30 07:00:00',3590000,1),(55,'Dell Gaming G15 5515 R5',2,16,'null','/laptop/Dell/Dell/Gaming G15 5515 R5','2021-12-02 00:00:00',25900000,2),(56,'Dell Vostro 3400 i7',2,16,'null','/laptop/Dell/Dell/Vostro 3400 i7','2021-12-02 00:00:00',25900000,2),(57,'Apple MacBook Pro 16 M1 Max 2021',2,1,'null','/laptop/Apple/Apple/MacBook Pro 16 M1 Max 2021','2021-12-02 00:00:00',99000000,3),(58,'Laptop MacBook Pro 14 M1 Max 2021',2,1,'null','/laptop/Apple/Laptop/MacBook Pro 14 M1 Max 2021','2021-12-02 00:00:00',87900000,3);
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoankhachhang`
--

DROP TABLE IF EXISTS `taikhoankhachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoankhachhang` (
  `USERNAME` varchar(300) DEFAULT NULL,
  `PASSWORD` varchar(300) DEFAULT NULL,
  `MAKHACHHANG` int(11) NOT NULL,
  `KICHHOAT` tinyint(4) DEFAULT NULL,
  `GOOGLEID` varchar(300) DEFAULT NULL,
  `TOKENEMAIL` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`MAKHACHHANG`),
  CONSTRAINT `FK_REFERENCE_18` FOREIGN KEY (`MAKHACHHANG`) REFERENCES `khachhang` (`MAKHACHHANG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoankhachhang`
--

LOCK TABLES `taikhoankhachhang` WRITE;
/*!40000 ALTER TABLE `taikhoankhachhang` DISABLE KEYS */;
INSERT INTO `taikhoankhachhang` VALUES ('1','1',12,1,'115859594433831815967',NULL),('1','1',14,1,'102749760174999637826',NULL),(NULL,NULL,15,1,'110905994143310630185',NULL),(NULL,NULL,16,1,'104830390872239856529',NULL),(NULL,NULL,17,1,'110096396072922567361',NULL),('Huong','1',18,0,NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjE4IiwibmJmIjoxNjM5OTYxNzkxLCJleHAiOjE2NDAwNDgxOTEsImlhdCI6MTYzOTk2MTc5MX0.MuAN2OkepKs7Htb7t94aqXr6W6y0bTGG3mh6usBgOJc'),('ChauPha','Pha180801',20,0,NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjIwIiwibmJmIjoxNjQwMDEyMjI4LCJleHAiOjE2NDAwOTg2MjgsImlhdCI6MTY0MDAxMjIyOH0.zj828RM-Sd09aRNxfbTAxDMOHRSTFTuWS4qNNRyqoDM'),(NULL,NULL,21,1,'117682922316531729242',NULL),('2','2',29,1,NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjI5IiwibmJmIjoxNjQwMTg1NTMwLCJleHAiOjE2NDAyNzE5MzAsImlhdCI6MTY0MDE4NTUzMH0.B3tGdybHFbNRJtsooSUiHOUtU_RtFXt-qRxhdu9GRxY'),('123','1',30,1,NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjMwIiwibmJmIjoxNjQwMjQ0MDI4LCJleHAiOjE2NDAzMzA0MjgsImlhdCI6MTY0MDI0NDAyOH0.SnYuZBPzwQEU7aRhJe8VGcfK0BI5EU7kxSEtRwbXvIw');
/*!40000 ALTER TABLE `taikhoankhachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoannhanvien`
--

DROP TABLE IF EXISTS `taikhoannhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoannhanvien` (
  `USERNAME` varchar(300) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `MANHANVIEN` int(11) NOT NULL,
  PRIMARY KEY (`USERNAME`),
  KEY `FK_REFERENCE_9` (`MANHANVIEN`),
  CONSTRAINT `FK_REFERENCE_9` FOREIGN KEY (`MANHANVIEN`) REFERENCES `nhanvien` (`MANHANVIEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoannhanvien`
--

LOCK TABLES `taikhoannhanvien` WRITE;
/*!40000 ALTER TABLE `taikhoannhanvien` DISABLE KEYS */;
INSERT INTO `taikhoannhanvien` VALUES ('1','2',1),('10','10',10),('11','11',11),('12','12',12),('13','13',13),('14','14',14),('15','15',15),('4','4',4),('5','5',5),('6','6',6),('7','7',7),('8','8',8),('9','9',9);
/*!40000 ALTER TABLE `taikhoannhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongsokithuat`
--

DROP TABLE IF EXISTS `thongsokithuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thongsokithuat` (
  `MATHONGSO` int(11) NOT NULL AUTO_INCREMENT,
  `MASANPHAM` int(11) NOT NULL,
  `TEN` varchar(45) DEFAULT NULL,
  `NOIDUNG` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MATHONGSO`),
  KEY `FK_THONGSOKITHUAT_SANPHAM_idx` (`MASANPHAM`),
  CONSTRAINT `FK_THONGSOKITHUAT_SANPHAM` FOREIGN KEY (`MASANPHAM`) REFERENCES `sanpham` (`MASANPHAM`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongsokithuat`
--

LOCK TABLES `thongsokithuat` WRITE;
/*!40000 ALTER TABLE `thongsokithuat` DISABLE KEYS */;
INSERT INTO `thongsokithuat` VALUES (5,1,'1','1'),(6,1,'2','5'),(7,1,'chip','Apple A12 Bionic');
/*!40000 ALTER TABLE `thongsokithuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thuonghieu`
--

DROP TABLE IF EXISTS `thuonghieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thuonghieu` (
  `MATHUONGHIEU` int(11) NOT NULL AUTO_INCREMENT,
  `TENTHUONGHIEU` varchar(30) NOT NULL,
  `XUATXU` varchar(30) DEFAULT NULL,
  `IMAGE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MATHUONGHIEU`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thuonghieu`
--

LOCK TABLES `thuonghieu` WRITE;
/*!40000 ALTER TABLE `thuonghieu` DISABLE KEYS */;
INSERT INTO `thuonghieu` VALUES (1,'Apple','Mỹ','/thuonghieu'),(2,'Samsung','Hàn quốc','/thuonghieu'),(3,'Oppo','Trung quốc','/thuonghieu'),(4,'Vivo','Trung quốc','/thuonghieu'),(5,'Xiaomi','Trung quốc','/thuonghieu'),(6,'Sony','Nhật bản','/thuonghieu'),(7,'Vsmart','Việt nam','/thuonghieu'),(8,'NOKIA','Trung quốc','/thuonghieu'),(9,'Realme','Trung quốc','/thuonghieu'),(10,'ASUS','Đài loan','/thuonghieu'),(11,'Oneplus','Trung quốc','/thuonghieu'),(16,'Dell','Myx','/thuonghieu');
/*!40000 ALTER TABLE `thuonghieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vanchuyen`
--

DROP TABLE IF EXISTS `vanchuyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vanchuyen` (
  `MAVANCHUYEN` int(11) NOT NULL AUTO_INCREMENT,
  `SOHOADON` int(11) NOT NULL,
  `TRANGTHAI` text NOT NULL,
  PRIMARY KEY (`MAVANCHUYEN`),
  KEY `FK_REFERENCE_10` (`SOHOADON`),
  CONSTRAINT `FK_REFERENCE_10` FOREIGN KEY (`SOHOADON`) REFERENCES `hoadon` (`SOHOADON`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vanchuyen`
--

LOCK TABLES `vanchuyen` WRITE;
/*!40000 ALTER TABLE `vanchuyen` DISABLE KEYS */;
INSERT INTO `vanchuyen` VALUES (12,79,'Đã huỷ'),(13,81,'Đã huỷ'),(15,88,'Đang giao'),(16,98,'Đang giao'),(17,101,'Đã huỷ'),(18,103,'Đang giao'),(19,104,'Đang giao');
/*!40000 ALTER TABLE `vanchuyen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-23 14:58:22
