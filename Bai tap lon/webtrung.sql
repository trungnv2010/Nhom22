

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webtrung`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `phoneNumber`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Vũ Trung', 'nguyenvutrung2010@gmail.com', '1234567890', '0984573953', '95615958_2675733989417894_8290010514549899264_n.jpg', '2021-04-08', '2021-05-21');


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `author` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `category` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateModified` date NOT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `name`, `price`, `description`, `author`, `category`, `amount`, `image`, `dateModified`, `updated_at`) VALUES
(1, 'Thiên sơn mộ tuyết', 50000, 'Đổng Tuyết là một cô gái mồ côi cả cha lẫn mẹ, sống cùng cậu mợ của mình. Cuộc sống \"ở nhờ\" đó đối với cô giống như địa ngục, hàng ngày nhìn đứa con của cậu mợ được bao bọc trong tình yêu thương của cha mẹ, cô không khỏi cảm thấy chạnh lòng. Tuổi ấu thơ vốn chẳng có niềm vui, nhưng may mắn thay, những năm tháng cấp ba, cô đã yêu được một chàng trai tốt.\r\n\r\nTiêu Sơn học cùng cô, hai người đã có quãng thời gian bên nhau thật đẹp, nhưng chỉ vì một sự hiểu lầm mà họ chia tay. Cô lên thành phố học đại học, nhưng số phận lại đưa đẩy cô vào tay một người đàn ông mà cô luôn coi là tên quỷ dữ. Mạc Thiệu Khiêm đã có vợ, cô luôn nghĩ cô sống với anh ta như một \"gái bao\", không hơn không kém, chỉ mong một ngày anh ta chán cô và đá cô ra khỏi nhà. Nhưng chờ mãi, ngày ấy chẳng đến. Mọi chuyện vỡ lở, cô bị bạn bè khinh rẻ, đúng lúc ấy cô gặp lại Tiêu Sơn, họ muốn quay lại với nhau, nhưng cô luôn tự ti về thân phận của mình. Cả anh và cô đều có nỗi đau riêng, có những mối quan tâm riêng, họ chưa thể quay về với nhau. Nhưng cô không hề biết Mạc Thiệu Khiêm - cái người mà cô luôn coi là tên quỷ dữ ấy cũng có nỗi đau khổ riêng. Anh ta yêu cô, yêu cô hơn chính bản thân mình, anh ta chỉ ngủ với một mình cô, thậm chí anh ta còn chưa đụng tới người của cô vợ anh ta lấy một lần.\r\n\r\nSau đó, hàng loạt những bí mật, những dồn nén, những đau khổ được phơi bày. Đến cuối cùng, cô mới hiểu đươc \"con quỷ dữ\" ấy đã in sâu trong trái tim cô như thế nào. Và sau những nước mắt, họ có đến được với nhau?\r\n\r\nPhỉ Ngã Tư Tồn đã lấy tựa đề truyện là \"Thiên sơn mộ tuyết\" có ngụ ý lồng ghép tên các nhân vật có sự liên quan đến nhau. Ngụ ý của tác giả muốn nói đến mối quan hệ phức tạp và chiếm nhiều nước mắt của cả bốn nhân vật này, một quan hệ \"vạn mối tơ vò\", thật mà giả, giả mà thật, yêu và hận đan xen chồng chất. Xuất xứ của câu\"Thiên sơn mộ tuyết\" là trích trong bài \"Gò nhạn\" của Nguyên Hiếu Vấn.', 'Phi ngã tư tồn', 'Tiểu thuyết', 50, 'img-9.jpg', '2021-04-12', NULL),
(2, 'Thuyết tương đối hẹp và rộng', 120000, 'Thuyết tương đối rộng hay thuyết tương đối tổng quát là lý thuyết hình học của lực hấp dẫn do nhà vật lý Albert Einstein công bố vào năm 1916[2] và hiện tại được coi là lý thuyết miêu tả hấp dẫn thành công của vật lý hiện đại. Thuyết tương đối tổng quát thống nhất thuyết tương đối hẹp và định luật vạn vật hấp dẫn của Newton, đồng thời nó miêu tả lực hấp dẫn (trường hấp dẫn) như là một tính chất hình học của không gian và thời gian, hoặc không thời gian. Đặc biệt, độ cong của không thời gian có liên hệ chặt chẽ trực tiếp với năng lượng và động lượng của vật chất và bức xạ. Liên hệ này được xác định bằng phương trình trường Einstein, một hệ phương trình đạo hàm riêng phi tuyến.', 'Albert Einstein', 'Khoa học', 20, 'img-2.jpg', '2021-04-08', NULL),
(3, 'Lược sử thời gian', 150000, 'Lược sử thời gian (tiếng Anh: A Brief History of Time) là một cuốn sách khoa học phổ thông được viết bởi Stephen W. Hawking và được xuất bản lần đầu tiên bởi Nhóm Xuất bản Bantam Dell vào năm 1988. Nó trở thành một cuốn sách bán chạy nhất với hơn 9 triệu bản được bán trên toàn thế giới[cần dẫn nguồn]. Ngoài ra, nó cũng đã nằm trong bản kê best-seller của tờ London Sunday Times trong suốt bốn năm liền \r\n\r\nCũng có một phim tài liệu cùng tên, được đạo diễn bởi Errol Morris và phát hành trong năm 1991. Nhưng không giống như cuốn sách, phim tài liệu này nói chủ yếu về cuộc đời của Stephen Hawking.', 'Stephen Hawking', 'Khoa học', 30, 'img-3.jpg', '2021-04-10', NULL),
(4, 'Tháng năm qua', 80000, 'Câu chuyện kể về tình yêu giữa tôi và người con trai tôi yêu. Là người đã cùng tôi đi qua những năm tháng thanh xuân tao nhã khi xưa.\r\n\r\nQuý Khâm Dương – công, Tạ Mạnh – thụ, mỹ công soái thụ là hai nhân vật chính.\r\n\r\nBiên tập đánh giá\r\n\r\nVốn là học sinh xuất sắc, song vì thi không đủ điểm mà Tạ Mạnh đến học ở Trung học W. Tại đây cậu gặp gỡ Quý Khâm Dương – một người có tính cách hoàn toàn đối lập mình. Trong những năm tháng thanh xuân dào dạt tại Trung học, hai thiếu niên dần nảy sinh tình cảm, cùng nhau thi lên Đại học. Trải qua thanh xuân, qua những mơ mộng cùng trui rèn trong cuộc sống, tình cảm hai người càng lúc càng sâu sắc, để sau cùng trở về quê cũ, cả hai lại cùng nắm tay làm bạn đời, ôn chuyện những tháng năm qua.\r\n\r\nTác giả dùng bút pháp dịu dàng, kể lại mượt mà những năm tháng xanh tươi ấy, từng chút triển khai tỉ mỉ, khắc hoạ sâu sắc hình tượng hai thiếu niên tới lúc trưởng thành, thanh xuân tuỳ ý bung nở. Kết hợp với phong thổ nhiều nơi, cùng sự khác biệt giữa cuộc sống đời thường và hiện thực, câu chuyện xoay quanh tình bạn, tình thân cũng như tình yêu của hai nhân vật chính, khiến độc giả tựa như đi qua tháng năm, đi qua liên tiếp quá khứ và tương lai. Câu chuyện về quãng thời gian trôi qua như nước, như hoa mĩ quyến, về tuổi trẻ như mộng, vừa tốt đẹp, cũng rất đỗi dịu dàng.', 'Tĩnh Thùy Biên', 'Tiểu thuyết', 25, 'img-6.jpg', '2021-04-08', NULL),
(5, 'Các thế giới song song', 10000, 'Một chuyến du hành đầy trí tuệ qua các vũ trụ, được dẫn dắt tài tình bởi \"thuyền trưởng\" Michio Kaku và độc giả có dịp chiêm ngưỡng vẻ đẹp kỳ vĩ của vũ trụ kể từ vụ nổ lớn, vượt qua những hố đen, lỗ sâu, bước vào các thế giới lượng tử từ muôn màu kỳ lạ nằm ngay trước mũi chúng ta, vốn dĩ tồn tại song song trên một màng bên ngoài không - thời gian bốn chiều, ngắm nhìn thực tại vật chất quen thuộc hoà quyện với thế giới của những điều kỳ diệu như năng lượng và vật chất tối, sự nảy chồi của các vũ trụ, những chiều không gian bí ẩn và sự biến ảo của các dây rung siêu nhỏ...\r\n\r\nDẫn chuyện lôi cuốn, kết hợp tường minh, sống động một lượng thông tin đồ sộ để khai mở những giới hạn tột cùng của trí  tưởng tượng, Kaku thực sự xứng đáng là \" nhà truyền giáo\" vĩ đại đã mang thế giới vật lý lý thuyết tới quảng đại quần chúng.', 'Michio Kaku', 'Khoa học', 50, 'img-1.jpg', '2021-04-09', NULL),
(6, 'Cuộc chiến lỗ đen', 100000, 'Cuộc chiến lỗ đen là sự ca tụng trí tuệ loài người và khả năng tuyệt vời của nó trong việc khám phá các định luật của tự nhiên. Đó là sự lý giải về một thế giới ở quá xa các giác quan của chúng ta, còn xa hơn cả Cơ học lượng tử và Thuyết tương đối. Hấp dẫn lượng tử xem xét các đối tượng nhỏ hơn hàng trăm tỉ tỉ lần so với một prôton. Chúng ta chưa bao giờ từng trực tiếp tiếp xúc với những vật nhỏ đến như vậy và có thể sẽ không bao giờ, nhưng sự khéo léo của loài người sẽ cho phép chúng ta suy luận ra sự tồn tại của chúng, và thật đáng kinh ngạc, cổng vào thế giới đó lại chính là những vật thể với kích thước và khối lượng cực lớn: các lỗ đen.\r\n\r\nCuộc chiến lỗ đen cũng là một cuốn biên niên sử về một khám phá. Nguyên lý toàn ảnh là một trong những khái niệm trừu tượng và phi trực giác nhất trong toàn bộ vật lý học. Đó là sự tích tụ của hơn hai thập kỷ đấu trí về số phận của thông tin khi bị rơi vào một lỗ đen. Đó không phải là một cuộc chiến tranh giữa các đối thủ hung hãn, mà thực sự ở đây tất cả những người tham chiến chủ yếu đều là bạn bè. Song đó là một cuộc chiến ác liệt về những ý tưởng giữa những người tôn trọng nhau một cách rất sâu sắc nhưng cũng bất đồng với nhau không kém phần sâu sắc.', 'Leonard Susskind', 'Khoa học', 40, 'img-5.jpg', '2021-04-23', NULL),
(7, 'Doraemon', 50000, 'Doraemon là nhân vật chính hư cấu trong loạt manga cùng tên của họa sĩ Fujiko F. Fujio. Trong truyện lấy bối cảnh ở thế kỷ 20, Doraemon là chú mèo robot của tương lai do xưởng Matsushiba — công xưởng chuyên sản xuất robot vốn dĩ nhằm mục đích chăm sóc trẻ nhỏ.', 'Fujiko F Fujio', 'Truyện tranh', 50, 'img-14.jpg', '2021-04-23', NULL),
(8, 'Perfect', 125000, 'Đây là cuốn sách', 'Rachel Joyce', 'Khoa học', 100, 'img-8.jpg', '2021-05-05', NULL),
(9, 'Bên nhau trọn đời', 100000, 'Truyện Bên Nhau Trọn Đời là một trong những tiểu thuyết đầu tiên của tác giả Cố Mạn. Truyện tuy đã lâu nhưng vẫn để lại cho người đọc những ấn tượng riêng, đọc truyện ta sẽ không bị nhàm chán.\r\n\r\nTruyện xoay quanh những vấn đề tình yêu, với lối viết truyện cuốn hút, hấp dẫn người đọc nên truyện dễ dàng đi vào lòng người.\r\n\r\nĐể tưởng nhớ một thời đam mê thể loại ngôn tình, và cũng là tác phẩm đầu tiên làm tôi đam mê thể loại ngôn tình.', 'Cố Mạn', 'Tiểu thuyết', 100, 'img-12.jpg', '2021-04-16', NULL),
(10, 'Gintama', 75000, 'Gintama (銀魂ぎんたま (Ngân Hồn)? \"Linh Hồn Bạc\"), là một bộ manga do tác giả Sorachi Hideaki sáng tác và minh họa. Từ ngày 8 tháng 12 năm 2003, loạt truyện được đăng dài kì trên tạp chí Weekly Shōnen Jump của nhà xuất bản Shueisha. Bối cảnh Gintama là phiên bản hư cấu của kinh thành Edo thế kỷ 19, khi Trái Đất bị các giống người ngoài hành tinh gọi chung là Amanto xâm lược. Câu chuyện xoay quanh cuộc sống thường ngày của samurai hành nghề tự do Sakata Gintoki cùng hai đàn em Shimura Shinpachi và Kagura. Ý tưởng đưa các yếu tố khoa học viễn tưởng vào manga được tác giả Sorachi nghĩ ra sau khi biên tập viên tạp chí gợi ý ông vẽ một bộ manga lịch sử.', 'Hidaeki Sorachi', 'Truyện tranh', 100, 'img-7.jpg', '2021-04-20', NULL),
(11, 'Ái tình nơi đầu lưỡi', 70000, 'Đây là cuốn sách', 'Jo Kyung Ran', 'Tiểu thuyết', 100, 'img-10.jpg', '2021-04-13', NULL),
(12, 'Truyện cổ Andersen', 45000, 'Đây là cuốn sách', 'NXB. Kim Đồng', 'Truyện tranh', 70, 'img-11.jpg', '2021-04-13', NULL),
(13, 'Hồ sơ mật', 70000, 'Đây là cuốn sáchReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko ShimizuReiko Shimizu', 'Reiko Shimizu', 'Truyện tranh', 50, 'img-13.jpg', '2021-04-13', NULL),
(14, 'Cổ tích Việt Nam', 70000, 'Đây là cuốn sách', 'NXB. Kim Đồng', 'Truyện tranh', 50, 'img-15.jpg', '2021-04-13', NULL),
(15, 'Vũ trụ từ hư không', 50000, 'Tác giả bán chạy nhất và nhà vật lý nổi tiếng Lawrence Krauss đưa ra một quan điểm khác biệt về cách mọi thứ tồn tại: \"Vũ trụ đến từ đâu? Cái gì ở đó trước đó? Tương lai sẽ mang đến điều gì? Và cuối cùng, tại sao tồn tại một cái gì đó thay vì không có gì?\"\r\nTác giả bán chạy nhất và nhà vật lý nổi tiếng Lawrence Krauss đưa ra một quan điểm khác biệt về cách mọi thứ tồn tại: \"Vũ trụ đến từ đâu? Cái gì ở đó trước đó? Tương lai sẽ mang đến điều gì? Và cuối cùng, tại sao tồn tại một cái gì đó thay vì không có gì?\"\r\nTác giả bán chạy nhất và nhà vật lý nổi tiếng Lawrence Krauss đưa ra một quan điểm khác biệt về cách mọi thứ tồn tại: \"Vũ trụ đến từ đâu? Cái gì ở đó trước đó? Tương lai sẽ mang đến điều gì? Và cuối cùng, tại sao tồn tại một cái gì đó thay vì không có gì?\"', 'Lawrence M.Krauss', 'Khoa học', 100, 'img-4.jpg', '2021-04-09', NULL),
(16, 'Ma đạo tổ sư', 100000, 'Đời trước, thanh danh của Ngụy Vô Tiện vô cùng thối nát, bị người đời phỉ báng.\r\n\r\nBị người thân nhất - sư đệ của chính mình dẫn người đến giết chết.\r\n\r\nTung hoành một đời không ngờ Ngụy Vô Tiện lại chết không toàn thây.\r\n\r\nKhông ngờ kẻ từng là ma đạo tổ sư, khiến cho giang hồ dậy sóng, lúc chết đi sống lại, lại biến thành một kẻ...não tàn....\r\n\r\nKhông những thế lại là một kẻ đoạn tụ.\r\n\r\nTa thấy chư quân bệnh dữ lắm, liệu rằng chư quân có giống như ta?\r\n\r\nNếu đã là não tàn thì ta sẽ trở thành một tên não tàn chuyên nghiệp. Đi theo con đường tu quỷ chứ không tu tiên.\r\n\r\nMặc ngươi cưỡi thiên quan vạn mã, ác bá thập phương, kỳ hiệp Cửu Châu, Cao lĩnh chi hoa.\r\n\r\nMột khi ngươi đã hóa thành nắm cát vàng thì mặc sức bị ta sai xử!', 'Mặc Hương Đồng Khứu', 'Tiểu Thuyết', 100, 'ma-dao-to-su-bia.jpg', '2021-05-11', NULL),
(17, 'Justice League of America', 100000, 'Để đối đầu với những mối nguy hại sắp diễn ra, Batman tiến hành thành lập một nhóm những người có khả năng dưới danh nghĩa Justice League of American.\r\nBao gồm:\r\nAtom/Ryan Choi: Cậu bé sinh viên F.A năm tư thừa hưởng trí thông minh kiệt xuất với chiếc đai điều chỉnh kích thước từ Atom.\r\nThe Ray/Ray Terrill: Thanh niên nổi loạn với khả năng hấp thụ và chuyển hóa năng lượng từ ánh sáng.\r\nBlack Canary/Dinah Laurel Lance: Sát thủ, quái hiệp nóng tính.\r\nLobo: Gã người ngoài tinh bốc đồng, kẻ đánh thuê với khả năng trị thương thần tốc.\r\nVixen/Mari Mccabe: Một người nổi tiếng và cũng là Vixen với khả năng kết nối với muôn thú cùng sức mạnh của chúng.\r\nKiller Frost: Sát thủ lạnh lẽo không thể khống chế cơn đói nhiệt của mình.\r\nLiệu Đấng, à không Batman sẽ dẫn dắt một nhóm không-giống-ai như thế này ra sao? Xin mời theo dõi!', 'DC Comics', 'Tiểu thuyết', 100, '2-1510216416363.jpg', '2021-05-13', '2021-04-21'),
(18, 'DR.Doom', 100000, 'Doctor Doom #1 might be the best way to look at the character in a long time. Unlike the Infamous Iron Man, where Doom was trying to be Iron Man. Here he can be himself. Doctor Doom #1 is a must-read for fans of not only the good doctor but anyone who is looking for an engaging storytelling comics provides.', 'DC Comics', 'Truyện tranh', 99, '5f3e891a7369a8c9d32f5963fe05a20c.jpg', '2021-05-13', '2021-04-21'),
(19, 'DR. Manhattan', 100000, 'Vốn là Jon Osterman, một nhà khoa học vô tình sở hữu siêu năng lực tựa Chúa Trời sau khi cơ thể bị phân rã trong cỗ máy khử trường riêng, Dr. Manhattan là một trong những nhân vật được fan yêu thích nhất trong tác phẩm kinh điển Watchmen. Tầm quan trọng của nhân vật này lại càng được nâng cao khi DC hé lộ ông chính là kẻ đã thay đổi thực tại vũ trụ DC bằng cách lấy đi 10 năm, dẫn đến những sự thay đổi lớn của vũ trụ này.', 'DC Comics', 'Truyện tranh', 100, '6a2f81983096f22029a113d7c5af93b8.jpg', '2021-05-13', NULL),
(20, 'Buông tay ra là ăn đấm đấy', 100000, 'Rảnh đời nên viết nội dung chơi.... 12 chòm sao vào kì nghỉ hè... 31 ngày vui đùa, tình cảm chớm nở Liệu rằng mọi thứ có giống như trong mơ??!!!', 'Sanako Jin', 'Tiểu thuyết', 100, '8dc9face62a31a2313e2418335db6c3e--wattpad-banners.jpg', '2021-05-13', NULL),
(21, 'Little Leonardos Fascinating World of Science', 100000, 'Thế giới khoa học hấp dẫn của Leonardo bé nhỏ giới thiệu cho trẻ em về các lĩnh vực khoa học rộng lớn và đa dạng và các loại nhà khoa học khác nhau mà chúng có thể khao khát trở thành. Cho dù đó là xương khủng long cổ đại được khai quật bởi các nhà cổ sinh vật học, nhà nhân chủng học nghiên cứu các nền văn hóa khác nhau trên toàn cầu hay các hành tinh mới được các nhà thiên văn học phát hiện, chắc chắn sẽ có một đứa trẻ ở đây sẽ thấy hấp dẫn và lôi cuốn.', 'Greg Paprocki ', 'Khoa học', 100, '71z4dw+D93L.jpg', '2021-05-13', NULL),
(22, 'Miền đất hứa', 100000, 'Tại Grace Field House, cuộc sống không thể tốt hơn cho trẻ mồ côi! Mặc dù họ không có cha mẹ, cùng với những đứa trẻ khác và một Mama tốt bụng chăm sóc chúng, chúng tạo thành một gia đình lớn, hạnh phúc. Không có đứa trẻ nào bị bỏ qua, đặc biệt là khi chúng được nhận nuôi ở tuổi 12. Cuộc sống hàng ngày của chúng liên quan đến các bài kiểm tra nghiêm ngặt, nhưng sau đó, chúng được phép chơi bên ngoài.', ' Shirai Kaiu', 'Truyện tranh', 100, '1641_22_10_19_mien-dat-hua-the-promised-neverland-tap-2-phien-ban-bia-den-black-ver-tang-kem-1-postcard-nhua-in-mau-hinh-anh-ban-quyen-chi-xuat-hien-trong-tuan-san-shounen-jump.jpg', '2021-05-13', NULL),
(23, 'Cậu ấy thích tôi thật sao', 100000, 'Cậu ấy thích tôi thật sao', 'Watpad', 'Tiểu thuyết', 100, '00917171be027d3c96b8e46c52cf81d7--wattpad.jpg', '2021-05-13', NULL),
(24, 'How science works chemistry', 100000, 'This is one title in a series of three books called How Science Works. The activities have been written for middle to senior secondary school students. Other titles available are How Science Works - Biology and How Science Works - Physics. The photocopiable worksheets in How Science Works - Chemistry explore key areas of study such as:\r\n\r\n Each title in the series includes a CD-ROM containing an editable word version of the book.', 'Andrew Grevatt and Dr Deborah Shah-Smith\r\n', 'Khoa học', 100, '9781921403750-2.jpg', '2021-05-13', NULL),
(25, 'Tiểu hòa thượng', 100000, 'Ma Vương bị chôn vùi 500 năm đã thức tỉnh, phá vỡ kết giới giam cầm, nhất quyết muốn tìm ăn thịt Tiểu hòa thượng Nhất Viên để được trường sinh bất lão, tăng thêm nghìn năm công lực. Đứng trước muôn trùng yêu quái, để có thể bảo toàn tính mạng, Nhất Viên chỉ có một con đường là tìm ra Thập Nhị Thánh Thú..', 'LaiYouXian', 'Truyện tranh', 100, 'aa60a6098f5d8fef1c38a35bf6385395.jpg', '2021-05-13', NULL),
(26, 'a textbook of social sciences', 100000, 'a textbook of social sciences', 'sciences', 'Khoa học', 100, 'a-textbook-of-social-sciences-5-500x500.jpg', '2021-05-13', NULL),
(27, 'Đông cung', 100000, 'Truyện kể về nàng công chúa Tây Lương hồn nhiên, trong sáng vô tình sa vào lưới tình của chàng trai Trung Nguyên Cố Tiểu Ngũ. Nào ngờ Cố Tiểu Ngũ chính là thái tử Trung Nguyên Lý Thừa Ngân. Người hại nàng nước mất nhà tan, phải nhảy sông Quên tự vẫn. Nào ngờ năm ấy, hắn ta cũng nhảy theo nàng, cả hai cùng quên đi quá khứ. Rồi một lần nữa nàng lấy hắn và yêu hắn lần nữa. Còn hắn yêu nàng hay yêu quyền vị hơn? Hắn lợi dụng này, giày vò này.', 'Phỉ Ngã Tư Tồn', 'Tiểu thuyết', 100, 'bia-dong-cung-e1583950557439.jpg', '2021-05-13', NULL),
(28, 'Challengers of the unknowm', 100000, 'Sống lại những cuộc phiêu lưu kinh điển trong Thời đại Bạc của Người thách thức của Jack Kirby - một đội được kết hợp bởi định mệnh dành riêng cho một cuộc đời phiêu lưu bừa bãi dưới danh nghĩa tốt đẹp!', 'Jack Kirby', 'Truyện tranh', 100, 'comic-Challengers-of-the-Unknown.jpg', '2021-05-13', NULL),
(29, 'Mười chín ngày', 100000, 'Ngày 13 tháng 7 năm 20XX…\r\n\r\nHứa Duy quay về Phong Châu sau 11 năm bặt vô âm tín. Cảm giác thế nào không thể nói rõ. Nơi đây cho dù không phải là quê nhà của cô, nhưng những ký ức đẹp nhất của thanh xuân đều ở chốn này. Cô đã gặp những người bạn tốt nhất, trải qua những ngày tháng vui vẻ nhất, cùng với người con trai duy nhất mà cô thích, Chung Hằng.\r\n\r\nMọi thứ dường như chẳng hề thay đổi. Vẫn là những hàng quán ven đường mà lúc trước cô và nhóm bạn thường đi ăn sau buổi học, vẫn là những con đường cô đã từng đi qua bao mùa mưa nắng. Còn có, con ngõ nhỏ cô đã từng ở cùng với bà, nơi luôn có một bóng hình thẳng tắp kiêu ngạo đang đợi cô. Nhưng mà Chung Hằng, anh có còn đang đợi em không?\r\n\r\nHứa Duy không dám hy vọng quá nhiều. Dù cho trước kia cô vì sự cố bất đắc dĩ mới phải xa anh, nhưng sự thật vẫn là anh đã nhận được lời nói chia tay cùng với khoảng thời gian cô hoàn toàn biến mất. Hứa Duy chưa kịp hình dung mình sẽ phải đối mặt với anh như thế nào, cứ thế mà đã gặp lại anh rồi. Một Chung Hằng hai mươi tám tuổi, vẫn đẹp trai xuất chúng như vậy, vẫn kiêu ngạo một cách đáng yêu như vậy, liệu có còn thích cô như vậy nữa không?', 'Quân ước', 'Tiểu thuyết', 100, 'd39e4ffe2079e9a95c5811ef67035694.jpg', '2021-05-13', NULL),
(30, 'Nguyện hi sinh tất cả để bên chàng', 100000, 'Tôi càng lớn lại càng cảm thấy cuộc sống trở nên khỏ khăn hơn. Tới độ tuổi này rồi tôi mãi vẫn còn cô đơn chiếc bóng. Không phải tôi không tìm được người yêu nhưng không hiểu sao những người đàn ông từng thân cận với tôi đều gặp phải chuyện không may.', 'Nhan Uyển Huyên', 'Tiểu thuyết', 100, 'dcebb84fa167aea73883422258ef78e2-copy.jpg', '2021-05-13', NULL),
(31, 'Cửa hàng bách hóa vương tử', 100000, 'Cửa hàng bách hóa đặt hàng Bạch Mã Vương Tử theo yêu cầu, còn chuyện gì hoang đường hơn chuyện này nữa không?\r\n\r\nQuan An Tĩnh chỉ vô tình đi dạo phố, lại bất ngờ nhận được cơ hội dùng thử miễn phí một lần.\r\n\r\nNgười máy Vương tử được giao tới cửa, vẻ đẹp nghiêng nước nghiêng thành.\r\n\r\nChuyện nhà chuyện nước hắn am tường. Nấu cơm rửa chén hay chuyện trò tâm sự, hắn đều hiểu biết.\r\n\r\nVốn cứ nghĩ chỉ được thử đồ lạ một lần, không ngờ tim mình lại nhảy lên thình thịch, dần dần rơi vào tay giặc.\r\n\r\nHết hạn bảy ngày, tình yêu mới nảy mầm giữa họ sẽ đi về nơi nao...?', 'Rosesmine2612', 'Tiểu thuyết', 100, 'hiu4a.png', '2021-05-13', NULL),
(32, 'Hoa hồng giấy', 100000, 'Tại sao cô ấy có thể bình tâm đến như thế? Tạo sao cô ấy có thể biểu hiện tốt đến như thế? Rõ ràng là yêu thì sẽ buồn, sẽ đau, sẽ ghen, sẽ mất hết lý trí khi nghe người ta nói chồng mình yêu người ta chứ ko yêu mình, vậy mà những câu trả lời, cách đối đáp và thái độ bình thản của Bạch Nhạn khiến mình thấy ngỡ ngàng và khâm phục. Đâu phải trái tim cô ấy bị chai sạn vì tuổi thơ khắc nghiệt?! Đâu phải cô không yêu Khang Kiếm?!\r\n\r\nPhải chăng chính tuổi thơ khắc nghiệt ấy đã khiến cô trân trọng mái ấm hơn ai hết, bình thản hơn ai hết trước những sóng gió. Phải chăng vì đã quen với việc phải chịu đựng những cay đắng người đời mang lại cho mình từ nhỏ, đã giúp cô có một nội lực phi thường. Bản năng sống của cô tốt hơn những người phụ nữ quen với nhung lụa, ấm êm khác?! Quả là cái cây lớn lên trong gió bão sẽ cứng cáp và có sức sống mãnh liệt hơn!\r\n\r\nCách cô giao tiếp với chồng, cách cô nhìn nhận chồng, cách cô giữ khoảng cách với chồng khi cần thiết…tất cả, tất cả đều rất tự nhiên và linh động, nhưng vẫn khiến người đọc cảm nhận giống như một loại nghệ thuật – nghệ thuật làm vợ. Ồ, cứ tưởng làm vợ là một việc rất tự nhiên, hóa ra để làm được tốt lại cần đến nhiều kỹ năng đến thế! Làm sao để chồng luôn thương yêu, luôn khát khao, biết ơn và nâng niu, nể trọng – tất cả đều phải học!\r\n\r\nCó lẽ vậy, nên người trân trọng cô không chỉ có Khang Kiếm…', 'Lâm Địch Nhi', 'Tiểu thuyết', 100, 'hoa-hong-giay.jpg', '2021-05-13', NULL),
(33, 'The blind watchmaker', 100000, 'Nhà chế tạo đồng hồ mù: Tại sao bằng chứng tiến hóa tiết lộ một vũ trụ không có thiết kế là cuốn sách năm 1986 của Richard Dawkins, trong đó tác giả trình bày một lời giải thích và lập luận cho lý thuyết tiến hóa bằng phương pháp chọn lọc tự nhiên. ', 'Richard Drawkins', 'Khoa học', 100, 'images.jpg', '2021-05-13', NULL),
(34, 'John Wick', 100000, 'Được chuyển thể từ tựa phim cùng tên, bộ truyện là bản trần thuật lại quá trình của John Wick trên con đường tiến đến nhận vị trí danh xưng Baba Yaga, đồng thời xen kẽ những khoảnh khắc khốc liệt thời niên thiếu của John.', 'Derek Kolstad', 'Truyện tranh', 100, 'John-Wick-Vol.-1.jpg', '2021-05-13', NULL),
(35, 'Không gia đình', 100000, 'Không gia đình (tiếng Pháp: Sans famille), còn được dịch là Vô gia đình, có thể được xem là tiểu thuyết nổi tiếng nhất của văn hào Pháp Hector Malot, được xuất bản năm 1878. Tác phẩm đã được giải thưởng của Viện Hàn lâm Văn học Pháp. Nhiều nước trên thế giới đã dịch lại tác phẩm và xuất bản nhiều lần. Từ một trăm năm nay, Không gia đình đã trở thành quen thuộc đối với thiếu nhi Pháp và thế giới.\r\n', 'Hector Malot', 'Tiểu thuyết', 100, 'khong-gia-dinh.jpg', '2021-05-13', NULL),
(36, 'Đường hoàng tuyền Bỉ ngạn hoa khai', 100000, 'Bỉ Ngạn hoa, sự dịu dàng của ác ma!\r\nLiệu có ai thích loài hoa này?', 'Hoàng Hà', 'Tiểu thuyết', 100, 'maxresdefault.jpg', '2021-05-13', NULL),
(37, 'Năm tháng vội vã', 100000, 'Cuốn tiểu thuyết này của Cửu Dạ Hồi đã tái hiện hết sức chân thật giai đoạn nông nổi, bồng bột của tuổi trẻ. Đúng thật sự rằng, chúng ta đều sẽ bắt gặp hình bóng bản thân mình trong đó, như được sống lại những tháng ngày vô ưu xưa cũ.\r\n\r\nMấy ai mà không xúc động trước những đẹp đẽ xôi xa ?…\r\n\r\nEm nhớ mãi trận thi đấu bóng rổ ấy, khi Triệu Diệp bị thương ở cánh tay, Trần Tầm đã quyết định thi đấu thay cậu.\r\nEm nhớ mãi cái lúc Trần Tầm bị sốt nhưng vẫn cố gắng hết mình trong trận đấu, để thực hiện bằng được lời hứa phải chiến thắng của mình.\r\nNhớ mãi khoảnh khắc tiếng còi trọng tài vang lên báo hiệu chiến thắng cuối cùng, đội trưởng Tô Khải của bọn họ bật khóc nức nở, ôm chầm lấy Triệu Diệp.\r\nBọn họ ôm chặt lấy nhau.\r\nNhững tiếng hò la vang dội.\r\nNhững giọt nước mắt trộn lẫn với mồ hôi.\r\nBởi thế, đặc quyền của tuổi trẻ.\r\nBọn họ cống hiến hết sức cho khát vọng của mình, của người khác, của tất cả. Bọn họ không sợ thất bại, không sợ tổn thất, chỉ lo sợ không còn cơ hội, cùng những con người yêu quý trải qua thách thức thanh xuân.\r\nBởi bọn họ còn trẻ, nên nhiệt thành biết bao, có thể quyết tâm vì đối phương, một lòng cố gắng.\r\nSân bóng vang dội đã ghi dấu chiến thắng năm ấy rồi sẽ im hơi lặng tiếng.\r\nNhững chàng trai ướt đẫm mồ hôi ôm nhau khóc ròng hôm nay, rồi cũng sẽ trưởng thành. Nhưng, họ sẽ nhớ mãi, giọt nước mắt ngày ấy, sức sống, tình bạn đẹp đẽ, và những con người đã chia sẻ tuổi thanh xuân cùng bọn họ.', 'Cửu Dạ Hồi', 'Tiểu thuyết', 100, 'namthangvoiva-011.jpg', '2021-05-13', NULL),
(38, 'Giết con chim nhại', 100000, 'Giết con chim nhại (nguyên tác tiếng Anh: To Kill a Mockingbird) là cuốn tiểu thuyết của Harper Lee; đây là cuốn tiểu thuyết rất được yêu chuộng, thuộc loại bán chạy nhất thế giới với hơn 10 triệu bản. Cuốn tiểu thuyết được xuất bản vào năm 1960 và đã giành được giải Pulitzer cho tác phẩm hư cấu năm 1961. Nội dung tiểu thuyết dựa vào cuộc đời của nhiều bạn bè và họ hàng tác giả, nhưng tên nhân vật đã được thay đổi. Tác giả cho biết hình mẫu nhân vật Jean Louise \"Scout\" Finch, người dẫn truyện, được xây dựng dựa vào chính bản thân mình.\r\n\r\nGiết con chim nhại là một câu chuyện bao gồm nhiều mô-típ, như sự ích kỷ, sự thù hận, lòng dũng cảm, sự kiêu hãnh, định kiến, và các giai đoạn trong cuộc đời, đặt trong bối cảnh cuộc sống miền Nam Hoa Kỳ. Cuốn tiểu thuyết đã được đạo diễn Robert Mulligan dựng thành phim với kịch bản do Horton Foote viết vào năm 1962. Cho tới nay, cuốn tiểu thuyết này là tác phẩm được xuất bản duy nhất của bà Harper Lee.', 'Harper lee', 'Tiểu thuyết', 100, 'pAxQiD9.gif', '2021-05-13', NULL),
(39, 'Giông tố và vỡ đê', 100000, 'Tiểu thuyết Giông Tố gồm nhiều thứ người: thôn quê, thành thị và cả những nhân vật từ quê ra tỉnh. Có người là thôn nữ bị bán làm lẽ thứ mười hai cho nhà giàu, có người là thư ký, có người là du thủ du thực, có người là gái tân thời, có người là đốc học, có người làm cách mạng. Nhưng trội lên hết để người đọc suy nghĩ, để người đọc nhớ lại mà đặt thành vấn đề thì có hai nhân vật Thị Mịch và Nghị Hách... Vũ Trọng Phụng mà còn, còn đánh nhiều thêm bằng nhiều truyện nữa, còn đánh mạnh hơn bao giờ hết và đánh cho kỳ hết. Không những đánh, mà Vũ Trọng Phụng còn kiến thiết nữa”.\r\n\r\nVỡ Đê ra đời cùng năm với Giông Tố (1936), phản ánh hiện thực trên một phạm vi khá rộng, từ thành thị đến nông thôn, song tập trung lên án những chính sách, thủ đoạn thống trị của bọn thực dân, quan lại đã đẩy người nông dân vào tình cảnh đói rét cơ cực... Một tác phẩm hiện thực phê phán của Vũ Trọng Phụng đã cho người đọc thấy lại những ngày tăm tối của dân tộc ta dưới ách thống trị của thực dân phong kiến trong giai đoạn trước 1945. Nhà văn đã ca tụng những người cộng sản trong toà báo Lao động thời mặt trận bình dân, những người ngang tàng coi nhà tù là một cái trường đào tạo nên những tay chiến sĩ của cái phần nhân loại bị bóc lột đề chiến đấu với bọn có ở hai vai của mình những cánh tay lao động của người khác.', 'Vũ Trọng Phụng', 'Tiểu thuyết', 100, '8dc9face62a31a2313e2418335db6c3e--wattpad-banners.jpg', '2021-05-13', NULL),
(40, 'Spacefarers', 100000, 'n 2007, Trung Quốc đã chứng minh một tên lửa chống vệ tinh mới bằng cách thổi một trong những vệ tinh thời tiết không còn tồn tại riêng của mình để mảnh vụn: một đám mây mảnh vỡ mà vẫn quỹ đạo Trái Đất. Thông điệp không bị mất ở Mỹ và ngay trước Giáng sinh năm ngoái Donald Trump đã cho ra mắt Không gian vũ lực của mình. Các thiên đàng đang được tái vũ trang trong một cuộc đua vũ trụ siêu cường mới; Trung Quốc đang lên kế hoạch cho các sứ mệnh Mặt trăng có người lái và Elon Musk muốn xây dựng một thành phố trên Sao Hỏa . Nhưng chính xác thì không gian tốt cho việc gì, ngoài việc là tổ bắn tỉa cuối cùng cho bạo lực nhắm vào bề mặt Trái đất? Đặc biệt, tại sao mọi người sẽ muốn sống ở đó?\r\n\r\nCuốn sách của nhà văn khoa học Christopher Wanjek là một nỗ lực cực kỳ hấp dẫn (và thường hài hước) để trả lời câu hỏi đó, mặc dù ông bắt đầu bằng cách thách thức nhiều lý do mà mọi người đưa ra để xâm chiếm không gian. Đó không phải là một biện pháp phòng thủ cần thiết chống lại sự tuyệt chủng sắp xảy ra, ông lập luận: bệnh dịch hoặc chiến tranh hạt nhân có thể giết chết rất nhiều người trong chúng ta, nhưng một số ít sẽ sống sót để tiếp tục. Wanjek dường như đánh giá thấp sự nguy hiểm của tác động của tiểu hành tinh: một tảng đá không gian đủ lớn có thể khử trùng khuôn mặt của cả hành tinh. Tuy nhiên, có một mối đe dọa mà mọi người đều đồng ý có thể là rèm cửa, đó là vụ nổ tia gamma từ một ngôi sao đang nổ gần đủ với chúng ta. Khi điều đó đến mà không có cảnh báo (vì nó nhất định phải làm vào một lúc nào đó) và phá hủy bầu khí quyển, có thể có ích để có một hành tinh dự phòng để sinh sống.\r\n\r\n Thuộc địa không phải là một sự bảo vệ cần thiết chống lại sự tuyệt chủng, Wanjek lập luận: sau một đại dịch, một vài người sống sót sẽ tiếp tục\r\nThực tế, việc chiếm đóng Sao Hỏa sẽ khá khó khăn, mà Wanjek tiến hành chứng minh bằng cách đưa chúng ta vượt qua các thử nghiệm mà con người sống trong điều kiện khắc nghiệt nhất trên Trái đất. Có những nhà khoa học vượt qua Nam Cực, nơi lạnh gần như sao Hỏa nhưng vẫn có những tiện nghi đầy đủ của trọng lực Trái đất cộng với không khí dễ thở, và các phi hành đoàn tàu ngầm hạt nhân sống - như các phi hành gia du hành tới Sao Hỏa sẽ phải làm - trong một hệ thống hoàn toàn kín trong nhiều tháng. Và đó là trước khi chúng ta có thêm những nguy hiểm của du hành vũ trụ. Hoa Kỳ bất hợp pháp khi Hoa Kỳ gửi con người lên sao Hỏa, ghi chú của Wan Wanek, bởi vì liều bức xạ dự kiến ​​trên hành trình vượt xa mức tối đa cho phép đối với bất kỳ nhân viên liên bang nào.\r\n\r\n', 'Christoper Wanjek', 'Tiểu thuyết', 100, 'Spacefarers-300x453.jpg', '2021-05-13', NULL),
(41, 'Whats Science all about', 100000, 'sách khoa học', 'N/A', 'Khoa học', 100, 'tải xuống.jpg', '2021-05-13', NULL),
(42, 'Tắt đèn', 100000, '\" Tắt đèn \" là một bức tranh tối màu phản ánh hiện thực xã hội nhiều biến động của thế kỉ XX. Tác phẩm là bước tiến lớn của văn học hiện đại: hòa quyện hoàn hảo giữa cảm hứng hiện đại và cảm hứng nhân đạo. Chủ nghĩa hiện thực trong tác phẩm được đề cao khi nó đã không ngần ngại vạch trần bộ mặt hợm hĩnh, tàn ác của thứ chính quyền thối nát không thể đem lại cuộc sống đúng nghĩa cho nhân dân, khi nó không ngần ngại bóc tách từng tầng áp bức đặt lên đôi vai hao gầy của người nông dân nghèo để cuối cùng dồn họ vào bước đường cùng, trong một cuộc sống tối tăm không ánh đèn. Hơn hết, chủ nghĩa nhân đạo cũng thể hiện rõ ràng trong tác phẩm. Ngô Tất Tố đã viết về người nông dân với tấm lòng chân thành nhất. Ông thương con người không có quyền được sống, mà sự tồn tại của thuế thân bấy giờ chính là chứng minh. Ông thấu hiểu tình cảm của con người trong gia đình, ông bày tỏ nỗi đau đớn tới tột cùng của bậc cha mẹ phải bán con kiếm vài đồng bạc, cũng như tình yêu và thấu hiểu của đứa trẻ 7 tuổi dành cho cha mẹ. Ông trân trọng người nông dân như chị Dậu, anh Dậu hay bà hàng xóm..., dù nghèo khó bần cùng cũng phải giữ lấy đạo đức, giữ lấy trinh tiết và tình yêu thương. Đối lập với bọn nhà giàu Nghị Quế, Lý trưởng, trong hoàn cảnh túng quẫn thậm chí có cơ hội họ cũng không bán đi cái nhân cách của mình (chi tiết cụ Cửu muốn đề cử anh Dậu làm lý trưởng). Ngô Tất Tố đã thành công khắc họa nên những con người như vậy. Nhưng không chỉ làm thế. Ông còn \"xúi\" nông dân nổi loạn, Nguyễn Tuân có đúng hay không? Tôi thì cho rằng không sai. Ngô Tất Tố đã là một phần của nông dân, dám đứng lên cất lên tiếng nói đấu tranh vì sự sống và hạnh phúc, ông đánh thức những con người luôn cúi đầu cam chịu để họ một lần ngẩng lên và mãi mãi ngẩng lên. Cần phải đấu tranh! Tức nước thì vỡ bờ, sức mạnh của người nông dân là thứ sức mạnh to lớn ẩn giấu cần thức tỉnh. Khi đó, không chỉ Cai lệ hay người nhà Lý tưởng, còn có thể vật ngã nhiều thứ to hơn thế. Tức là, ta đã thấy một ngòi bút tài năng đặc sắc của văn học mới thế kỉ XX. Ông đã viết lên một câu chuyện hợp thời, đúng lịch sử, vừa phản ánh hiện thực vừa phản ánh biến chuyển tư tưởng của nhân dân thời bấy giờ, chưa kể tới khả năng tài tình trong cách miêu tả, kể chuyện.\r\n\r\nNhưng nói sâu cũng phải nói nông. Ngô Tất Tố không \"xúi\" nổi loạn bằng cách vẽ lên một khung cảnh huy hoàng, ông chỉ đơn giản tái hiện hiện thực khắc nghiệt. Đọc Tắt đèn, ta cũng như nhân vật liên tục bị dồn vào bế tắc bi thương. Chị Dậu từ một cô gái có tuổi thơ khồn thiếu thốn gì trở thành người đàn bà lâm vào cảnh đói ăn thiếu mặc, vì cái sưu cái thuế mà dứt lòng bán con. Cảnh mà mình cảm thấy đau lòng nhất là khi chị bế cái Tỉu, dắt thằng Dầń trong đêm hè oi ả, đi mãi không thể tới nơi. Ánh trăng phủ lên cảnh vật quạnh hiu còn không khí không thể làm người ta dễ thở hơn. Má khô nước mắt, dáng vẻ vì thiếu ăn thiếu ngủ, còn ánh mắt thì đau đớn, nhiều trăn trở và bão tố, kinh hoàng và bất lực. Người làng cũng ái ngại cho chị, nhưng họ cũng thấp cổ bé họng, đói nghèo không thể làm gì hơn là cảm thương. Nỗi thương chồng thương con trùm lên bóng dáng chị gầy gò với hai đứa trẻ đáng thương. Đoạn trích \"Tức nước vỡ bờ\" lại mang tới ấn tượng khác. Đây là cao trào của câu chuyện, chứng minh cho sự thật rằng: có áp bức sẽ có đấu tranh. Tôi gọi đó là tiếng trống khởi nghĩa, cũng là lời báo động cho bọn quan tham, bọn thực dân.', 'Ngô Tất Tố', 'Tiểu thuyết', 100, 'tat-den-ngo-tat-to-140151.jpg', '2021-05-13', NULL),
(43, 'Thất tịch không mưa', 80000, 'Thất Tịch Không Mưa kể về mối tình ngang trái của Thẩm Thiên Tình và Thẩm Hàn Vũ – những người yêu nhau nhưng không thể đến được với nhau. Mỗi người mang trong mình trái tim khiếm khuyết đi tìm một nửa yêu thương ở thế giới ngoài kia để rồi nhận ra: Đời này, kiếp này, không ai có thể thay thế vị trí của người kia trong trái tim mình được.', 'Lâu Vũ Tình', 'Tiểu thuyết', 100, 'that_tich_khong_mua.jpg', '2021-05-13', NULL),
(44, 'Công tắc tình yêu', 100000, '“Em chỉ muốn lắp trong tim một cái công tắc, như vậy khi nào em muốn yêu anh thì yêu, không muốn yêu anh, thì sẽ không yêu nữa.”\r\n\r\nChu Diễn Chiếu từng khắc cho Chu Tiểu Manh một đôi giày gỗ, dưới đế ghi bốn chữ “trọn đời bên nhau”.\r\n\r\nAnh đã ở bên cô suốt những năm tháng tuổi thơ, cùng cô trèo cây chuồn ra ngoài chơi, đèo cô phóng xe như bay trên những con đường ở thành Nam Duyệt, thậm chí, còn định theo cô trốn ra nước ngoài, thoát khỏi vòng kiềm tỏa của cha mẹ để trọn đời bên nhau.\r\n\r\nAnh cũng đã giữ cô bên mình, để cô giương mắt nhìn anh quen biết, yêu đương, chung sống, rồi đính hôn với người con gái khác.\r\n\r\nLà yêu thương hay căm hận, là che chở hay giày vò, là không nỡ rời xa hay là sống không bằng chết, có lẽ chính hai người cũng không phân rõ được.Tình cảm ấy vô vọng mà cố chấp, điên cuồng mà yếu đuối như đóa hoa bừng nở giữa đêm đen, sẽ tan tác theo gió, hay sẽ kết thành trái độc?', 'Phỉ Ngã Tư Tồn', 'Tiểu thuyết', 100, 'unnamed.jpg', '2021-05-13', NULL),
(45, 'Vẽ em bằng màu nỗi nhớ', 100000, 'vẽ em bằng màu nỗi nhớ là một câu chuyện tình yêu có thật, đã làm thổn thức biết bao trái tim người đọc. Câu chuyện là hồi ký của nhân vật Khanh trong khoảng thời gian quay trở lại Việt Nam, đan xen cùng những ký ức của 6 năm trước đó. Khanh trở về quê hương khi có biết bao điều đã đổi thay, chỉ duy tình cảm của bà con, của những người bạn cũ là vẫn không thay đổi. Tại Sài Gòn, Khanh đã gặp lại Linh – người con gái của miền ký ức xưa, và Miu – cô gái tưởng như xa lạ mà lại rất đỗi thân thuộc. Liệu anh có quên được Linh – người con gái năm xưa anh từng yêu say đắm? Và liệu anh có nhận ra Miu – cô gái bé nhỏ với tình cách buồn vui thất thường? Câu chuyện xoay quanh cuộc sống thường ngày của những thanh niên trẻ trung và năng động, ở đó không chỉ có tình yêu đôi lứa, mà còn có cả tình bạn, tình thầy cô, tình cảm gia đình, tình đồng bào của những người con xa xứ… Tất cả mang đến thật nhiều cung bậc cảm xúc, từ hài hước cho đến tò mò, đôi khi là cả những giọt nước mắt đầy xúc động.', 'Tâm phạm', 'Tiểu thuyết', 100, 'veembangnoinho.jpg', '2021-05-13', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalPayment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(10) NOT NULL,
  `orderId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalPayment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--



-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orderId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `methodShip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `customerName` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--



-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Sở Vãn Ninh', 'sovanninh@gmail.com', '1234567890', '2021-04-08', NULL),
(2, 'Mặc Vi Vũ', 'macvivu@gmail.com', '1234567890', '2021-04-08', NULL),
(3, 'Tiết Tử Minh', 'tiettuminh@gmail.com', '1234567890', '2021-04-08', NULL),
(4, 'Lam Vong Cơ', 'lvc@gmail.com', '1234567890', '2021-04-15', NULL);


--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `books` ADD FULLTEXT KEY `name` (`name`,`author`,`category`,`description`);
ALTER TABLE `books` ADD FULLTEXT KEY `name_2` (`name`,`description`,`author`,`category`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_bookid_fk` (`bookId`),
  ADD KEY `cart_userid_fk` (`userId`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderdetails_orderid_fk` (`orderId`),
  ADD KEY `orderdetails_bookid_fk` (`bookId`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `orders_userid_fk` (`userId`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_bookid_fk` FOREIGN KEY (`bookId`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `cart_userid_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_bookid_fk` FOREIGN KEY (`bookId`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `orderdetails_orderid_fk` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderid`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_userid_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
