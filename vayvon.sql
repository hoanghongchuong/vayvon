-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2018 lúc 05:04 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vayvon`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `user_id`, `name`, `alias`, `photo`, `mota`, `link`, `content`, `status`, `title`, `keyword`, `description`, `com`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, '', NULL, NULL, NULL, '<p><strong>Sứ mệnh:&nbsp;</strong>X&acirc;y dựng tương lai bền vững</p>\r\n<p><strong>Tầm nh&igrave;n:&nbsp;</strong>ITY kh&ocirc;ng ngừng ph&aacute;t triển c&ocirc;ng nghệ, nỗ lực đa dạng h&oacute;a giải ph&aacute;p để trở th&agrave;nh nh&agrave; cung cấp h&agrave;ng đầu trong 3 năm nữa tr&ecirc;n thị trường về lĩnh vực OTP Call, ePay,Voice &hellip; ; thay đổi c&aacute;ch thức doanh nghiệp tương t&aacute;c với kh&aacute;ch h&agrave;ng nhằm n&acirc;ng cao chất lượng dịch vụ v&agrave; đem đến cho Doanh nghiệp nhiều lợi &iacute;ch hơn.</p>\r\n<p><strong>Gi&aacute; trị cốt l&otilde;i:</strong></p>\r\n<p><strong>1. Kh&aacute;ch h&agrave;ng l&agrave; trung t&acirc;m:</strong>&nbsp;Tại ITY, kh&aacute;ch h&agrave;ng l&agrave; trung t&acirc;m. V&igrave; vậy sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng l&agrave; ch&igrave;a kh&oacute;a th&agrave;nh c&ocirc;ng của ITY. N&oacute; l&agrave; phương ch&acirc;m hoạt động ch&iacute;nh của c&ocirc;ng ty.</p>\r\n<p><strong>2. H&agrave;nh động hơn lời n&oacute;i:</strong></p>\r\n<p>- Bắt tay v&agrave;o l&agrave;m ngay với sự ki&ecirc;n tr&igrave; cao nhất cho đến khi đạt được mục ti&ecirc;u.</p>\r\n<p>- R&uacute;t kinh nghiệm từ thất bại, t&igrave;m mọi c&aacute;ch để vượt qua kh&oacute; khăn với sự nỗ lực của c&aacute; nh&acirc;n v&agrave; hỗ trợ của đồng đội.</p>\r\n<p><strong>3. Học hỏi v&agrave; cải tiến:</strong></p>\r\n<p>- Kh&ocirc;ng bao giờ h&agrave;i l&ograve;ng, thỏa m&atilde;n với kết quả đ&atilde; đạt được, cải tiến quy tr&igrave;nh li&ecirc;n tục để l&agrave;m tốt hơn.</p>\r\n<p>- Kh&ocirc;ng ngừng học hỏi, nghi&ecirc;n cứu c&ocirc;ng nghệ mới, lu&ocirc;n t&igrave;m t&ograve;i v&agrave; s&aacute;ng tạo để ph&aacute;t triển</p>', 1, NULL, NULL, NULL, 'gioi=thieu', '2018-10-02 15:38:44', '2018-10-02 08:38:44'),
(2, 8, 'Giới thiệu', 'gioi-thieu', NULL, '<p><span style=\"font-size: 14pt;\"><strong>Sứ mệnh:&nbsp;</strong>X&acirc;y dựng tương lai bền vững</span></p>\r\n<p><span style=\"font-size: 14pt;\"><strong>Tầm nh&igrave;n:&nbsp;</strong>ITY kh&ocirc;ng ngừng ph&aacute;t triển c&ocirc;ng nghệ, nỗ lực đa dạng h&oacute;a giải ph&aacute;p để trở th&agrave;nh nh&agrave; cung cấp h&agrave;ng đầu trong 3 năm nữa tr&ecirc;n thị trường về lĩnh vực OTP Call, ePay,Voice &hellip; ; thay đổi c&aacute;ch thức doanh nghiệp tương t&aacute;c với kh&aacute;ch h&agrave;ng nhằm n&acirc;ng cao chất lượng dịch vụ v&agrave; đem đến cho Doanh nghiệp nhiều lợi &iacute;ch hơn.</span></p>', NULL, '<p>Ch&uacute;ng ta vẫn biết rằng l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa v&agrave; cản trở việc tập trung v&agrave;o nội dung văn bản... Ch&uacute;ng ta vẫn biết rằng l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa v&agrave; cản trở việc tập trung v&agrave;o nội dung văn bản... Ch&uacute;ng ta vẫn biết rằng l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa v&agrave; cản trở việc tập trung v&agrave;o nội dung văn bản... Ch&uacute;ng ta vẫn biết rằng l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa v&agrave; cản trở việc tập trung v&agrave;o nội dung văn bản...</p>\r\n<p>Ch&uacute;ng ta vẫn biết rằng l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa v&agrave; cản trở việc tập trung v&agrave;o nội dung văn bản... Ch&uacute;ng ta vẫn biết rằng l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa v&agrave; cản trở việc tập trung v&agrave;o nội dung văn bản... Ch&uacute;ng ta vẫn biết rằng l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa v&agrave; cản trở việc tập trung v&agrave;o nội dung văn bản... Ch&uacute;ng ta vẫn biết rằng l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa v&agrave; cản trở việc tập trung v&agrave;o nội dung văn bản...</p>\r\n<p>Ch&uacute;ng ta vẫn biết rằng l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa v&agrave; cản trở việc tập trung v&agrave;o nội dung văn bản... Ch&uacute;ng ta vẫn biết rằng l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa v&agrave; cản trở việc tập trung v&agrave;o nội dung văn bản... Ch&uacute;ng ta vẫn biết rằng l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa v&agrave; cản trở việc tập trung v&agrave;o nội dung văn bản... Ch&uacute;ng ta vẫn biết rằng l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa v&agrave; cản trở việc tập trung v&agrave;o nội dung văn bản...</p>', 1, NULL, NULL, NULL, 'gioi-thieu', '2018-10-20 07:20:29', '2018-10-20 00:20:29'),
(3, 8, NULL, '', NULL, NULL, NULL, '<p>Nội dung tuyển dụng</p>', 1, NULL, NULL, NULL, 'tuyen-dung', '2018-10-20 07:28:44', '2018-10-20 00:28:44'),
(4, 8, NULL, '', NULL, NULL, NULL, '<p>Nội dung ưu đ&atilde;i cho vay</p>', 1, NULL, NULL, NULL, 'uu-dai', '2018-10-20 07:45:54', '2018-10-20 00:45:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_content`
--

CREATE TABLE `banner_content` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `banner_content`
--

INSERT INTO `banner_content` (`id`, `image`, `link`, `position`, `updated_at`, `created_at`) VALUES
(8, '1510106818_banner-1.jpg', NULL, 3, '2017-11-07 19:06:58', '2017-11-07 19:06:58'),
(9, '1510106829_banner-1.jpg', NULL, 4, '2017-11-07 19:07:09', '2017-11-07 19:07:09'),
(10, '1510106837_banner-1.jpg', NULL, 6, '2017-11-07 19:07:17', '2017-11-07 19:07:17'),
(11, '1510106849_banner-1.jpg', NULL, 7, '2017-11-07 19:07:29', '2017-11-07 19:07:29'),
(12, '1510106862_banner-1.jpg', NULL, 2, '2017-11-07 19:07:42', '2017-11-07 19:07:42'),
(13, '1510107779_banner-1.jpg', NULL, 5, '2017-11-07 19:22:59', '2017-11-07 19:22:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_position`
--

CREATE TABLE `banner_position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `banner_position`
--

INSERT INTO `banner_position` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '2017-09-20 08:29:24', '2017-09-20 01:29:24'),
(2, 'Tin tức', '2017-10-14 03:36:18', '2017-10-13 20:36:18'),
(3, 'Trang giới thiệu', '2017-11-08 02:03:36', '2017-11-07 19:03:36'),
(4, 'Trang sản phẩm', '2017-11-08 02:03:51', '2017-11-07 19:03:51'),
(5, 'Trang chi tiết sản phẩm', '2017-10-16 02:47:30', '2017-10-15 19:47:30'),
(6, 'Trang bảng giá', '2017-11-07 19:05:03', '2017-11-07 19:05:03'),
(7, 'Trang chứng chỉ kĩ thuật', '2017-11-07 19:05:29', '2017-11-07 19:05:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `address` text,
  `content` text CHARACTER SET latin1,
  `status` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `content`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Hoàng Hồng Chương', 'admin@team.vn', '0987654321', NULL, 'sdf sdf', 0, '2018-10-03 07:17:07', '2018-10-03 07:17:07'),
(6, 'j', 'chuong1194@yahoo.com', '0987654321', NULL, 'df sadf', 0, '2018-10-03 07:17:59', '2018-10-03 07:17:59'),
(7, 'Hoàng Hồng Chương', 'admin@team.vn', '0987654321', NULL, NULL, 0, '2018-10-03 07:18:45', '2018-10-03 07:18:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `district_name` varchar(250) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `district_name`, `province_id`, `created_at`, `updated_at`) VALUES
(1, 'Ba Đình', 4, '2017-09-24 18:03:47', '2017-09-24 18:03:47'),
(2, 'Từ Liêm', 4, '2017-09-24 18:04:29', '2017-09-24 18:04:29'),
(3, 'Hoàn Kiếm', 4, '2017-09-24 18:04:40', '2017-09-24 18:04:40'),
(4, 'Cầu giấy', 4, '2017-09-25 00:14:58', '2017-09-25 00:14:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `photo` text,
  `position` varchar(250) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `photo`, `position`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Trần văn a', '', 'sdf s', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2018-10-20 00:53:24', '2018-10-20 00:53:24'),
(2, 'Trần văn B', '', 'sdf s', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2018-10-20 00:53:37', '2018-10-20 00:53:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer`
--

CREATE TABLE `footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioithieu`
--

CREATE TABLE `gioithieu` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `image` text,
  `mota` text,
  `content` text,
  `title` varchar(250) DEFAULT NULL,
  `keyword` varchar(250) DEFAULT NULL,
  `description` text,
  `status` int(2) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienket`
--

CREATE TABLE `lienket` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lienket`
--

INSERT INTO `lienket` (`id`, `user_id`, `name`, `link`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 8, 'Chi phí minh bạch', NULL, '1540021828_icon1.png', 'Chúng ta vẫn biết rằng làm việc với một đoạn văn bản dễ đọc và rõ nghĩa', NULL, 1, 0, 'taisao', 1, '2018-10-20 00:50:28', '2018-10-20 00:50:28'),
(2, 8, 'Lý do 2', NULL, '1540043114_icon2.png', 'Chúng ta vẫn biết rằng làm việc với một đoạn văn bản dễ đọc và rõ nghĩa', NULL, 1, 0, 'taisao', 2, '2018-10-20 06:45:14', '2018-10-20 06:45:14'),
(3, 8, 'Lý do 3', NULL, '1540043125_icon3.png', 'Chúng ta vẫn biết rằng làm việc với một đoạn văn bản dễ đọc và rõ nghĩa', NULL, 1, 0, 'taisao', 3, '2018-10-20 06:45:25', '2018-10-20 06:45:25'),
(4, 8, 'Lý do 4', NULL, '1540043134_icon4.png', 'Chúng ta vẫn biết rằng làm việc với một đoạn văn bản dễ đọc và rõ nghĩa', NULL, 1, 0, 'taisao', 4, '2018-10-20 06:45:34', '2018-10-20 06:45:34'),
(5, 8, 'Lý do 5', NULL, '1540043153_icon5.png', 'Chúng ta vẫn biết rằng làm việc với một đoạn văn bản dễ đọc và rõ nghĩa', NULL, 1, 0, 'taisao', 5, '2018-10-20 06:45:53', '2018-10-20 06:45:53'),
(6, 8, 'Lý do 6', NULL, '1540043164_icon6.png', 'Chúng ta vẫn biết rằng làm việc với một đoạn văn bản dễ đọc và rõ nghĩa', NULL, 1, 0, 'taisao', 6, '2018-10-20 06:46:04', '2018-10-20 06:46:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_06_05_042524_create_products_table', 1),
('2017_06_05_045215_create_images_table', 1),
('2017_06_07_033057_create_news_categories_table', 1),
('2017_06_07_033135_create_news_table', 1),
('2017_06_07_033425_create_setting_table', 1),
('2017_06_07_033619_create_pages_table', 1),
('2017_06_07_033944_create_contact_table', 1),
('2017_06_07_034012_create_footer_table', 1),
('2017_06_07_034035_create_slider_table', 1),
('2017_06_07_034117_create_useronline_table', 1),
('2017_06_07_034335_create_order_table', 1),
('2017_06_07_034407_create_order_detail_table', 1),
('2017_06_07_034448_create_newsletter_table', 1),
('2017_06_07_034655_create_order_status_table', 1),
('2017_06_07_064339_create_counter_table', 1),
('2017_06_07_070934_create_partner_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `noibat` int(11) DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `cate_id`, `user_id`, `name`, `alias`, `photo`, `background`, `mota`, `content`, `status`, `noibat`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 0, 8, 'Vay theo lương', 'vay-theo-luong', '', '', NULL, '<p>Nội dung vay theo lương</p>', 1, 0, NULL, NULL, NULL, 'tin-chap', 0, '2018-10-20 06:54:45', '2018-10-20 06:54:45'),
(2, 0, 8, 'Vay theo bảo hiểm', 'vay-theo-bao-hiem', '', '', NULL, '<p>Nội dung vay theo bảo hiểm</p>', 1, 0, NULL, NULL, NULL, 'tin-chap', 0, '2018-10-20 06:55:42', '2018-10-20 06:55:42'),
(3, 0, 8, 'Vay theo hóa đơn điện', 'vay-theo-hoa-don-dien', '', '', NULL, '<p>Nội dung vay theo h&oacute;a đơn điện</p>', 1, 0, NULL, NULL, NULL, 'tin-chap', 0, '2018-10-20 06:56:01', '2018-10-20 06:56:01'),
(4, 0, 8, 'Vay theo lương chuyển khoản', 'vay-theo-luong-chuyen-khoan', '', '', NULL, '<p>Nội dung&nbsp;Vay theo lương chuyển khoản</p>', 1, 0, NULL, NULL, NULL, 'tin-chap', 0, '2018-10-20 06:56:23', '2018-10-20 06:56:23'),
(5, 0, 8, 'Vay thế chấp ngân hàng', 'vay-the-chap-ngan-hang', '', '', NULL, '<p>Nội dung vay thế chấp ng&acirc;n h&agrave;ng.</p>', 1, 0, NULL, NULL, NULL, 'the-chap', 0, '2018-10-20 13:57:37', '2018-10-20 06:57:37'),
(6, 0, 8, 'Vay sạp chợ kinh doanh', 'vay-sap-cho-kinh-doanh', '', '', NULL, '<p>Nội dung&nbsp;Vay sạp chợ kinh doanh</p>', 1, 0, NULL, NULL, NULL, 'the-chap', 0, '2018-10-20 06:57:58', '2018-10-20 06:57:58'),
(7, 0, 8, 'Vay mua nhà', 'vay-mua-nha', '', '', NULL, '<p>Nội dung&nbsp;Vay mua nh&agrave;</p>', 1, 0, NULL, NULL, NULL, 'the-chap', 0, '2018-10-20 06:58:13', '2018-10-20 06:58:13'),
(8, 0, 8, 'Vay thế chấp Oto', 'vay-the-chap-oto', '', '', NULL, '<p>Nội dung&nbsp;Vay thế chấp Oto</p>', 1, 0, NULL, NULL, NULL, 'the-chap', 0, '2018-10-20 06:58:38', '2018-10-20 06:58:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `background` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `alias`, `photo`, `mota`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `background`, `updated_at`) VALUES
(1, 'Vay tín chấp', 'vay-tin-chap', '', NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 1, '2018-10-20 07:10:50', '', '2018-10-20 07:10:50'),
(2, 'Vay thế chấp', 'vay-the-chap', '', NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 2, '2018-10-20 07:10:57', '', '2018-10-20 07:10:57'),
(3, 'Vay theo lương', 'vay-theo-luong', '', '<p>Nội dung vay theo lương</p>', 1, 0, 1, NULL, NULL, NULL, 'tin-tuc', 3, '2018-10-21 01:56:28', '', '2018-10-20 18:56:28'),
(4, 'Vay theo bảo hiểm', 'vay-theo-bao-hiem', '', NULL, 1, 0, 1, NULL, NULL, NULL, 'tin-tuc', 4, '2018-10-20 07:12:12', '', '2018-10-20 07:12:12'),
(5, 'Vay theo hóa đơn điện', 'vay-theo-hoa-don-dien', '', NULL, 1, 0, 1, NULL, NULL, NULL, 'tin-tuc', 5, '2018-10-20 07:12:36', '', '2018-10-20 07:12:36'),
(6, 'Vay theo lương chuyển khoản', 'vay-theo-luong-chuyen-khoan', '', NULL, 1, 0, 1, NULL, NULL, NULL, 'tin-tuc', 6, '2018-10-20 07:12:51', '', '2018-10-20 07:12:51'),
(7, 'Vay thế chấp ngân hàng', 'vay-the-chap-ngan-hang', '', '<p>Nội dung vay thế chấp ng&acirc;n h&agrave;ng</p>', 1, 0, 2, NULL, NULL, NULL, 'tin-tuc', 7, '2018-10-21 01:58:37', '', '2018-10-20 18:58:37'),
(8, 'Vay sạp chợ kinh doanh', 'vay-sap-cho-kinh-doanh', '', '<p>Nội dung vay sạp chợ kinh doanh</p>', 1, 0, 2, NULL, NULL, NULL, 'tin-tuc', 8, '2018-10-20 18:59:11', '', '2018-10-20 18:59:11'),
(9, 'Vay mua nhà', 'vay-mua-nha', '', '<p>Nội dung vay mua nh&agrave;</p>', 1, 0, 2, NULL, NULL, NULL, 'tin-tuc', 9, '2018-10-20 18:59:27', '', '2018-10-20 18:59:27'),
(10, 'Vay thế chấp Oto', 'vay-the-chap-oto', '', '<p>Nội dung&nbsp;Vay thế chấp Oto</p>', 1, 0, 2, NULL, NULL, NULL, 'tin-tuc', 10, '2018-10-20 18:59:44', '', '2018-10-20 18:59:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `brithday` date DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `address` text,
  `name_company` text,
  `cate_id` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `baohiem` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partner`
--

CREATE TABLE `partner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `partner`
--

INSERT INTO `partner` (`id`, `name`, `url`, `photo`, `desc`, `content`, `com`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, '1540019529_partner-1.jpg', NULL, NULL, 'doi-tac', 1, '2018-10-20 00:12:09', '2018-10-20 00:12:09'),
(2, '2', NULL, '1540019540_partner-1.jpg', NULL, NULL, 'doi-tac', 1, '2018-10-20 00:12:20', '2018-10-20 00:12:20'),
(3, '3', NULL, '1540019548_partner-1.jpg', NULL, NULL, 'doi-tac', 1, '2018-10-20 00:12:28', '2018-10-20 00:12:28'),
(4, '4', NULL, '1540019562_partner-1.jpg', NULL, NULL, 'doi-tac', 1, '2018-10-20 00:12:42', '2018-10-20 00:12:42'),
(5, '5', NULL, '1540019571_partner-1.jpg', NULL, NULL, 'doi-tac', 1, '2018-10-20 00:12:51', '2018-10-20 00:12:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `province_name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `hotline` text COLLATE utf8_unicode_ci,
  `fax` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `favico` text COLLATE utf8_unicode_ci,
  `title_index` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `facebook` text COLLATE utf8_unicode_ci,
  `twitter` text COLLATE utf8_unicode_ci,
  `skype` text COLLATE utf8_unicode_ci,
  `google` text COLLATE utf8_unicode_ci,
  `youtube` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT '0',
  `toado` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `iframemap` text COLLATE utf8_unicode_ci,
  `codechat` longtext COLLATE utf8_unicode_ci,
  `analytics` longtext COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `name`, `title`, `company`, `website`, `address`, `phone`, `hotline`, `fax`, `email`, `photo`, `favico`, `title_index`, `mota`, `content`, `facebook`, `twitter`, `skype`, `google`, `youtube`, `status`, `toado`, `copyright`, `iframemap`, `codechat`, `analytics`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Vay Vốn', 'Vay Vốn', 'Vay Vốn', NULL, 'Thanh Xuân, Hà Nội', '0987654321', '0965412387', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,', 'acb@gmail.com', '1540018562_indexlogo.png', '1540018562_logo.png', NULL, NULL, NULL, 'https://www.facebook.com/FacebookforDevelopers/', 'https://twitter.com/?lang=vi', NULL, 'https://plus.google.com/?hl=vi', 'https://www.youtube.com/', 1, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7451.171877144796!2d105.871187!3d20.969137!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac25be4ca5e3%3A0xe81d88694b0116b9!2zWcOqbiBEdXnDqm4sIFnDqm4gU-G7nywgSG_DoG5nIE1haSwgSMOgIE7hu5lpLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1509609109763\" width=\"100%\" height=\"410\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2018-10-20 06:56:02', '2018-10-19 23:56:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `photo1` text CHARACTER SET utf8,
  `photo2` text CHARACTER SET utf8,
  `icon` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `user_id`, `name`, `link`, `photo`, `photo1`, `photo2`, `icon`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 8, '1', NULL, '1538493354_a.png', '', '', NULL, NULL, NULL, 1, 0, 'gioi-thieu', 1, '2018-10-02 15:15:54', '2018-10-02 08:15:54'),
(2, 8, '2', NULL, '1538493364_a.png', '', '', NULL, NULL, NULL, 1, 0, 'gioi-thieu', 2, '2018-10-02 15:16:04', '2018-10-02 08:16:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slogan`
--

CREATE TABLE `slogan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `photo` text,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slogan`
--

INSERT INTO `slogan` (`id`, `name`, `link`, `photo`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Đăng ký vay', NULL, '1540022079_b1.png', '<p>Ch&uacute;ng ta vẫn biết rằng l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa...</p>', '2018-10-20 00:54:39', '2018-10-20 00:54:39'),
(2, 'Xét duyệt thủ tục', NULL, '1540022105_b2.png', '<p>Ch&uacute;ng ta vẫn biết rằng l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa...</p>', '2018-10-20 00:55:05', '2018-10-20 00:55:05'),
(3, 'Nhận khoản vay', NULL, '1540022118_b3.png', '<p>Ch&uacute;ng ta vẫn biết rằng l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa...</p>', '2018-10-20 00:55:18', '2018-10-20 00:55:18'),
(4, 'Thanh toán khoản vay', NULL, '1540022133_b4.png', '<p>Ch&uacute;ng ta vẫn biết rằng l&agrave;m việc với một đoạn văn bản dễ đọc v&agrave; r&otilde; nghĩa...</p>', '2018-10-20 00:55:33', '2018-10-20 00:55:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '2',
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `level`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'tuanduy2012', '$2y$10$DceYJxR4ALmUW.Vt6k9En.1ubJhJGvWX1HISRloBERLNJ8Qq85itO', 'Tuan Duy', 'duydoan.nina@gmail.com', '', '', 1, NULL, 1, 'X37mpbjW1WDCjwH3s4Vq1Jkv3WRNJceXZlbLwHaa', '2017-06-14 23:42:39', '2017-06-14 23:42:39'),
(4, 'evernigh', '$2y$10$pprRO9LhYKADS60bvetRnOYoS3L74giVWf3D/wNZXlDLDRRx0bH6e', 'Duy Đoàn', 'tuanduy_mc2006@yahoo.com', '', '', 0, NULL, 1, '6CirvIekDhWLx3xFrnv7v39bFmalTsH21F4WABTq', '2017-06-16 02:51:34', '2017-06-16 02:51:34'),
(5, 'gco_admin', '$2y$10$Lm3vxVo0UYuWFSzJkpvmwOKecqZm5coQSy1D3QW/Tc8c569RgBNFK', 'Admin', 'gco@gmail.com', '0985431797', '315 Trường chinh, Thanh Xuân, Hà Nội', 1, '5.jpg', 1, 'xFaSv5wsPSKw3B7I8nXxBbqTNu60AIHR3ZbGC66Y0GtHZvgazkUMMNuujlTU', '2018-06-27 13:57:27', '2017-09-24 19:31:27'),
(7, 'hoangchuong', '$2y$10$PnaSJxmZdL0x0wRtj4q0tODPWKtxI85VefEFNZWDQKEH6q8rxjLc6', 'chuong', 'chuonghoanghong@gmail.com', NULL, NULL, 1, NULL, 1, 'DSYV3dr0q7IjUiVKsa4tl4ApOSuDPybd17EupcaO', '2017-11-07 01:31:10', '2017-11-07 01:31:10'),
(8, 'admin', '$2y$10$Yd5tYn7HBT/jbSJQmHmo5ezBYuRVqzQSbOtYIHoUAsCgPa4Eb89ky', 'admin', 'admin@team.vn', NULL, NULL, 1, NULL, 1, '6DqroqNcLqcKgrOp97cbnLVGTcXl1g0IF7PHFAbl1CFFg9C9thmHWFKA8pIs', '2018-10-02 15:15:00', '2018-06-27 06:57:22');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner_content`
--
ALTER TABLE `banner_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner_position`
--
ALTER TABLE `banner_position`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `lienket`
--
ALTER TABLE `lienket`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slogan`
--
ALTER TABLE `slogan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `banner_content`
--
ALTER TABLE `banner_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `banner_position`
--
ALTER TABLE `banner_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lienket`
--
ALTER TABLE `lienket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `slogan`
--
ALTER TABLE `slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
