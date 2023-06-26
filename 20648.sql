-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3306
-- 生成日期： 2023-06-26 10:08:10
-- 服务器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `20648`
--

-- --------------------------------------------------------

--
-- 表的结构 `allchanges`
--

CREATE TABLE `allchanges` (
  `id` int(11) DEFAULT NULL,
  `uniqueid` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `rel` text DEFAULT NULL,
  `priority` text DEFAULT NULL,
  `requester` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `allcoverage`
--

CREATE TABLE `allcoverage` (
  `id` int(11) DEFAULT NULL,
  `uniqueid` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `rel` text DEFAULT NULL,
  `verify` text DEFAULT NULL,
  `missing` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `allcoverage`
--

INSERT INTO `allcoverage` (`id`, `uniqueid`, `name`, `status`, `rel`, `verify`, `missing`) VALUES
(10799098, 'WK-REQ-1012', 'Sampling rates and bit depths from Host', 'Approved', 'Unspecified', '', 'Audio'),
(10799598, 'WK-REQ-1015', 'Audio latency', 'Approved', 'Unspecified', '', 'Audio'),
(10799624, 'WK-REQ-1016', 'Audio quality as a function of package loss', 'Approved', 'Unspecified', '', 'Audio'),
(10807569, 'WK-REQ-1017', 'Audio Performance', 'Approved', 'Unspecified', '', 'Audio'),
(10583619, 'WK-REQ-896', 'Handsfree audio gateway functionality', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore'),
(10583620, 'WK-REQ-897', 'Role supported for A2DP functionality for USB dongle device', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore'),
(10583621, 'WK-REQ-898', 'Supported Codecs for A2DP functionality for USB dongle device.  ', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore'),
(10583629, 'WK-REQ-906', 'Call manager functionality', 'Approved', 'Unspecified', '', ''),
(10583630, 'WK-REQ-907', 'Configurable range setting', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore, HW RF'),
(10583631, 'WK-REQ-908', 'Pairing controllable from USB host', 'Approved', 'Unspecified', '', 'Unassigned, Digital Experience – SDK'),
(10583904, 'WK-REQ-955', 'MS Teams protocol between headset and dongle over Bluetooth.', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore, Digital Experience – PC'),
(10584005, 'WK-REQ-981', 'USB Audio Activity Detection (for AG)', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore'),
(10841159, 'WK-REQ-1026', 'Secure boot', 'Draft', 'Unspecified', '', 'Unassigned'),
(10841575, 'WK-REQ-1027', 'Ensure new security keys are generated', 'Draft', 'Unspecified', '', ''),
(10583691, 'WK-REQ-911', 'AVRCP functionality', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore'),
(10584088, 'WK-REQ-992', 'Asset tag', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore'),
(10583632, 'WK-REQ-909', 'Secure connections', 'Approved', 'Unspecified', '', 'Unassigned'),
(10583697, 'WK-REQ-913', 'Call management, USB', 'Approved', 'Unspecified', '', ''),
(10583762, 'WK-REQ-935', 'Support for new Unique Electrical Serial Number (UESN)', 'Rejected', 'Unspecified', '', 'Manufacturing Test'),
(10583828, 'WK-REQ-936', 'New PIDs assigned', 'Approved', 'Unspecified', '', ''),
(10584018, 'WK-REQ-989', 'UI elements', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore, HW Engineering'),
(10583941, 'WK-REQ-962', 'Range Perceived by User ', 'Approved', 'Unspecified', '', 'Audio, QA, UX'),
(10583735, 'WK-REQ-932', 'Robustness of unpacked unit', 'Approved', 'Unspecified', '', 'Mechanical Engineering, QA'),
(10583736, 'WK-REQ-933', 'Resistance to surface abrasion and chemical contact', 'Approved', 'Unspecified', '', 'QA'),
(10583737, 'WK-REQ-934', 'Robustness of packed unit', 'Approved', 'Unspecified', '', 'Packaging & Graphics, QA'),
(10583831, 'WK-REQ-938', 'Firmware update reliability', 'Approved', 'Unspecified', '', 'ESW CC&O DECT'),
(10583832, 'WK-REQ-939', 'Firmware upgrade performance', 'Approved', 'Unspecified', '', 'ESW CC&O DECT'),
(10583833, 'WK-REQ-940', 'Manufacturing test of release firmware', 'Approved', 'Unspecified', '', 'Manufacturing Test'),
(10818626, 'WK-REQ-1018', 'Bluetooth chipset', 'Approved', 'Unspecified', '', 'HW Engineering, HW RF, Manufacturing Test'),
(10818645, 'WK-REQ-1020', 'Over-voltage protection', 'Approved', 'Unspecified', '', 'HW Engineering, QA'),
(10818633, 'WK-REQ-1019', 'USB port', 'Approved', 'Unspecified', '', 'HW Engineering, Manufacturing Test, Mechanical Engineering'),
(10818684, 'WK-REQ-1021', 'LED', 'Approved', 'Unspecified', '', 'ESW Mobile, HW Engineering'),
(10818723, 'WK-REQ-1022', 'Antenna Performance and Bluetooth Range', 'Approved', 'Unspecified', '', 'HW Engineering, HW RF, QA'),
(10848274, 'WK-REQ-1028', 'CMF Requirement', 'Draft', 'Unspecified', 'Industrial Design', 'Mechanical Engineering, QA'),
(10848275, 'WK-REQ-1029', 'Multifunctional LED', 'Approved', 'Unspecified', 'Industrial Design', 'Mechanical Engineering, UX'),
(10848276, 'WK-REQ-1030', 'Push out force', 'Approved', 'Unspecified', '', 'QA'),
(10848277, 'WK-REQ-1031', 'Assembly force', 'Approved', 'Unspecified', '', 'Mechanical Engineering, QA'),
(10583906, 'WK-REQ-956', 'Packaging input', 'Approved', 'Unspecified', 'PMM', ''),
(10583698, 'WK-REQ-914', 'Answer call', 'Approved', 'Unspecified', '', ''),
(10583699, 'WK-REQ-915', 'Reject call', 'Approved', 'Unspecified', '', ''),
(10583700, 'WK-REQ-916', 'Waiting call going active', 'Approved', 'Unspecified', '', ''),
(10583701, 'WK-REQ-917', 'Waiting call disappearing', 'Approved', 'Unspecified', '', ''),
(10583702, 'WK-REQ-918', 'Outgoing call', 'Approved', 'Unspecified', '', ''),
(10583703, 'WK-REQ-919', 'Last Number Redial', 'Approved', 'Unspecified', '', ''),
(10583704, 'WK-REQ-920', 'Put active call on hold', 'Approved', 'Unspecified', '', ''),
(10583705, 'WK-REQ-921', 'Activate call on hold', 'Approved', 'Unspecified', '', ''),
(10583706, 'WK-REQ-922', 'End active call', 'Approved', 'Unspecified', '', ''),
(10583707, 'WK-REQ-923', 'Mute active call', 'Approved', 'Unspecified', '', ''),
(10583708, 'WK-REQ-924', 'Unmute muted active call', 'Approved', 'Unspecified', '', ''),
(10583709, 'WK-REQ-925', 'Answer call during active call', 'Approved', 'Unspecified', '', ''),
(10583710, 'WK-REQ-926', 'End active and answer waiting call', 'Approved', 'Unspecified', '', ''),
(10583711, 'WK-REQ-927', 'Reject call during active call', 'Approved', 'Unspecified', '', ''),
(10583712, 'WK-REQ-928', 'Swap calls during active call', 'Approved', 'Unspecified', '', ''),
(10583713, 'WK-REQ-929', 'End call activate other', 'Approved', 'Unspecified', '', ''),
(10583714, 'WK-REQ-930', 'End call', 'Approved', 'Unspecified', '', ''),
(10583715, 'WK-REQ-931', 'End all calls ', 'Approved', 'Unspecified', '', ''),
(10583988, 'WK-REQ-980', 'SKUs', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore'),
(10584009, 'WK-REQ-985', 'No Selective Suspend', 'Approved', 'Unspecified', '', ''),
(10584010, 'WK-REQ-986', 'USB Suspend', 'Approved', 'Unspecified', '', 'HW Engineering'),
(10584011, 'WK-REQ-987', 'Max power usage', 'Approved', 'Unspecified', '', 'HW Engineering'),
(10606897, 'WK-REQ-1001', 'Jabra Device support', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore'),
(10821561, 'WK-REQ-1023', 'Compatible with Jabra Link 950', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore'),
(10583964, 'WK-REQ-963', 'EU + EFTA', 'Approved', 'Unspecified', '', 'TA / Certification'),
(10583965, 'WK-REQ-964', 'USA', 'Approved', 'Unspecified', '', 'TA / Certification'),
(10583966, 'WK-REQ-965', 'Australia', 'Approved', 'Unspecified', '', 'TA / Certification'),
(10583967, 'WK-REQ-966', 'Canada', 'Approved', 'Unspecified', '', 'TA / Certification'),
(10583968, 'WK-REQ-967', 'China', 'Approved', 'Unspecified', '', 'TA / Certification'),
(10583969, 'WK-REQ-968', 'Hong Kong', 'Approved', 'Unspecified', '', 'TA / Certification'),
(10583970, 'WK-REQ-969', 'India', 'Approved', 'Unspecified', '', 'TA / Certification'),
(10583971, 'WK-REQ-970', 'Indonesia', 'Approved', 'Unspecified', '', 'TA / Certification'),
(10583972, 'WK-REQ-971', 'Japan', 'Approved', 'Unspecified', '', 'TA / Certification'),
(10583973, 'WK-REQ-972', 'Malaysia', 'Approved', 'Unspecified', '', 'TA / Certification'),
(10583974, 'WK-REQ-973', 'New Zealand', 'Approved', 'Unspecified', '', 'TA / Certification'),
(10583975, 'WK-REQ-974', 'Philippines', 'Approved', 'Unspecified', '', 'TA / Certification'),
(10583976, 'WK-REQ-975', 'Singapore', 'Approved', 'Unspecified', '', 'TA / Certification'),
(10583977, 'WK-REQ-976', 'South Korea', 'Approved', 'Unspecified', '', 'TA / Certification'),
(10583978, 'WK-REQ-977', 'Taiwan', 'Approved', 'Unspecified', '', 'TA / Certification'),
(10583979, 'WK-REQ-978', 'Brazil', 'Approved', 'Unspecified', '', 'TA / Certification'),
(10583980, 'WK-REQ-979', 'Mexico', 'Approved', 'Unspecified', '', 'TA / Certification'),
(10839508, 'WK-REQ-1025', 'A product interoperability with Jabra\'s key account (GA) HW/SW setup | #1 JPMC', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore, ESW CC&O DECT'),
(10778297, 'WK-REQ-1002', 'FW delivery', 'Approved', 'Unspecified', 'PM', 'ESW CC&O Bluecore, Manufacturing Test'),
(10778301, 'WK-REQ-1004', 'Chipset FW Programming', 'Textual change', 'Unspecified', '', 'Manufacturing Test'),
(10583834, 'WK-REQ-941', 'MFG.Test Mode', 'Approved', 'Unspecified', '', 'Manufacturing Test'),
(10778298, 'WK-REQ-1003', 'General information check', 'Approved', 'Unspecified', '', 'Manufacturing Test'),
(10778307, 'WK-REQ-1006', 'DC Measurement', 'Approved', 'Unspecified', '', 'HW Engineering, Manufacturing Test'),
(10778977, 'WK-REQ-1008', 'RF HW Check', 'Approved', 'Unspecified', '', 'Manufacturing Test'),
(10583864, 'WK-REQ-950', 'GNP Commands - Send', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore, Manufacturing Test'),
(10583860, 'WK-REQ-946', 'CTO support', 'Approved', 'Unspecified', '', 'Manufacturing Test'),
(10827878, 'WK-REQ-1024', 'Alpha and later samples must support FW upgrade', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore, Manufacturing Test'),
(10778306, 'WK-REQ-1005', 'USB current test', 'Approved', 'Unspecified', '', 'HW Engineering, Manufacturing Test'),
(10778809, 'WK-REQ-1007', 'LED Check', 'Approved', 'Unspecified', '', 'Manufacturing Test'),
(10584022, 'WK-REQ-990', 'LED', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore, HW Engineering, UX'),
(10790372, 'WK-REQ-1010', 'Configurable USB softphone functionality', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore'),
(10790373, 'WK-REQ-1011', 'Configurable out-of-band ringtone for USB softphone', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore'),
(10584012, 'WK-REQ-988', 'Instant audio from computer', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore'),
(10584089, 'WK-REQ-993', 'Configurable device name', 'Info pending', 'Unspecified', '', 'ESW CC&O WIFI'),
(10584024, 'WK-REQ-991', 'LED behaviour (with Teams indications)', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore'),
(10584142, 'WK-REQ-994', 'Support SuSE 64', 'Approved', 'Unspecified', '', 'ESW Mobile'),
(10584143, 'WK-REQ-995', 'Support Ubuntu LTS', 'Approved', 'Unspecified', '', 'ESW Mobile'),
(10584145, 'WK-REQ-996', 'Support on Mac OS', 'Approved', 'Unspecified', '', 'ESW Mobile'),
(10584147, 'WK-REQ-997', 'Support Windows 7 32/64', 'Approved', 'Unspecified', '', 'ESW Mobile'),
(10584148, 'WK-REQ-998', 'Support Windows 8.1 32/64', 'Approved', 'Unspecified', '', 'ESW Mobile'),
(10584149, 'WK-REQ-999', 'Support Windows 10 32/64', 'Approved', 'Unspecified', '', 'ESW Mobile'),
(10584150, 'WK-REQ-1000', 'Support Windows 11 ', 'Approved', 'Unspecified', '', 'ESW CC&O Bluecore');

-- --------------------------------------------------------

--
-- 表的结构 `alldefects`
--

CREATE TABLE `alldefects` (
  `id` int(11) DEFAULT NULL,
  `uniqueid` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `rel` text DEFAULT NULL,
  `team` text DEFAULT NULL,
  `priority` text DEFAULT NULL,
  `jira` text DEFAULT NULL,
  `upstream` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `alldefects`
--

INSERT INTO `alldefects` (`id`, `uniqueid`, `name`, `status`, `rel`, `team`, `priority`, `jira`, `upstream`) VALUES
(10846094, 'WK-BUG-1', 'Does not support Telemetry or not support well', 'Open', 'Unspecified', 'ESW BT', 'Major', '', ''),
(10846095, 'WK-BUG-2', '[SP IOP]Fail to reject second Teams incoming call', 'Open', 'Unspecified', 'ESW BT', 'Minor', '', ''),
(10846096, 'WK-BUG-3', 'The volume sync between PC and DUT will lost if quickly and continuously change volume up and down from HS', 'Open', 'Unspecified', 'ESW BT', 'Major', '', ''),
(10846097, 'WK-BUG-4', 'Volume controller work badly after mix call and music volume', 'Open', 'Unspecified', 'ESW BT', 'Major', '', '10827649'),
(10846098, 'WK-BUG-5', 'Not support GN HID, can\'t work with Cisco Jabber and so on GN HID protocol SP', 'Open', 'Unspecified', 'ESW BT', 'Major', '', ''),
(10846099, 'WK-BUG-6', 'HS volume step does not match requirement when connect with Wukong', 'Open', 'Unspecified', 'ESW BT', 'Minor', '', ''),
(10846101, 'WK-BUG-8', '[SP IOP]Mute function and state sync work badly if mute from SP and unmute from HS', 'Open', 'Unspecified', 'ESW BT', 'Major', '', '10827654, 10827666, 10827663'),
(10846100, 'WK-BUG-7', 'LE Scan is still open on FCS phase', 'Open', 'Unspecified', 'ESW BT', 'Major', '', ''),
(10846102, 'WK-BUG-9', 'HS\'s Teams LED will on 2s and off about 10s, then on again after end call', 'Open', 'Unspecified', 'ESW BT', 'Minor', '', ''),
(10846103, 'WK-BUG-10', 'Cannot turn volume up to 100 ', 'Open', 'Unspecified', 'ESW BT', 'Minor', '', ''),
(10846105, 'WK-BUG-11', 'Speaker only can work on 48000Hz, can\'t work well on others(8000/16000/32000/44100)', 'Open', 'Unspecified', 'ESW BT', 'Major', '', ''),
(10846106, 'WK-BUG-12', 'have clear noisy in HS when answer second incoming call, and the HS still flash incoming call LED after call answered and ended', 'Open', 'Unspecified', 'ESW BT', 'Major', '', ''),
(10846107, 'WK-BUG-13', 'Cannot mute device speaker from OS', 'Open', 'Unspecified', 'ESW BT', 'Minor', '', ''),
(10846108, 'WK-BUG-14', 'Can\'t handle 3-way call scenario correctly', 'Open', 'Unspecified', 'ESW BT', 'Major', '', '10827674'),
(10846109, 'WK-BUG-15', 'HS auto disconnected with Wukong quite often', 'Open', 'Unspecified', 'ESW BT', 'Trivial', '', ''),
(10846110, 'WK-BUG-16', 'Fail to answer the incoming call from HS after ended current active call from SP', 'Open', 'Unspecified', 'ESW BT', 'Minor', '', '10827678'),
(10846111, 'WK-BUG-17', 'Does not follow LED UI spec', 'Open', 'Unspecified', 'ESW BT', 'Minor', '', '10827619'),
(10846112, 'WK-BUG-18', 'Wukong will keep reboot on Ubuntu OS during call or music', 'Open', 'Unspecified', 'ESW BT', 'Major', '', ''),
(10846113, 'WK-BUG-19', 'Device FW will retrieve to Airoha FW if select LEA mode when paring', 'Open', 'Unspecified', 'ESW BT', 'Trivial', '', ''),
(10846114, 'WK-BUG-20', '[FT] Media control does not support well', 'Closed', 'Unspecified', 'ESW BT', 'Major', '', ''),
(10846115, 'WK-BUG-21', 'Failure to enumerate the customer report descriptor in ADK 3.6.0', 'Closed', 'Unspecified', 'ESW BT', 'Trivial', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `alldesignspec`
--

CREATE TABLE `alldesignspec` (
  `id` int(11) DEFAULT NULL,
  `uniqueid` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `rel` text DEFAULT NULL,
  `team` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `alldesignspec`
--

INSERT INTO `alldesignspec` (`id`, `uniqueid`, `name`, `status`, `rel`, `team`) VALUES
(10583716, 'WK-FSPEC-107', 'Legacy specification', 'Previously approved', 'Unspecified', 'Unassigned'),
(10583835, 'WK-FSPEC-108', 'Android Fast Pair', 'Previously approved', 'Unspecified', 'Unassigned'),
(10583836, 'WK-FSPEC-109', 'Jack connection', 'Previously approved', 'Unspecified', 'Unassigned'),
(10583837, 'WK-FSPEC-110', 'Battery voltage measurement in STM', 'Previously approved', 'Unspecified', 'Unassigned'),
(10584013, 'WK-FSPEC-112', 'USB interface', 'Approved', 'Unspecified', 'Unassigned'),
(10848338, 'WK-FSPEC-124', 'ID Elements', 'Draft', 'Unspecified', 'Unassigned'),
(10848339, 'WK-FSPEC-125', 'CMF', 'Draft', 'Unspecified', 'Unassigned'),
(10848340, 'WK-FSPEC-126', 'UI', 'Draft', 'Unspecified', 'Unassigned'),
(10848341, 'WK-FSPEC-127', 'Size and shape', 'Draft', 'Unspecified', 'Unassigned'),
(10848342, 'WK-FSPEC-128', 'What is in', 'Draft', 'Unspecified', 'Unassigned'),
(10848343, 'WK-FSPEC-129', 'Critical Requirements', 'Draft', 'Unspecified', 'Unassigned'),
(10848344, 'WK-FSPEC-130', 'Assembly structure', 'Draft', 'Unspecified', 'Unassigned'),
(10848345, 'WK-FSPEC-131', 'What is guiding what', 'Draft', 'Unspecified', 'Unassigned'),
(10848346, 'WK-FSPEC-132', 'BOM', 'Draft', 'Unspecified', 'Unassigned'),
(10848347, 'WK-FSPEC-133', 'Assembly', 'Draft', 'Unspecified', 'Unassigned'),
(10848348, 'WK-FSPEC-134', '50-08900 USB Cover', 'Draft', 'Unspecified', 'Unassigned'),
(10848349, 'WK-FSPEC-135', '50-08901 Lightguide', 'Draft', 'Unspecified', 'Unassigned'),
(10848350, 'WK-FSPEC-136', '50-08902 Metal Cap', 'Draft', 'Unspecified', 'Unassigned'),
(10848351, 'WK-FSPEC-137', '50-09071 ESD Spring', 'Draft', 'Unspecified', 'Unassigned'),
(10848352, 'WK-FSPEC-138', 'Gate AB presentation', 'Draft', 'Unspecified', 'Unassigned'),
(10848354, 'WK-FSPEC-139', 'Saga-C ID Elements', 'Draft', 'Unspecified', 'Unassigned'),
(10848355, 'WK-FSPEC-140', 'CMF', 'Draft', 'Unspecified', 'Unassigned'),
(10848356, 'WK-FSPEC-141', 'UI', 'Draft', 'Unspecified', 'Unassigned'),
(10848357, 'WK-FSPEC-142', 'Size and shape', 'Draft', 'Unspecified', 'Unassigned'),
(10848358, 'WK-FSPEC-143', 'Critical stack ups', 'Draft', 'Unspecified', 'Unassigned'),
(10848359, 'WK-FSPEC-144', 'Assembly structure', 'Draft', 'Unspecified', 'Unassigned'),
(10848360, 'WK-FSPEC-145', 'What is guiding what', 'Draft', 'Unspecified', 'Unassigned'),
(10848361, 'WK-FSPEC-146', 'BOM', 'Draft', 'Unspecified', 'Unassigned'),
(10848362, 'WK-FSPEC-147', 'Assembly', 'Draft', 'Unspecified', 'Unassigned'),
(10848363, 'WK-FSPEC-148', '50-09051 Body', 'Draft', 'Unspecified', 'Unassigned'),
(10848364, 'WK-FSPEC-149', '50-09052 Cap', 'Draft', 'Unspecified', 'Unassigned'),
(10848365, 'WK-FSPEC-150', '50-09053 Lightguide', 'Draft', 'Unspecified', 'Unassigned'),
(10848366, 'WK-FSPEC-151', '50-09054 Antenna', 'Draft', 'Unspecified', 'Unassigned'),
(10848367, 'WK-FSPEC-152', 'Gate AB PowerPoint presentation', 'Draft', 'Unspecified', 'Unassigned'),
(10817942, 'WK-FSPEC-113', 'Production Test Concept', 'Draft', 'Unspecified', 'Unassigned'),
(10583838, 'WK-FSPEC-111', 'FW Download', 'Draft', 'Unspecified', 'Unassigned'),
(10827693, 'WK-FSPEC-122', 'FW Download - Fixture design', 'Draft', 'Unspecified', 'Unassigned'),
(10823260, 'WK-FSPEC-114', 'PCBA Test ', 'Draft', 'Unspecified', 'Unassigned'),
(10827726, 'WK-FSPEC-123', 'PCBA Test - Fixture design', 'Draft', 'Unspecified', 'Unassigned'),
(10824964, 'WK-FSPEC-120', 'CTO', 'Draft', 'Unspecified', 'Unassigned'),
(10824966, 'WK-FSPEC-121', 'WanChai', 'Draft', 'Unspecified', 'Unassigned');

-- --------------------------------------------------------

--
-- 表的结构 `allfeatures`
--

CREATE TABLE `allfeatures` (
  `id` int(11) DEFAULT NULL,
  `uniqueid` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `rel` text DEFAULT NULL,
  `test_status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `allfeatures`
--

INSERT INTO `allfeatures` (`id`, `uniqueid`, `name`, `status`, `rel`, `test_status`) VALUES
(10583729, 'WK-FEAT-320', 'Durability', 'Approved', 'Unspecified', NULL),
(10584016, 'WK-FEAT-333', 'UI elements', 'Approved', 'Unspecified', NULL),
(10583925, 'WK-FEAT-327', 'Platform', 'Approved', 'Unspecified', NULL),
(10584087, 'WK-FEAT-335', 'User data asset management', 'Approved', 'Unspecified', NULL),
(10583963, 'WK-FEAT-329', 'Regulatory approvals Regions', 'Approved', 'Unspecified', NULL),
(10583690, 'WK-FEAT-318', 'AVRCP functionality', 'Approved', 'Unspecified', NULL),
(10583903, 'WK-FEAT-325', 'MS Teams protocol between headset and dongle over Bluetooth.', 'Approved', 'Unspecified', NULL),
(10583930, 'WK-FEAT-328', 'Range, wireless', 'Approved', 'Unspecified', NULL),
(10583604, 'WK-FEAT-304', 'Audio Gateway - Audio Chain Communication Mode', 'Approved', 'Unspecified', NULL),
(10583605, 'WK-FEAT-305', 'Audio Gateway - Audio Chain Music Mode', 'Approved', 'Unspecified', NULL),
(10583606, 'WK-FEAT-306', 'A2DP source functionality ', 'Approved', 'Unspecified', NULL),
(10583607, 'WK-FEAT-307', 'Call manager functionality', 'Approved', 'Unspecified', NULL),
(10583608, 'WK-FEAT-308', 'Configurable range setting', 'Approved', 'Unspecified', NULL),
(10583609, 'WK-FEAT-309', 'Configurable security Bluetooth dongle', 'Approved', 'Unspecified', NULL),
(10583610, 'WK-FEAT-310', 'Handsfree audio gateway functionality', 'Approved', 'Unspecified', NULL),
(10583611, 'WK-FEAT-311', 'Pairing controllable from USB host.', 'Approved', 'Unspecified', NULL),
(10583612, 'WK-FEAT-312', 'SBC adaptive bit rate', 'Approved', 'Unspecified', NULL),
(10583613, 'WK-FEAT-313', 'Secure connections', 'Approved', 'Unspecified', NULL),
(10583615, 'WK-FEAT-315', 'USB Audio Activity Detection (for AG)', 'Approved', 'Unspecified', NULL),
(10583617, 'WK-FEAT-317', 'Bluetooth link quality logging', 'Approved', 'Unspecified', NULL),
(10584004, 'WK-FEAT-332', 'Streaming USB bidirectional/microphone audio to SCO', 'Approved', 'Unspecified', NULL),
(10583695, 'WK-FEAT-319', 'Call management, USB', 'Approved', 'Unspecified', NULL),
(10583827, 'WK-FEAT-322', 'Firmware update USB', 'Approved', 'Unspecified', NULL),
(10584085, 'WK-FEAT-334', 'USB Media Control on Bluetooth dongles and headsets.', 'Approved', 'Unspecified', NULL),
(10584094, 'WK-FEAT-336', 'Volume control and synchronization, USB audio', 'Approved', 'Unspecified', NULL),
(10583985, 'WK-FEAT-330', 'Safe and secure firmware', 'Approved', 'Unspecified', NULL),
(10583761, 'WK-FEAT-321', 'Device Tracking', 'Approved', 'Unspecified', NULL),
(10583842, 'WK-FEAT-323', 'Item tracking', 'Approved', 'Unspecified', NULL),
(10583855, 'WK-FEAT-324', 'Jabra production support', 'Approved', 'Unspecified', NULL),
(10583905, 'WK-FEAT-326', 'Packaging', 'Approved', 'Unspecified', NULL),
(10583986, 'WK-FEAT-331', 'SKUs', 'Approved', 'Unspecified', NULL),
(10583614, 'WK-FEAT-314', 'Secure pairing controlled from USB host', 'Rejected', 'Unspecified', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `allrequirements`
--

CREATE TABLE `allrequirements` (
  `id` int(11) DEFAULT NULL,
  `uniqueid` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `rel` text DEFAULT NULL,
  `upstream` text DEFAULT NULL,
  `downstream` text DEFAULT NULL,
  `team` text DEFAULT NULL,
  `test_status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `allrequirements`
--

INSERT INTO `allrequirements` (`id`, `uniqueid`, `name`, `status`, `rel`, `upstream`, `downstream`, `team`, `test_status`) VALUES
(10799098, 'WK-REQ-1012', 'Sampling rates and bit depths from Host', 'Approved', 'Unspecified', '', '', '', NULL),
(10799598, 'WK-REQ-1015', 'Audio latency', 'Approved', 'Unspecified', '', '', '', NULL),
(10799624, 'WK-REQ-1016', 'Audio quality as a function of package loss', 'Approved', 'Unspecified', '', '', '', NULL),
(10807569, 'WK-REQ-1017', 'Audio Performance', 'Approved', 'Unspecified', '', '', '', NULL),
(10583619, 'WK-REQ-896', 'Handsfree audio gateway functionality', 'Approved', 'Unspecified', '10583610', '', '', NULL),
(10583620, 'WK-REQ-897', 'Role supported for A2DP functionality for USB dongle device', 'Approved', 'Unspecified', '10583606', '', '', NULL),
(10583621, 'WK-REQ-898', 'Supported Codecs for A2DP functionality for USB dongle device.  ', 'Approved', 'Unspecified', '10583606', '10823655', '', NULL),
(10583629, 'WK-REQ-906', 'Call manager functionality', 'Approved', 'Unspecified', '10583607', '', '', NULL),
(10583630, 'WK-REQ-907', 'Configurable range setting', 'Approved', 'Unspecified', '10583608', '', '', NULL),
(10583631, 'WK-REQ-908', 'Pairing controllable from USB host', 'Approved', 'Unspecified', '10583611', '10704241', '', NULL),
(10583904, 'WK-REQ-955', 'MS Teams protocol between headset and dongle over Bluetooth.', 'Approved', 'Unspecified', '10583903', '10703520', '', NULL),
(10584005, 'WK-REQ-981', 'USB Audio Activity Detection (for AG)', 'Approved', 'Unspecified', '10584004', '10704243', '', NULL),
(10841159, 'WK-REQ-1026', 'Secure boot', 'Draft', 'Unspecified', '10583985', '', '', NULL),
(10841575, 'WK-REQ-1027', 'Ensure new security keys are generated', 'Draft', 'Unspecified', '10583985', '', '', NULL),
(10583691, 'WK-REQ-911', 'AVRCP functionality', 'Approved', 'Unspecified', '10583690', '10823428', '', NULL),
(10584088, 'WK-REQ-992', 'Asset tag', 'Approved', 'Unspecified', '10584087', '', '', NULL),
(10583632, 'WK-REQ-909', 'Secure connections', 'Approved', 'Unspecified', '10583613', '', '', NULL),
(10583697, 'WK-REQ-913', 'Call management, USB', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583762, 'WK-REQ-935', 'Support for new Unique Electrical Serial Number (UESN)', 'Rejected', 'Unspecified', '10583761', '', '', NULL),
(10583828, 'WK-REQ-936', 'New PIDs assigned', 'Approved', 'Unspecified', '10583827', '10583716', '', NULL),
(10584018, 'WK-REQ-989', 'UI elements', 'Approved', 'Unspecified', '10584016', '10703520', '', NULL),
(10583941, 'WK-REQ-962', 'Range Perceived by User ', 'Approved', 'Unspecified', '10583930', '', '', NULL),
(10583735, 'WK-REQ-932', 'Robustness of unpacked unit', 'Approved', 'Unspecified', '10583729', '', '', NULL),
(10583736, 'WK-REQ-933', 'Resistance to surface abrasion and chemical contact', 'Approved', 'Unspecified', '10583729', '', '', NULL),
(10583737, 'WK-REQ-934', 'Robustness of packed unit', 'Approved', 'Unspecified', '10583729, 10583905', '', '', NULL),
(10583831, 'WK-REQ-938', 'Firmware update reliability', 'Approved', 'Unspecified', '10583827', '', '', NULL),
(10583832, 'WK-REQ-939', 'Firmware upgrade performance', 'Approved', 'Unspecified', '10583827', '10703776', '', NULL),
(10583833, 'WK-REQ-940', 'Manufacturing test of release firmware', 'Approved', 'Unspecified', '10583827, 10583855', '', '', NULL),
(10818626, 'WK-REQ-1018', 'Bluetooth chipset', 'Approved', 'Unspecified', '10583925', '', '', NULL),
(10818645, 'WK-REQ-1020', 'Over-voltage protection', 'Approved', 'Unspecified', '10583925', '', '', NULL),
(10818633, 'WK-REQ-1019', 'USB port', 'Approved', 'Unspecified', '10583925', '', '', NULL),
(10818684, 'WK-REQ-1021', 'LED', 'Approved', 'Unspecified', '10583925', '', '', NULL),
(10818723, 'WK-REQ-1022', 'Antenna Performance and Bluetooth Range', 'Approved', 'Unspecified', '10583925', '', '', NULL),
(10848274, 'WK-REQ-1028', 'CMF Requirement', 'Draft', 'Unspecified', '10583729', '', 'Industrial Design', NULL),
(10848275, 'WK-REQ-1029', 'Multifunctional LED', 'Approved', 'Unspecified', '10583729', '', 'Industrial Design', NULL),
(10848276, 'WK-REQ-1030', 'Push out force', 'Approved', 'Unspecified', '10583729', '', '', NULL),
(10848277, 'WK-REQ-1031', 'Assembly force', 'Approved', 'Unspecified', '10583729', '', '', NULL),
(10583906, 'WK-REQ-956', 'Packaging input', 'Approved', 'Unspecified', '10583905', '', 'PMM', NULL),
(10583698, 'WK-REQ-914', 'Answer call', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583699, 'WK-REQ-915', 'Reject call', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583700, 'WK-REQ-916', 'Waiting call going active', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583701, 'WK-REQ-917', 'Waiting call disappearing', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583702, 'WK-REQ-918', 'Outgoing call', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583703, 'WK-REQ-919', 'Last Number Redial', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583704, 'WK-REQ-920', 'Put active call on hold', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583705, 'WK-REQ-921', 'Activate call on hold', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583706, 'WK-REQ-922', 'End active call', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583707, 'WK-REQ-923', 'Mute active call', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583708, 'WK-REQ-924', 'Unmute muted active call', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583709, 'WK-REQ-925', 'Answer call during active call', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583710, 'WK-REQ-926', 'End active and answer waiting call', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583711, 'WK-REQ-927', 'Reject call during active call', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583712, 'WK-REQ-928', 'Swap calls during active call', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583713, 'WK-REQ-929', 'End call activate other', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583714, 'WK-REQ-930', 'End call', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583715, 'WK-REQ-931', 'End all calls ', 'Approved', 'Unspecified', '10583695', '', '', NULL),
(10583988, 'WK-REQ-980', 'SKUs', 'Approved', 'Unspecified', '10583986', '', '', NULL),
(10584009, 'WK-REQ-985', 'No Selective Suspend', 'Approved', 'Unspecified', '10584004', '10584013', '', NULL),
(10584010, 'WK-REQ-986', 'USB Suspend', 'Approved', 'Unspecified', '10584004', '10584013', '', NULL),
(10584011, 'WK-REQ-987', 'Max power usage', 'Approved', 'Unspecified', '10584004', '10584013', '', NULL),
(10606897, 'WK-REQ-1001', 'Jabra Device support', 'Approved', 'Unspecified', '', '', '', NULL),
(10821561, 'WK-REQ-1023', 'Compatible with Jabra Link 950', 'Approved', 'Unspecified', '', '', '', NULL),
(10583964, 'WK-REQ-963', 'EU + EFTA', 'Approved', 'Unspecified', '10583963', '', '', NULL),
(10583965, 'WK-REQ-964', 'USA', 'Approved', 'Unspecified', '10583963', '', '', NULL),
(10583966, 'WK-REQ-965', 'Australia', 'Approved', 'Unspecified', '10583963', '', '', NULL),
(10583967, 'WK-REQ-966', 'Canada', 'Approved', 'Unspecified', '10583963', '', '', NULL),
(10583968, 'WK-REQ-967', 'China', 'Approved', 'Unspecified', '10583963', '', '', NULL),
(10583969, 'WK-REQ-968', 'Hong Kong', 'Approved', 'Unspecified', '10583963', '', '', NULL),
(10583970, 'WK-REQ-969', 'India', 'Approved', 'Unspecified', '10583963', '', '', NULL),
(10583971, 'WK-REQ-970', 'Indonesia', 'Approved', 'Unspecified', '10583963', '', '', NULL),
(10583972, 'WK-REQ-971', 'Japan', 'Approved', 'Unspecified', '10583963', '', '', NULL),
(10583973, 'WK-REQ-972', 'Malaysia', 'Approved', 'Unspecified', '10583963', '', '', NULL),
(10583974, 'WK-REQ-973', 'New Zealand', 'Approved', 'Unspecified', '10583963', '', '', NULL),
(10583975, 'WK-REQ-974', 'Philippines', 'Approved', 'Unspecified', '10583963', '', '', NULL),
(10583976, 'WK-REQ-975', 'Singapore', 'Approved', 'Unspecified', '10583963', '', '', NULL),
(10583977, 'WK-REQ-976', 'South Korea', 'Approved', 'Unspecified', '10583963', '', '', NULL),
(10583978, 'WK-REQ-977', 'Taiwan', 'Approved', 'Unspecified', '10583963', '', '', NULL),
(10583979, 'WK-REQ-978', 'Brazil', 'Approved', 'Unspecified', '10583963', '', '', NULL),
(10583980, 'WK-REQ-979', 'Mexico', 'Approved', 'Unspecified', '10583963', '', '', NULL),
(10839508, 'WK-REQ-1025', 'A product interoperability with Jabra\'s key account (GA) HW/SW setup | #1 JPMC', 'Approved', 'Unspecified', '', '', '', NULL),
(10778297, 'WK-REQ-1002', 'FW delivery', 'Approved', 'Unspecified', '', '', 'PM', NULL),
(10778301, 'WK-REQ-1004', 'Chipset FW Programming', 'Textual change', 'Unspecified', '', '', '', NULL),
(10583834, 'WK-REQ-941', 'MFG.Test Mode', 'Approved', 'Unspecified', '10583827', '10583838', '', NULL),
(10778298, 'WK-REQ-1003', 'General information check', 'Approved', 'Unspecified', '', '', '', NULL),
(10778307, 'WK-REQ-1006', 'DC Measurement', 'Approved', 'Unspecified', '', '', '', NULL),
(10778977, 'WK-REQ-1008', 'RF HW Check', 'Approved', 'Unspecified', '', '', '', NULL),
(10583864, 'WK-REQ-950', 'GNP Commands - Send', 'Approved', 'Unspecified', '10583855', '', '', NULL),
(10583860, 'WK-REQ-946', 'CTO support', 'Approved', 'Unspecified', '10583855', '', '', NULL),
(10827878, 'WK-REQ-1024', 'Alpha and later samples must support FW upgrade', 'Approved', 'Unspecified', '', '', '', NULL),
(10778306, 'WK-REQ-1005', 'USB current test', 'Approved', 'Unspecified', '', '', '', NULL),
(10778809, 'WK-REQ-1007', 'LED Check', 'Approved', 'Unspecified', '', '', '', NULL),
(10584022, 'WK-REQ-990', 'LED', 'Approved', 'Unspecified', '10584016', '10703520', '', NULL),
(10790372, 'WK-REQ-1010', 'Configurable USB softphone functionality', 'Approved', 'Unspecified', '10583695', '10819562', '', NULL),
(10790373, 'WK-REQ-1011', 'Configurable out-of-band ringtone for USB softphone', 'Approved', 'Unspecified', '10583695', '10819563', '', NULL),
(10584012, 'WK-REQ-988', 'Instant audio from computer', 'Approved', 'Unspecified', '10584004, 10583615', '', '', NULL),
(10584089, 'WK-REQ-993', 'Configurable device name', 'Info pending', 'Unspecified', '10584087', '', '', NULL),
(10584024, 'WK-REQ-991', 'LED behaviour (with Teams indications)', 'Approved', 'Unspecified', '10584016', '10703520', '', NULL),
(10584142, 'WK-REQ-994', 'Support SuSE 64', 'Approved', 'Unspecified', '10584094', '', '', NULL),
(10584143, 'WK-REQ-995', 'Support Ubuntu LTS', 'Approved', 'Unspecified', '10584094', '', '', NULL),
(10584145, 'WK-REQ-996', 'Support on Mac OS', 'Approved', 'Unspecified', '10584094', '', '', NULL),
(10584147, 'WK-REQ-997', 'Support Windows 7 32/64', 'Approved', 'Unspecified', '10584094', '', '', NULL),
(10584148, 'WK-REQ-998', 'Support Windows 8.1 32/64', 'Approved', 'Unspecified', '10584094', '', '', NULL),
(10584149, 'WK-REQ-999', 'Support Windows 10 32/64', 'Approved', 'Unspecified', '10584094', '', '', NULL),
(10584150, 'WK-REQ-1000', 'Support Windows 11 ', 'Approved', 'Unspecified', '10584094', '', '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `alluserstories`
--

CREATE TABLE `alluserstories` (
  `id` int(11) DEFAULT NULL,
  `uniqueid` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `rel` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `changes`
--

CREATE TABLE `changes` (
  `rel` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `priority` text DEFAULT NULL,
  `requester` text DEFAULT NULL,
  `date` text DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `coverage`
--

CREATE TABLE `coverage` (
  `team` text DEFAULT NULL,
  `covered` int(11) DEFAULT NULL,
  `expected` int(11) DEFAULT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `coverage`
--

INSERT INTO `coverage` (`team`, `covered`, `expected`, `date`) VALUES
('Audio', 0, 5, '2023-06-26'),
('ESW CC&O Bluecore', 0, 22, '2023-06-26'),
('HW RF', 0, 3, '2023-06-26'),
('Unassigned', 0, 3, '2023-06-26'),
('Digital Experience – SDK', 0, 1, '2023-06-26'),
('Digital Experience – PC', 0, 1, '2023-06-26'),
('Manufacturing Test', 0, 15, '2023-06-26'),
('HW Engineering', 0, 11, '2023-06-26'),
('QA', 0, 9, '2023-06-26'),
('UX', 0, 3, '2023-06-26'),
('Mechanical Engineering', 0, 5, '2023-06-26'),
('Packaging & Graphics', 0, 1, '2023-06-26'),
('ESW CC&O DECT', 0, 3, '2023-06-26'),
('ESW Mobile', 0, 7, '2023-06-26'),
('Industrial Design', 2, 2, '2023-06-26'),
('PMM', 1, 1, '2023-06-26'),
('TA / Certification', 0, 17, '2023-06-26'),
('PM', 1, 1, '2023-06-26'),
('ESW CC&O WIFI', 0, 1, '2023-06-26');

-- --------------------------------------------------------

--
-- 表的结构 `defects`
--

CREATE TABLE `defects` (
  `rel` text DEFAULT NULL,
  `team` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `priority` text DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `defects`
--

INSERT INTO `defects` (`rel`, `team`, `status`, `priority`, `count`, `date`) VALUES
('Unspecified', 'ESW BT', 'Closed', 'Major', 1, '2023-06-26'),
('Unspecified', 'ESW BT', 'Closed', 'Trivial', 1, '2023-06-26'),
('Unspecified', 'ESW BT', 'Open', 'Major', 10, '2023-06-26'),
('Unspecified', 'ESW BT', 'Open', 'Minor', 7, '2023-06-26'),
('Unspecified', 'ESW BT', 'Open', 'Trivial', 2, '2023-06-26');

-- --------------------------------------------------------

--
-- 表的结构 `designspec`
--

CREATE TABLE `designspec` (
  `rel` text DEFAULT NULL,
  `team` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `designspec`
--

INSERT INTO `designspec` (`rel`, `team`, `status`, `count`, `date`) VALUES
('Unspecified', 'Unassigned', 'Approved', 1, '2023-06-26'),
('Unspecified', 'Unassigned', 'Draft', 36, '2023-06-26'),
('Unspecified', 'Unassigned', 'Previously approved', 4, '2023-06-26');

-- --------------------------------------------------------

--
-- 表的结构 `feattest`
--

CREATE TABLE `feattest` (
  `rel` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `count` text DEFAULT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `feattest`
--

INSERT INTO `feattest` (`rel`, `status`, `count`, `date`) VALUES
('Unspecified', 'PASSED', '0', '2023-06-26'),
('Unspecified', 'FAILED', '0', '2023-06-26'),
('Unspecified', 'INCOMPLETE TESTING', '0', '2023-06-26'),
('Unspecified', 'MISSING TEST COVERAGE', '0', '2023-06-26');

-- --------------------------------------------------------

--
-- 表的结构 `features`
--

CREATE TABLE `features` (
  `rel` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `features`
--

INSERT INTO `features` (`rel`, `status`, `count`, `date`) VALUES
('Unspecified', 'Approved', 31, '2023-06-26'),
('Unspecified', 'Rejected', 1, '2023-06-26');

-- --------------------------------------------------------

--
-- 表的结构 `reqtest`
--

CREATE TABLE `reqtest` (
  `rel` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `count` text DEFAULT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `reqtest`
--

INSERT INTO `reqtest` (`rel`, `status`, `count`, `date`) VALUES
('Unspecified', 'PASSED', '0', '2023-06-26'),
('Unspecified', 'FAILED', '0', '2023-06-26'),
('Unspecified', 'INCOMPLETE TESTING', '0', '2023-06-26'),
('Unspecified', 'MISSING TEST COVERAGE', '0', '2023-06-26');

-- --------------------------------------------------------

--
-- 表的结构 `requirements`
--

CREATE TABLE `requirements` (
  `rel` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- 转存表中的数据 `requirements`
--

INSERT INTO `requirements` (`rel`, `status`, `count`, `date`) VALUES
('Unspecified', 'Approved', 98, '2023-06-26'),
('Unspecified', 'Draft', 3, '2023-06-26'),
('Unspecified', 'Info pending', 1, '2023-06-26'),
('Unspecified', 'Rejected', 1, '2023-06-26'),
('Unspecified', 'Textual change', 1, '2023-06-26');

-- --------------------------------------------------------

--
-- 表的结构 `userstories`
--

CREATE TABLE `userstories` (
  `rel` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
