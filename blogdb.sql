-- MySQL dump 10.15  Distrib 10.0.36-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: blogdb
-- ------------------------------------------------------
-- Server version	10.0.36-MariaDB-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Article`
--

DROP TABLE IF EXISTS `Article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Article` (
  `title` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `body` text NOT NULL,
  `submitted` datetime NOT NULL,
  PRIMARY KEY (`title`),
  KEY `email` (`email`),
  CONSTRAINT `Article_ibfk_1` FOREIGN KEY (`email`) REFERENCES `User` (`email`) ON DELETE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Article`
--

LOCK TABLES `Article` WRITE;
/*!40000 ALTER TABLE `Article` DISABLE KEYS */;
INSERT INTO `Article` VALUES ('Another post!','guy@gmail.com','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean augue dolor, lacinia in congue quis, condimentum non nunc. Phasellus ut sapien quis massa suscipit ornare eu porta turpis. Sed tempor magna et ex tincidunt tempus. Phasellus nulla dolor, vestibulum in tempus vitae, bibendum nec lectus. Nulla a turpis eget ex sagittis tincidunt quis a ex. Nunc id rhoncus purus. Aliquam convallis egestas blandit.\n\nDonec aliquam malesuada velit in dictum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus at rutrum nisi. Curabitur at luctus tellus. Cras vulputate justo leo. Vivamus eget metus a lacus aliquet rhoncus quis sit amet elit. Suspendisse lobortis ut turpis vitae dictum. Nulla iaculis molestie dolor, ut pellentesque leo pharetra id. Cras lobortis, dolor eget cursus mattis, enim neque scelerisque eros, quis molestie nisi quam quis ligula. Quisque condimentum congue odio, ac semper libero fringilla sed. Duis augue sapien, pretium at ullamcorper sit amet, rhoncus et purus.\n\nEtiam vitae dignissim odio, cursus facilisis magna. Proin velit nulla, viverra vitae egestas et, mollis ac erat. Proin semper condimentum ex ac vestibulum. Suspendisse vitae tempus felis. Donec pellentesque pulvinar justo, ac volutpat metus malesuada sed. Quisque non dapibus eros, quis porta lectus. Vivamus egestas sapien sit amet felis porta, id facilisis elit auctor. Pellentesque sit amet rhoncus leo, ut ullamcorper sapien. Fusce tincidunt metus vitae purus ullamcorper, eu porttitor diam euismod. Nam eu elit fermentum, interdum arcu sed, cursus risus. Sed venenatis viverra laoreet.\n\nClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus pretium accumsan leo et vestibulum. Curabitur odio neque, tincidunt non dolor et, imperdiet commodo ipsum. Maecenas maximus lectus sit amet ipsum porttitor lacinia. Morbi at nibh odio. Pellentesque id sem tincidunt, convallis nunc nec, ullamcorper leo. Morbi porta sodales elit nec varius. Maecenas felis velit, fermentum non velit quis, lobortis aliquam dui.\n\nCurabitur ultricies vitae est non lobortis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tristique gravida hendrerit. Sed feugiat, risus vel rutrum feugiat, risus magna consectetur arcu, nec scelerisque nunc sem vel enim. Duis vehicula ipsum nibh, at blandit massa iaculis ac. Donec vitae commodo justo, sed viverra ligula. Fusce a ex mauris. Duis id placerat nibh. Vestibulum laoreet sodales odio sed lacinia.\n\nNunc congue placerat velit, id dignissim elit congue eu. Fusce congue diam rutrum eros condimentum accumsan. Suspendisse ultrices libero pulvinar leo porta, bibendum vehicula diam gravida. Integer vel mi sit amet turpis efficitur suscipit sodales ac tortor. Nulla mi nibh, pellentesque eu placerat vel, molestie nec nisi. Sed eget metus ut mauris scelerisque dictum. Vivamus congue pharetra dignissim. In volutpat massa nisl, sit amet finibus sem varius id. Vestibulum tristique sagittis nunc vitae placerat. Curabitur et risus molestie, ultricies erat id, maximus sapien. Vivamus faucibus varius arcu. Suspendisse felis massa, auctor et ultricies sed, tempor eu dui. Morbi ac purus sed dolor viverra sodales vel eu velit.\n\nSed laoreet sagittis quam, vel varius nibh. Etiam ultricies ultricies augue, sit amet rhoncus diam consectetur ut. Mauris imperdiet lacus erat, non cursus tortor lacinia sed. Nunc consequat consectetur consectetur. Pellentesque hendrerit blandit facilisis. In fringilla ultricies erat iaculis venenatis. Fusce libero nunc, rhoncus quis porttitor vitae, tincidunt sit amet ipsum. Integer consectetur mi ex, eu euismod orci lobortis eleifend. Cras molestie ultrices tellus ac tempor. Proin non pretium massa. Nulla facilisi. Quisque venenatis tortor lorem, at maximus felis ultrices id. Mauris et placerat leo, sed elementum velit.\n\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed a convallis risus, quis vehicula ipsum. Fusce lobortis erat enim. Suspendisse luctus, neque et congue euismod, mi purus luctus erat, vel luctus metus elit sit amet felis. Etiam scelerisque nisl mi, ac euismod dui volutpat vitae. Nunc sed mauris vel ligula elementum porttitor eget luctus arcu. Aliquam eget lectus in orci efficitur pulvinar non eget ante.\n\nFusce eget vehicula ex. Integer dolor tortor, rhoncus id velit at, finibus molestie nisl. Ut quis pretium tellus, vitae ullamcorper tellus. Donec purus ipsum, euismod non rhoncus pulvinar, pulvinar quis felis. Duis congue, nisl faucibus ultrices vestibulum, nisi neque commodo ex, id eleifend mi nibh nec elit. Vestibulum id neque dolor. Vivamus luctus purus sed metus tempus scelerisque. Donec convallis magna eget ante mattis sodales. Nulla condimentum eu velit sit amet molestie. Ut semper non libero at suscipit.\n\nEtiam pharetra consequat rhoncus. Sed mollis turpis diam, vitae varius ex commodo sed. Fusce ac lectus orci. Ut tellus ante, congue non cursus ut, maximus vel augue. Nulla scelerisque elementum lacus quis aliquet. Ut in mattis ex. Aliquam consequat quam eget turpis semper pharetra. Donec elit magna, condimentum quis sollicitudin id, pellentesque in mauris. Maecenas nec volutpat metus. Quisque finibus viverra pellentesque. Praesent ante orci, feugiat in velit ut, laoreet sollicitudin metus. Nulla sagittis maximus tincidunt.\n\nMorbi vel odio id metus sagittis elementum vitae non turpis. Quisque vulputate fermentum dapibus. Curabitur in mattis ex. Nullam pellentesque consequat ligula, in maximus mi. In sem tellus, pulvinar in tortor vitae, finibus placerat eros. In euismod vulputate turpis nec aliquet. Cras suscipit luctus eros, imperdiet semper tellus rutrum id. Ut tristique lacus enim, vel placerat massa interdum at. Phasellus ut erat pulvinar, molestie lectus ac, consectetur dolor. Nunc tempor nisi et dolor malesuada gravida. Quisque vitae gravida libero. In hac habitasse platea dictumst.\n\nPraesent lacinia arcu sem, a pretium nunc venenatis vel. Pellentesque vulputate felis porta quam faucibus tempus. Sed vitae tincidunt mauris. Nullam ac felis ac velit porttitor ultrices eget vitae nulla. Integer euismod ut turpis vel posuere. Nulla facilisi. Sed suscipit aliquam nulla vitae dapibus. Integer eu odio nec ante viverra blandit vitae id ex. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut nisi facilisis, sagittis tortor sed, mollis eros. Cras elementum in est sed dictum. Vestibulum hendrerit blandit eros commodo sagittis. Aenean auctor tempor orci vel cursus. Sed mollis ligula eu finibus gravida.\n\nMauris egestas enim ut erat laoreet vestibulum in nec metus. Cras ut pharetra enim. Aliquam maximus ligula sit amet fermentum tincidunt. Curabitur faucibus faucibus magna nec accumsan. In faucibus sem a rhoncus semper. Nunc gravida tellus nec volutpat pharetra. Fusce pulvinar elit et consectetur aliquam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse potenti. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus dictum, ex vitae tempus consectetur, ex mi suscipit risus, vitae fringilla dui risus ut nisl. Mauris faucibus nibh et leo malesuada elementum in dapibus mi. Suspendisse eleifend orci ut urna vestibulum, a viverra est cursus. Sed consectetur semper pretium. Aenean euismod orci vel ipsum auctor aliquam. Curabitur quis leo neque.\n\nAliquam erat volutpat. Vivamus vitae suscipit turpis, varius laoreet massa. Nunc consequat eget ante a euismod. Sed orci neque, faucibus quis gravida id, auctor vel sem. Cras odio massa, gravida non lacinia et, porttitor eu neque. Ut quis ligula auctor, lacinia quam nec, maximus justo. Sed tincidunt lorem in sem finibus, id dignissim est luctus. Etiam nulla mauris, ultricies ac interdum id, pretium in tellus. Nunc eget cursus risus.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In et ipsum sem. Duis vulputate nisl nec est maximus porta. Sed pretium gravida molestie. Donec semper, velit non gravida varius, sapien tellus venenatis erat, in condimentum diam orci at enim. Quisque sapien purus, consectetur hendrerit iaculis vitae, interdum ut nulla. Pellentesque quis quam quis dui auctor dictum nec eu sem.\n\nUt id accumsan dolor. Curabitur eget pharetra orci, at auctor mauris. Nullam egestas porta eros quis gravida. Quisque pellentesque viverra nisl sit amet feugiat. Donec finibus eros at pellentesque vestibulum. Curabitur volutpat ligula tortor, sit amet lacinia odio lacinia eget. In lacus velit, varius non pharetra et, bibendum nec dolor. In rhoncus elit vitae blandit aliquam. Maecenas facilisis elit vitae malesuada laoreet. Vestibulum facilisis mollis magna id condimentum. Nullam pharetra mollis congue. Phasellus mauris nibh, euismod non sapien in, vestibulum vehicula tortor. Donec eu metus faucibus, scelerisque nibh vitae, rutrum orci. Nam ultrices massa magna, elementum suscipit odio gravida vel.\n\nNunc mattis molestie dui a viverra. Sed leo urna, euismod suscipit justo ac, aliquet sagittis nisi. Proin urna elit, consequat vel lacus eu, consectetur pellentesque arcu. In tincidunt porta pulvinar. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur vel egestas nunc, non porta libero. Nullam fermentum velit et suscipit mattis.\n\nDuis felis nisi, fringilla sit amet nunc a, tincidunt fringilla enim. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed fermentum urna at feugiat sollicitudin. Praesent a feugiat metus. Vivamus vel sapien nunc. In hac habitasse platea dictumst. Nullam suscipit dapibus nunc, ut rutrum purus faucibus ut. Praesent at egestas felis. Fusce varius imperdiet commodo. Nullam blandit justo a ornare vestibulum.\n\nUt vehicula a nibh sit amet accumsan. Quisque malesuada sodales neque, quis tincidunt dui congue ut. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam vitae elementum purus. Vivamus vehicula sem sed metus finibus tristique non sit amet urna. Curabitur ut lectus quam. Nullam at neque sit amet enim euismod pulvinar. Aenean ultricies et elit quis mollis. Nulla maximus augue id ipsum eleifend, sed iaculis turpis rhoncus. Sed et ex non sem bibendum auctor ac vitae urna. Nulla scelerisque ut nulla sit amet faucibus. Nulla maximus fringilla tincidunt. In a augue vel eros molestie vulputate non in lectus. Aenean sed condimentum massa. Pellentesque sit amet purus consectetur, dapibus magna in, hendrerit purus.\n\nInteger ex nisl, venenatis nec pulvinar ut, interdum vel sem. Aenean sit amet volutpat turpis. Integer blandit varius arcu et maximus. Pellentesque est sem, efficitur vitae nisl et, bibendum porta nisl. Curabitur eu tempus arcu. Nunc a porta sapien, id venenatis ipsum. In aliquet neque nec lorem placerat, non ultrices est molestie. Maecenas a lorem est. Duis sed massa ut massa congue ultricies at quis tortor. Morbi eu commodo nisl. Suspendisse mollis sed nulla at ornare. Nullam in neque enim. Fusce placerat volutpat dui, sed molestie magna posuere non. Mauris egestas sem ac tellus mattis dictum eu ut elit. Morbi vitae ipsum nisi.\n\nNulla ut nulla nec velit commodo vestibulum. Aenean et nibh lobortis, pharetra mauris ac, viverra metus. Aenean sit amet ante bibendum, lobortis velit vitae, blandit sapien. Nulla in tincidunt lacus. Quisque facilisis tempus mauris sit amet pellentesque. Nullam ultricies erat ipsum. Aenean vitae purus nec neque molestie volutpat sit amet id orci. Sed tellus risus, lacinia ac nisi non, gravida ullamcorper lectus. Fusce placerat est dui, id finibus quam faucibus quis. Aenean id dictum purus. Nam vitae sem ipsum.\n\nFusce quis semper nulla, in faucibus sem. Nunc purus diam, suscipit non aliquam semper, pharetra id diam. Aenean at ante nec risus laoreet maximus elementum et ex. Vivamus efficitur mi ac consectetur interdum. Pellentesque quis lorem quis arcu efficitur mattis. Nulla vitae ipsum et ex iaculis rutrum eu non ex. Maecenas in mi enim. Integer iaculis turpis condimentum laoreet vestibulum. Nullam eu vestibulum nunc.\n\nSed tincidunt pulvinar mauris nec sagittis. Nunc felis urna, lobortis quis leo a, pulvinar mattis sapien. Nunc scelerisque risus ut velit cursus eleifend. Pellentesque auctor magna eget accumsan pharetra. Aenean ultricies augue vel porttitor vulputate. Donec et egestas est. Phasellus a varius arcu. Donec eleifend metus sed cursus tempor. Morbi tortor diam, cursus sit amet dolor id, luctus pharetra sapien. Ut varius, velit id consequat aliquet, nibh sapien malesuada enim, dictum eleifend nunc erat ac sem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nVivamus consequat viverra neque, id vulputate leo porta at. Nullam viverra dapibus lorem a rutrum. Curabitur vitae odio sed dui aliquet pharetra. Vivamus mauris nisi, congue ac mollis in, imperdiet eu felis. Ut consectetur ultricies dolor ut auctor. Mauris elementum iaculis velit a pretium. Donec vel tempor dui. Ut vel ligula non augue sollicitudin semper sit amet non tellus.\n\nDonec sit amet urna id ipsum mollis consectetur. Praesent posuere sollicitudin nisi in aliquet. Curabitur augue lectus, varius commodo purus sit amet, molestie laoreet arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean elementum tincidunt enim ut viverra. Etiam ut justo et eros tincidunt ornare quis ut nulla. Integer eu sagittis lorem. Fusce non auctor ipsum. Curabitur ac ante sed nisl volutpat pretium at et libero. Sed a diam et turpis scelerisque faucibus.\n\nMaecenas tincidunt orci ac odio auctor, sed commodo turpis rutrum. Sed elementum mi mi, accumsan tristique est eleifend non. Vivamus libero ipsum, tempus et eros nec, congue consequat est. Duis eget fermentum orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc imperdiet maximus lacus, sed dignissim nisl efficitur vel. Duis ac dui id libero commodo finibus in sed arcu. Sed at leo eu erat porttitor venenatis. Aliquam ultrices erat semper, maximus tellus ut, porttitor ipsum. Proin sed porta ex. Vivamus scelerisque et ligula pellentesque efficitur. Donec non eleifend enim.\n\nCras rhoncus mattis aliquet. Aenean rhoncus est nec nunc rhoncus rhoncus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean ultricies arcu sed suscipit rhoncus. Duis semper consectetur ligula, nec pretium tortor. Maecenas egestas laoreet bibendum. Integer maximus neque id tempor pellentesque. Aenean nunc ante, blandit sed nulla vitae, condimentum consectetur lacus. Aenean posuere, libero at facilisis semper, lectus est rutrum neque, id porta eros nibh sed nulla. Proin a ex posuere, accumsan nulla nec, elementum nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\n\nMorbi sed dictum nulla, sed cursus diam. Duis sed massa et tellus porta mollis. Proin dapibus lectus in imperdiet vulputate. Sed viverra metus sed nunc condimentum, sit amet mattis turpis tempor. Quisque convallis nunc ligula, nec iaculis elit sagittis ornare. Donec quis pellentesque nisi. Proin pretium aliquam lectus, et euismod arcu accumsan a.\n\nInteger volutpat, justo efficitur gravida tincidunt, magna orci mattis augue, eu laoreet est ipsum a mauris. Ut risus tellus, sagittis in risus in, laoreet consectetur neque. Nullam aliquet semper nisl eu posuere. Pellentesque consequat semper purus nec viverra. Duis tempor nulla tincidunt sodales ornare. Duis fermentum ipsum libero, non semper velit mattis in. Pellentesque molestie lacus ultricies est convallis tempus. In dapibus tincidunt libero. Sed magna urna, condimentum eget purus in, volutpat venenatis erat. Donec metus quam, dignissim a enim ac, eleifend faucibus nunc. Vestibulum et lorem ac dolor bibendum feugiat condimentum eget nisl. Sed mollis dignissim mauris, ac pharetra magna venenatis et. Suspendisse velit dolor, dapibus sit amet feugiat eget, posuere ornare massa. Nunc lobortis, libero et lacinia consequat, leo augue eleifend massa, nec feugiat purus lorem ac sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus.\n\nSed euismod nisl est. Cras id ultrices nunc. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis pretium consequat massa eget faucibus. Morbi tincidunt est orci, non porttitor ligula mollis sed. Duis aliquam vel ligula non aliquet. Sed ultrices, felis in vestibulum consectetur, sapien sapien finibus mauris, et accumsan nisi nisl quis nisi.\n\nMaecenas non sem ut lectus cursus bibendum quis a elit. Nam scelerisque molestie mauris, eu condimentum massa porta ut. Aenean vitae libero vel nunc consequat rutrum. Nullam sit amet blandit leo. Aliquam vel nunc libero. Phasellus accumsan vehicula ligula, vitae vestibulum arcu. Aliquam erat volutpat. Maecenas eget mattis urna, vel posuere lorem. Etiam sollicitudin ex vel risus lacinia, ac vulputate elit faucibus. Vivamus porttitor lorem eu quam efficitur pellentesque. Duis purus erat, placerat in sapien posuere, elementum gravida arcu. Sed nec ex at nibh tempus aliquet nec ut diam. Vivamus eget accumsan tortor. Phasellus congue diam vestibulum arcu iaculis, sit amet iaculis tortor tempor. Nullam ac dolor justo. Phasellus cursus mauris at nibh tincidunt, nec maximus massa feugiat.\n\nFusce dolor lacus, sodales sit amet tempor eu, efficitur eu eros. Donec gravida dolor sed consectetur cursus. Cras at consequat lectus. In cursus iaculis lacus. Cras libero mi, consequat quis ligula a, luctus dictum diam. Morbi at justo metus. Sed porttitor erat mi, nec porta ante volutpat vitae. Etiam at metus id quam consectetur consectetur sit amet in quam. Cras nec tincidunt dolor, vitae pulvinar velit. Nunc et pretium felis. Suspendisse efficitur condimentum mi ac tempus. Curabitur condimentum tellus sed volutpat lobortis. Ut et scelerisque nisl, a commodo sapien.\n\nNulla sodales in metus ac varius. Proin in ligula imperdiet, interdum tellus pharetra, pellentesque nunc. Ut orci est, dignissim sit amet convallis eget, faucibus in erat. Phasellus luctus rutrum felis eget placerat. In lacinia scelerisque ullamcorper. Praesent nec dolor urna. Donec vel metus vel tortor tristique hendrerit. Curabitur efficitur lectus ac egestas mollis. Donec ante arcu, imperdiet sit amet aliquam et, egestas nec diam. Sed nulla nunc, aliquet quis est quis, imperdiet aliquam enim. Ut eleifend mattis leo, vel tincidunt leo congue at. In mattis lectus nec feugiat porta. Sed feugiat nunc at suscipit convallis. Fusce turpis orci, dignissim eu sapien quis, rutrum vulputate elit. Praesent quis ullamcorper risus.\n\nNullam accumsan vitae quam quis pharetra. Ut eu nisi augue. Vivamus sed neque elementum, pulvinar sapien vel, tempus eros. Duis ut sagittis nunc. Aliquam erat volutpat. Donec mollis, libero eget sollicitudin malesuada, elit mi laoreet quam, sit amet feugiat felis velit in diam. Ut sed est ipsum.\n\nMauris sit amet aliquam lacus, vitae tempus lacus. In hac habitasse platea dictumst. Sed ut semper mauris. Aliquam aliquet, nulla ac lobortis tincidunt, lectus magna lobortis tellus, eget aliquet ante turpis at mi. Aliquam efficitur semper risus, at ultricies elit molestie vitae. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vestibulum egestas mi diam, eget efficitur tellus porta eget. Aliquam erat volutpat. Nulla aliquam, mauris at dapibus pellentesque, magna libero efficitur metus, eget auctor nisi metus et est. Ut lacinia elementum turpis. Etiam vitae arcu nulla. Ut aliquam varius massa dignissim pharetra. Vivamus placerat velit cursus nisl condimentum vulputate. Nunc semper, nunc vitae sagittis pharetra, nulla ante mollis nunc, nec condimentum tortor nisl at leo. Cras hendrerit, leo at malesuada auctor, erat lectus eleifend lectus, a tincidunt metus velit vel est.\n\nProin faucibus tincidunt dolor. Fusce id nulla ex. Ut imperdiet eget lacus auctor aliquam. Nulla malesuada urna sapien, id iaculis sapien euismod et. Suspendisse potenti. Sed id ultrices velit. Ut et justo sed ex ultrices vehicula.\n\nSed ac rhoncus tortor, at commodo lectus. Pellentesque quis posuere nisi, dapibus feugiat dui. Sed volutpat eleifend egestas. Nam varius sapien eros, et vestibulum elit ultricies in. Ut pellentesque sapien eget ipsum pulvinar, volutpat semper massa placerat. Phasellus ornare, nibh at semper viverra, mi magna maximus est, sit amet bibendum metus turpis a libero. Maecenas interdum est odio, in iaculis quam tristique vitae. Fusce pretium varius velit dictum aliquam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sit amet pretium tortor. Maecenas sagittis lacus a dui faucibus, tincidunt consectetur lectus efficitur. Fusce aliquet velit ut luctus malesuada. Sed interdum ut ipsum nec dapibus.\n\nIn feugiat nisl volutpat, pellentesque lorem eget, sagittis leo. Etiam imperdiet quam a finibus aliquam. Nam efficitur dictum orci, ac egestas libero convallis ultrices. Integer interdum consectetur tristique. Mauris a egestas lorem, vitae porttitor dolor. Nullam quis suscipit lorem, vel ornare orci. Fusce rhoncus egestas quam, non suscipit nisl consectetur ut. Nulla ullamcorper varius fringilla. Fusce eu ante lorem.\n\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque ullamcorper euismod lectus quis condimentum. Integer mollis metus sed sapien suscipit elementum. Etiam bibendum augue velit, eget volutpat augue gravida scelerisque. Sed metus ex, pellentesque eu augue at, pellentesque vestibulum ipsum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec tempus lacus ac mi semper, sit amet suscipit mauris dapibus. Suspendisse rutrum, mi eu euismod tristique, massa lectus portato.','2018-10-07 20:10:58'),('LAst post','guy@gmail.com','Just to triple chjeck it\'s fine','2018-10-07 20:10:03'),('This is a blog post','guy@gmail.com','This is a really long post. But not really.\nThere are line breaks in it! How rad.\n\nThis is the third line.','2018-10-07 15:17:00');
/*!40000 ALTER TABLE `Article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tags`
--

DROP TABLE IF EXISTS `Tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tags` (
  `title` varchar(255) NOT NULL DEFAULT '',
  `tag` varchar(15) NOT NULL,
  PRIMARY KEY (`title`,`tag`),
  CONSTRAINT `Tags_ibfk_1` FOREIGN KEY (`title`) REFERENCES `Article` (`title`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tags`
--

LOCK TABLES `Tags` WRITE;
/*!40000 ALTER TABLE `Tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cookie` varchar(255) DEFAULT NULL,
  `cookie_expire` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('guy@gmail.com','Guy','5e46c7447d28e8e5e54c59b449e6ac1b','193755eadd06f1011116b352e927f075','1538984983'),('test2@gmail.com','test2','1e95e68cabcdb5d12f71a712bb740624','3aef40bbb6bb451a7e3f57e559371168','1538962307'),('test3@gmail.com','test3','2ae68af5b8766560dbfc5ed3d8e7ac95',NULL,NULL),('test@gmail.com','test','1e95e68cabcdb5d12f71a712bb740624','658298fffdbc492096c7e007a7e30661','1538964190'),('This is another one with the same name','This is a blog post','d41d8cd98f00b204e9800998ecf8427e','04eaa50ebb44eeb3348acbab7c8355d5','1538983913');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-07 20:58:07