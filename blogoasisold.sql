-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2023 at 09:39 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogoasis`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogpost`
--

CREATE TABLE `blogpost` (
  `blog_id` int(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_image` varchar(255) NOT NULL,
  `blog_categories` varchar(255) NOT NULL,
  `blog_description` text NOT NULL,
  `blog_content` text NOT NULL,
  `blog_tags` text NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `blog_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogpost`
--

INSERT INTO `blogpost` (`blog_id`, `blog_title`, `blog_image`, `blog_categories`, `blog_description`, `blog_content`, `blog_tags`, `user_name`, `blog_date`) VALUES
(36, 'Hospital bed\'s booking for IND vs PAK match', 'ind-vs-pak.jpg', 'Education', 'HERE sport releted description is g=here', 'Meta Platforms has released an open-source AI tool called AudioCraft that can be used to create music and audio based on text prompts.Meta Platforms has released an open-source AI tool called AudioCraft that can be used to create music and audio based on text prompts.', 'da', 'admin', '2023-08-04'),
(38, 'Bootstrap New Version  v5.3.1', 'bootstap.jpeg', 'Bootstrap', 'Bootstrap v5.3.1 is here with bug fixes, documentation improvements, and more follow-up enhancements for color modes. Keep reading for the highlights!', 'Increased color contrast for dark mode by replacing $gray-500 with $gray-300 for the body color\r\nAdded our color mode switcher JavaScript to our examples ZIP download\r\nImproved disabled styling for all .nav-links, providing .disabled and :disabled for use with anchors and buttons\r\nAdd support for Home and End keys for navigating tabs by keyboard\r\nAdded some basic styling to toggle buttons when no modifier class is present\r\nFixed carousel colors in dark mode\r\nFixed floating label disabled text color', 'bootstrap,css ', 'admin', '2023-08-11'),
(39, 'Bootstrap 5.3.0', 'bootstrap2.jpeg', 'Bootstrap', 'It’s official, the final stable release of v5.3.0 has landed! It’s been a monumental effort to revamp our codebase for CSS variables and color modes, one that will see continued changes leading up to an eventual Bootstrap 6. And we’re so excited to finally ship it!', 'Dark mode support\r\nCustom color modes support for themes beyond light and dark\r\nExtended color palette for theme colors that adapt to color modes\r\nNew link helpers, link utilities, and focus ring helpers\r\nNew nav underline variant\r\nSeveral new utilities, bug fixes, and much more!\r\nKeep reading for the deep dive on all the top new features.\r\nBootstrap’s core has been rewritten to provide first-class support for dark mode. Moreover, Bootstrap now supports any number of color modes, allowing you to build your own custom themes or more nuanced color modes. Let’s take a look at how our new dark mode works first.\r\nNew color-mode() mixin\r\nDark mode styles are written with and generated through the new color-mode() Sass mixin. The mixin allows you to write styles specific to a particular color mode, like dark mode.', 'bootstrap,css ', 'admin', '2023-08-11'),
(40, 'PHP Architect', 'php.jpeg', 'PHP', 'PHP Architect is the blog for the monthly print magazine on PHP. You can buy a single month’s magazine or subscribe; there is no free content', 'PHP Architect is the blog for the monthly print magazine on PHP. You can buy a single month’s magazine or subscribe; there is no free content. However, for anyone serious about PHP, there is a plethora of excellent content for technical savants going back to 2002. Each month’s magazine comprises several in-depth articles written by active PHP programmers who meet the background and editorial requirements to be considered authoritative. PHP Architect’s writing is professional-tier and reads as such, while also boasting useful references and examples throughout. Their regular monthly publication schedule allows for consistent content once per month.', 'ph', 'admin', '2023-08-11'),
(41, 'What is PHP?', 'php2.jpeg', 'PHP', 'PHP is a server-side scripting language designed for web development, but which can also be used as a general-purpose programming language.', 'PHP is a server-side scripting language designed for web development, but which can also be used as a general-purpose programming language. PHP can be added to straight HTML or it can be used with a variety of templating engines and web frameworks. PHP code is usually processed by an interpreter, which is either implemented as a native module on the web-server or as a common gateway interface (CGI).\r\nRun a single PHP script\r\nFor many simple, single file projects, you may find it inconvenient to write a complete Dockerfile. In such cases, you can run a PHP script by using the PHP Docker image directly:\r\nMany extensions are already compiled into the image, so it\'s worth checking the output of php -m or php -i before going through the effort of compiling more.\r\n\r\nWe provide the helper scripts docker-php-ext-configure, docker-php-ext-install, and docker-php-ext-enable to more easily install PHP extensions.\r\n\r\nIn order to keep the images smaller, PHP\'s source is kept in a compressed tar file. To facilitate linking of PHP\'s source with any extension, we also provide the helper script docker-php-source to easily extract the tar or delete the extracted source. Note: if you do use docker-php-source to extract the source, be sure to delete it in the same layer of the docker image.', 'php', 'admin', '2023-08-11'),
(42, 'What Is HTML?', 'html.jpeg', 'HTML', 'HTML stands for HyperText Markup Language, which can be a confusing term for many beginners.', 'HTML stands for HyperText Markup Language, which can be a confusing term for many beginners. The best way to explain HTML is to examine the meaning of each word.\r\n\r\nHyperText refers to text that contains links to other texts. Every time you click on a highlighted or underlined link that takes you to another page, you are using hypertext. As more and more pages use hypertext to link to each other, a “web” of pages starts to form. This is where we get the term World Wide Web.\r\n\r\nMarkup refers to the special symbols or codes that are inserted into a document to tell the web browser how to display the document data. For example, markup code may tell the browser to display a phrase in bold or italic text, or may tell the browser which parts of the document are headings and which are paragraphs. HTML is just one of a number of languages that uses markup code.\r\n\r\nLanguage refers to the idea that the code is standardized. Just like regular spoken languages, there are certain rules that everyone must follow when writing HTML. This is so that all browsers can understand and interpret the code. There are many different programming languages, and you may have heard of some of the popular ones such as Java, Python and Ruby. Each language has its own unique set of rules, and many languages can be used in combination with HTML to create amazing webpages and applications.', 'html', 'admin', '2023-08-11'),
(43, 'The Basics Of HTML Code', 'hmtl2.jpeg', 'HTML', 'There are three components that form the basic building blocks of HTML code: tags, elements and attributes. Once you’ve learned the rules for how each of these components function, you should have no trouble writing and editing HTML.', 'You might remember we mentioned that the most notable feature of HTML code was the use of angle brackets. These angle brackets (and the code inside them) are called tags.\r\n\r\nTags are used to separate HTML code from regular text.\r\n\r\nAny text written inside the angle brackets will not be displayed in the browser. The text inside the angle brackets is just used to tell the browser how to display or transform regular text located between the opening tag (also called the start tag) and the closing tag (also called the end tag).\r\n\r\nTags usually come in pairs, and the difference between an opening tag and a closing tag is that the first symbol inside the brackets of a closing tag is a slash “/“ symbol.\r\n\r\nFor example, here’s a pair of h1 tags (used to identify heading text), with some content in-between:\r\n\r\n<h1>This is some content.</h1>\r\n\r\nIn this example, the <h1> is the opening tag and the </h1> is the closing tag.\r\n\r\nHow To Use Tags\r\nHere’s an example of how we can use tags to transform text.\r\n\r\nIf we add the sentence “This is some text.” to our HTML file, it will simply display as regular text like this:\r\n\r\nThis is some text.\r\n\r\nBut if we want to have the sentence display in bold text, we can add a <b> opening tag before the text, and a </b> closing tag after the text. The “b” in the tag stands for “bold”.\r\n\r\nIf we add <b>This is some text.</b> to our HTML file, it will display like this:\r\n\r\nThis is some text.\r\n\r\nIf we want to have the sentence display in italic text, we can add an <i> opening tag before the text, and an </i> closing tag after the text. As you’ve probably guessed, the “i” stands for “italic”.\r\n\r\nIf we add <i>This is some text.</i> to our HTML file, it will display like this:\r\n\r\nThis is some text.\r\n\r\nIf we want to have the sentence display as a hyperlink, we can add an <a href=“www.google.com”> opening tag before the text, and an </a> closing tag after the text. Can you guess what the “a” stands for? This one’s a little harder… it stands for “anchor”.\r\n\r\nIf we add <a href=“www.google.com”>This is some text.</a> to our HTML file, it will display like this:\r\n\r\nThis is some text.\r\n\r\nIf we click on this hyperlink, it will take us to a different webpage. If you take a look at the code, you can probably guess which page this text links to.', 'html', 'admin', '2023-08-11'),
(44, 'WHAT IS CSS?', 'css.jpeg', 'CSS', 'CSS stands for Cascading Style Sheet. Where HTML is what defines the structure and content of a web page, a Cascading Style Sheet is a web document that allows you to change the appearance of the HTML.', 'CSS stands for Cascading Style Sheet. Where HTML is what defines the structure and content of a web page, a Cascading Style Sheet is a web document that allows you to change the appearance of the HTML.\r\n\r\nCSS allows you to change the size, style, font, and color of text; margins and padding; background colors and border styles. It can also be used to position elements on a page (but we’ll leave that for another day).\r\nThe best thing about CSS is that is allows you to make global style changes that affect every instance of a certain element throughout your blog or website so that you don’t have to make these changes at the individual page level. This saves you a ton of time when it comes to redesigning your blog.\r\n\r\nHere’s an example of what I mean: as we learned last week, the page title on a blog page is defined by an HTML element called an H1 (heading 1). By default, the browser displays an H1 as extra large, bold, black text, much like we saw in the PAWS example.\r\n\r\nIf we want to change the color, font and size of all the H1’s on our blog to keep consistency throughout, all you need to do is define what all H1’s will look like in your CSS.\r\n\r\nSometimes different browsers may display slightly different default styles. Using a style sheet to define what a specific element should look like can keep the look of your blog consistent from one browser to another as well as one device to another.', 'css', 'admin', '2023-08-11'),
(45, 'Animated Pride Flags', 'css2.jpeg', 'CSS', 'Here\'s how this effect works: our flag consists of several equal-width columns. Each column moves up and down, thanks to a CSS keyframe animation:', 'With this CSS in place, we have a bunch of columns moving up and down. The final missing piece is animation-delay; each column will receive a slightly-larger value. By staggering the animation, we create the illusion of a rippling flag.\r\n\r\nHere\'s a simplified demo. Drag the “Staggered Delay” slider to see the effect at work\r\nWe can also do this dynamically. Here\'s the approach I took with React, using the array index to calculate the amount of delay\r\nSo, each column is going up and down, but to complete the illusion, they need to have the colored stripes!\r\n\r\nMy first thought was to create a bunch of divs, one for each color:', 'css,animation', 'admin', '2023-08-11'),
(46, 'Building a Magical 3D Button', 'buttoncss.png', 'CSS', 'Every significant thing we do online, from ordering food to scheduling an appointment to playing a video, involves pressing a button. Buttons (and the forms they submit) make the web dynamic and interactive and powerful.', 'Why not use box-shadow or border? Those properties are super expensive to animate. If we want a buttery-smooth transition on the button, we\'ll have way more success with this strategy.\r\nOur button element provides the burgundy background color that simulates the bottom edge of our button. We also strip away the default border/padding that comes with button elements.\r\n\r\n.front is our foreground layer. it gets a bright pink-crimson background color, as well as some text styles.\r\n\r\nWe\'ll slide the foreground layer around with transform: translate. This is the best way to accomplish this effect, since transforms can be hardware-accelerated.\r\n\r\nWhile the mouse is held down on the button, the :active styles will apply. We\'ll shift the front layer down so that it sits 2px above the bottom. We could drop it to 0px, but I want to keep the 3D illusion going at all times.', 'css,a,js', 'admin', '2023-08-11');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`cat_id`, `cat_name`) VALUES
(1, 'HTML'),
(2, 'CSS'),
(3, 'JAVA SCRIPT'),
(4, 'PHP'),
(5, 'LARAVEL'),
(6, 'React JS'),
(7, 'Node JS'),
(8, 'Tailwand CSS'),
(9, 'Bootstrap');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comment`
--

CREATE TABLE `blog_comment` (
  `blog_id` int(11) DEFAULT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_comment` text NOT NULL,
  `c_date` date NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_comment`
--

INSERT INTO `blog_comment` (`blog_id`, `c_name`, `c_email`, `c_comment`, `c_date`, `c_id`) VALUES
(1, 'kamles', 'kamles@gmail.com', 'good website with Great content', '2023-08-01', 1),
(46, 'Chinatan', 'chintan@gmail.com', '', '2023-08-12', 2),
(46, 'kamles', 'kamo@gmail.com', 'hey man grate website\r\n', '2023-08-12', 3),
(46, 'Chinatan', 'ad@gmail.com', 'asfdsf', '2023-08-12', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_role` enum('user','admin') NOT NULL,
  `user_phone_no` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_role`, `user_phone_no`, `user_image`) VALUES
(1, 'chintan', 'chintan@gmail.com', '$2y$10$dQA6kHswQSgtfJsrEm2u.eWYKDpKI9QdGAcf2IpSiSYO/wQi8hmJW', 'user', '6355501662', 'chintan.jpg'),
(2, 'jigar', 'jigar@gmail.com', 'jigar@1218', '', '9067494846', 'jigar.jpg'),
(3, 'chintan', 'hiteen@gmail.com', '123456', '', '123456', 'php.jpeg'),
(4, 'Chintan Bhadaraka', 'chintanbhdarka10doc@gmail.com', '$2y$10$dQA6kHswQSgtfJsrEm2u.eWYKDpKI9QdGAcf2IpSiSYO/wQi8hmJW', 'admin', '6355501662', 'IMG_20230203_214654.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogpost`
--
ALTER TABLE `blogpost`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogpost`
--
ALTER TABLE `blogpost`
  MODIFY `blog_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
