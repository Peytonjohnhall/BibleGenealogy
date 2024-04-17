-- Author: Peyton J. Hall (C)
/*
Bible Genealogy Data Collection in MySQL/PostgreSQL.
The data is based on the Bible and not external sources.
Translation used for naming: King James Version.
Queries to extract specific data are below.
*/

CREATE TABLE GenealogyAdamToDavid (
    Generation INTEGER NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Concordance_ID VARCHAR(5) PRIMARY KEY,
    Gender CHAR(1) NOT NULL,
    Gender_Citation VARCHAR(50) NOT NULL,
    Parent VARCHAR(100) NOT NULL,
    Parent_Citation VARCHAR(100) NOT NULL,
    Age_when_individual_Begat_subsequent_child INTEGER,
    Begat_Age_Citation VARCHAR(50),
    Lifespan_Years INTEGER,
    Lifespan_Citation VARCHAR(100)
);

CREATE TABLE RepresentativeGenealogySolomonToJoseph (
    Generation INTEGER NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Concordance_ID VARCHAR(5) PRIMARY KEY,
    Gender CHAR(1),
    Gender_Citation VARCHAR(50),
    Parent VARCHAR(100),
    Parent_Citation VARCHAR(70),
    Age_when_individual_Begat_subsequent_child INTEGER,
    Begat_Age_Citation VARCHAR(50),
    Lifespan_Years INTEGER,
    Lifespan_Citation VARCHAR(50),
    Age_Before_Becoming_King VARCHAR(50),
    Age_Before_Becoming_King_Citation VARCHAR(60),
    Years_As_King VARCHAR(50),
    Years_As_King_Citation VARCHAR(200)
);

CREATE TABLE BiologicalGenealogySolomonToJoseph (
    Generation INTEGER NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Concordance_ID VARCHAR(5) PRIMARY KEY,
    Gender CHAR(1),
    Gender_Citation VARCHAR(50),
    Parent VARCHAR(100),
    Parent_Citation VARCHAR(70),
    Age_when_individual_Begat_subsequent_child INTEGER,
    Begat_Age_Citation VARCHAR(50),
    Lifespan_Years INTEGER,
    Lifespan_Citation VARCHAR(50),
    Age_Before_Becoming_King VARCHAR(50),
    Age_Before_Becoming_King_Citation VARCHAR(60),
    Years_As_King VARCHAR(50),
    Years_As_King_Citation VARCHAR(200)
);

/*
Note: The reason why duplicate 'SolomonToJoseph' tables are created:
      There is a variation between Matthew 1:6-16 and 1 Chronicles 3:10-16.
      The book of Matthew does not include Ahaziah (a.k.a. Uzziah), Joash, Amaziah, Azariah, and Jehoiakim.
      The first book of Chronicles does include Ahaziah (a.k.a. Uzziah), Joash, Amaziah, Azariah, and Jehoiakim.
*/

/*  Many individuals in this table share duplicates for "Name" and "Concordance_ID".
    There are also duplicates for the "Generation" number since David's descendants 
    branch off between Solomon and Nathan.
    Therefore, the PRIMARY KEY unique identifier is "Generation_In_Hexadecimal". */
CREATE TABLE GenealogyNathanToHeli (
    Generation INTEGER NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Concordance_ID VARCHAR(5) NOT NULL,
    Generation_In_Hexadecimal VARCHAR(2) PRIMARY KEY,
    Gender CHAR(1) NOT NULL,
    Gender_Citation VARCHAR(50) NOT NULL,
    Parent VARCHAR(100) NOT NULL,
    Parent_Citation VARCHAR(50) NOT NULL,
    Age_when_individual_Begat_subsequent_child INTEGER,
    Begat_Age_Citation VARCHAR(50),
    Lifespan_Years INTEGER,
    Lifespan_Citation VARCHAR(50)
);

CREATE TABLE GenealogyOfCain (
    Generation INTEGER NOT NULL,
    Name VARCHAR(21) NOT NULL,
    Concordance_ID VARCHAR(5) PRIMARY KEY,
    Gender CHAR(1) NOT NULL,
    Gender_Citation VARCHAR(50) NOT NULL,
    Parent VARCHAR(21) NOT NULL,
    Parent_Citation VARCHAR(50) NOT NULL,
    Sibling VARCHAR(15), -- i.e. brother or sister
    Sibling_Citation VARCHAR(25),
    Lifespan_Years INTEGER,
    Lifespan_Citation VARCHAR(50),
    Profession VARCHAR(100),
    Profession_Citation VARCHAR(50)
);


INSERT INTO GenealogyAdamToDavid VALUES ('1', '''Eth-''Ha''adham (a.k.a. Adam)', 'H120', 'M', 'Genesis 5:3', 'God', 'Genesis 2:7, Luke 3:38', '130', 'Genesis 5:3', '930', 'Genesis 5:3-4');
INSERT INTO GenealogyAdamToDavid VALUES ('2', 'Seth', 'H8352', 'M', 'Genesis 5:7', '''Eth-''Ha''adham', '1 Chronicles 1:1, Luke 3:38', '105', 'Genesis 5:6', '912', 'Genesis 5:6-8');
INSERT INTO GenealogyAdamToDavid VALUES ('3', 'Enos', 'H583', 'M', 'Genesis 5:10', 'Seth', '1 Chronicles 1:1, Luke 3:38', '90', 'Genesis 5:9', '905', 'Genesis 5:9-10');
INSERT INTO GenealogyAdamToDavid VALUES ('4', 'Cainan', 'H7018', 'M', 'Genesis 5:13', 'Enos', 'Genesis 5:9, 1 Chronicles 1:2, Luke 3:37-38', '70', 'Genesis 5:12', '910', 'Genesis 5:12-14');
INSERT INTO GenealogyAdamToDavid VALUES ('5', 'Mahalaleel', 'H4111', 'M', 'Genesis 5:16', 'Cainan', 'Genesis 5:12, 1 Chronicles 1:2, Luke 3:37', '65', 'Genesis 5:15', '895', 'Genesis 5:15-17');
INSERT INTO GenealogyAdamToDavid VALUES ('6', 'Jared', 'H3382', 'M', 'Genesis 5:18', 'Mahalaleel', 'Genesis 5:15, 1 Chronicles 1:2, Luke 3:37', '162', 'Genesis 5:18', '962', 'Genesis 5:18-20');
INSERT INTO GenealogyAdamToDavid VALUES ('7', 'Enoch', 'H2585', 'M', 'Genesis 5:22', 'Jared', 'Genesis 5:18, 1 Chronicles 1:3, Luke 3:37', '65', 'Genesis 5:21', '365', 'Genesis 5:21-23');
INSERT INTO GenealogyAdamToDavid VALUES ('8', 'Methuselah', 'H4968', 'M', 'Genesis 5:27', 'Enoch', 'Genesis 5:21, 1 Chronicles 1:3, Luke 3:37', '187', 'Genesis 5:25', '969', 'Genesis 5:25-27');
INSERT INTO GenealogyAdamToDavid VALUES ('9', 'Lamech', 'H3929', 'M', 'Genesis 5:29', 'Methuselah', 'Genesis 5:25, 1 Chronicles 1:3, Luke 3:36-37', '182', 'Genesis 5:28', '777', 'Genesis 5:28-31');
INSERT INTO GenealogyAdamToDavid VALUES ('10', 'Noah', 'H5146', 'M', 'Genesis 5:29', 'Lamech', 'Genesis 5:30, 1 Chronicles 1:4, Luke 3:36', '500', 'Genesis 5:32', '950', 'Genesis 9:29');
INSERT INTO GenealogyAdamToDavid VALUES ('11', 'Shem', 'H8035', 'M', 'Genesis 11;11', 'Noah', 'Genesis 10:1, 1 Chronicles 1:4, Luke 3:36', '100', 'Genesis 11:10', '600', 'Genesis 11:10-11');
INSERT INTO GenealogyAdamToDavid VALUES ('12', 'Arphaxad', 'H775', 'M', 'Genesis 11:13', 'Shem', 'Genesis 10:22, 1 Chronicles 1:17, Luke 3:36', '35', 'Genesis 11:12', '438', 'Genesis 11:12-13');
/* 
Note: There is a variation between Luke 3:36 and both Genesis 11:12 
      and 1 Chronicles 1:18. According to Luke 3:36, Cainan is the son of 
      Arphaxad; however, this same Cainan son of Arphaxad is never mentioned in 
      the book of Genesis [not to be mistaken for the other Cainan, son of Enos,
      there are two different Cainans according to Luke 3:36 (see Cainan at generation 4)]. 
      Alternatively, 1 Chronicles 1:18 KJV states, "Arphaxad begat Shelah."
Assume Conditional Proof: If Arphaxad begat Cainan, and if Cainan begat Salah, 
		 	  then it logically follows that Arphaxad begat Salah 
			  by hypothetical syllogism. (Propositional logic).
Strong's Definition of Begat: יָלַד (Strong's Hebrew # 3205) "yaw-lad'" - To bring forth. To show lineage.
Note: For full data collection, Cainan, the son of Arphaxad, is included in the table at generation 13.
*/
INSERT INTO GenealogyAdamToDavid VALUES ('13', 'Cainan', 'G2536', 'M', 'Luke 3:36', 'Arphaxad', 'Luke 3:36', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyAdamToDavid VALUES ('14', 'Salah', 'H7974', 'M', 'Genesis 11:15', 'Cainan', 'Genesis 10:24, 1 Chronicles 1:18, Luke 3:35-36', '30', 'Genesis 11:14', '433', 'Genesis 11:14-15');
INSERT INTO GenealogyAdamToDavid VALUES ('15', 'Eber', 'H5677', 'M', 'Genesis 11:17', 'Salah', 'Genesis 11:14, 1 Chronicles 1:18, Luke 3:35', '34', 'Genesis 11:16', '464', 'Genesis 11:16-17');
INSERT INTO GenealogyAdamToDavid VALUES ('16', 'Peleg', 'H6389', 'M', 'Genesis 11:19', 'Eber', 'Genesis 11:16, 1 Chronicles 1:19, 1 Chronicles 1:25, Luke 3:35', '30', 'Genesis 11:18', '239', 'Genesis 11:18-19');
INSERT INTO GenealogyAdamToDavid VALUES ('17', 'Reu', 'H7466', 'M', 'Genesis 11:21', 'Peleg', 'Genesis 11:18, 1 Chronicles 1:25, Luke 3:35', '32', 'Genesis 11:20', '239', 'Genesis 11:20-21');
INSERT INTO GenealogyAdamToDavid VALUES ('18', 'Serug', 'H8286', 'M', 'Genesis 11:23', 'Reu', 'Genesis 11:20, 1 Chronicles 1:26, Luke 3:35', '30', 'Genesis 11:22', '230', 'Genesis 11:22-23');
INSERT INTO GenealogyAdamToDavid VALUES ('19', 'Nahor', 'H5152', 'M', 'Genesis 11:25', 'Serug', 'Genesis 11:22, 1 Chronicles 1:26, Luke 3:34-35', '29', 'Genesis 11:24', '148', 'Genesis 11:24-25');
INSERT INTO GenealogyAdamToDavid VALUES ('20', 'Terah', 'H8646', 'M', 'Genesis 11:31', 'Nahor', 'Genesis 11:24, 1 Chronicles 1:26, Luke 3:34', '70', 'Genesis 11:26', '205', 'Genesis 11:32');
INSERT INTO GenealogyAdamToDavid VALUES ('21', 'Abraham (a.k.a. Abram)', 'H85', 'M', 'Genesis 17:5', 'Terah', 'Genesis 11:26, 1 Chronicles 1:26-27, Luke 3:34', '100', 'Genesis 21:5', '175', 'Genesis 25:7');
INSERT INTO GenealogyAdamToDavid VALUES ('22', 'Isaac', 'H3327', 'M', 'Genesis 21:3', 'Abraham', 'Genesis 21:3, 1 Chronicles 1:28, Matthew 1:2, Luke 3:34', '60', 'Genesis 25:26', '180', 'Genesis 35:28');
INSERT INTO GenealogyAdamToDavid VALUES ('23', 'Jacob (a.k.a. Israel)', 'H3290', 'M', 'Genesis 25:26', 'Isaac', '1 Chronicles 1:28, Matthew 1:2, Luke 3:34', NULL, NULL, '147', 'Genesis 47:28');
INSERT INTO GenealogyAdamToDavid VALUES ('24', 'Judah', 'H3063', 'M', 'Genesis 29:35', 'Jacob', 'Genesis 35:23, 1 Chronicles 2:1, Matthew 1:2, Luke 3:33-34', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyAdamToDavid VALUES ('25', 'Pharez', 'H6557', 'M', 'Genesis 46:12', 'Judah', 'Genesis 46:12, Ruth 4:12, 1 Chronicles 4:1, Matthew 1:3, Luke 3:33', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyAdamToDavid VALUES ('26', 'Hezron', 'H2696', 'M', 'Genesis 46:12', 'Pharez', 'Genesis 46:12, Ruth 4:18, 1 Chronicles 2:5, Matthew 1:3, Luke 3:33', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyAdamToDavid VALUES ('27', 'Ram', 'H7410', 'M', 'Luke 3:33', 'Hezron', 'Ruth 4:19, 1 Chronicles 2:9, Matthew 1:3, Luke 3:33', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyAdamToDavid VALUES ('28', 'Amminadab', 'H5992', 'M', 'Luke 3:33', 'Ram', 'Ruth 4:19, 1 Chronicles 2:10, Matthew 1:4, Luke 3:33', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyAdamToDavid VALUES ('29', 'Nahshon', 'H5177', 'M', 'Luke 3:32-33', 'Amminadab', 'Numbers 1:7, Ruth 4:20, 1 Chronicles 2:11, Matthew 1:4, Luke 3:32-33', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyAdamToDavid VALUES ('30', 'Salmon', 'H8009', 'M', 'Luke 3:32', 'Nahshon', 'Ruth 4:20, 1 Chronicles 2:11, Matthew 1:4, Luke 3:32', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyAdamToDavid VALUES ('31', 'Boaz', 'H1162', 'M', 'Luke 3:32', 'Salmon', 'Ruth 4:21, 1 Chronicles 2:11, Matthew 1:5, Luke 3:32', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyAdamToDavid VALUES ('32', 'Obed', 'H5744', 'M', 'Luke 3:32', 'Boaz', 'Ruth 4:21, 1 Chronicles 2:12, Matthew 1:5, Luke 3:32', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyAdamToDavid VALUES ('33', 'Jesse', 'H3448', 'M', 'Luke 3:32', 'Obed', 'Ruth 4:22, 1 Chronicles 2:12, Matthew 1:5, Luke 3:32', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyAdamToDavid VALUES ('34', 'David, King of Israel (Undivided Kingdom)', 'H1732', 'M', 'Luke 3:31-32', 'Jesse', 'Ruth 4:22, Matthew 1:6', NULL, NULL, '70', '2 Samuel 5:3-4, 1 Kings 2:10-11');


-- Make sure everything got inserted:
SELECT * FROM GenealogyAdamToDavid;


INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('35', 'Solomon, King of Israel (Undivided Kingdom)', 'H8010', 'M', '2 Samuel 12:24', 'David', '2 Samuel 12:24, 1 Chronicles 3:10, Matthew 1:6', NULL, NULL, NULL, NULL, NULL, NULL, '40', '1 Kings 11:42, 2 Chronicles 9:30'); 
/*
Note: According to 1 Kings chapter 12, the Kingdom of Israel divided during the reign of King Rehoboam. 
      The Kingdom of Israel divided into two parts: Judah, containing the 2 Southern Tribes of Judah and Benjamin; and Israel, 
      containing the 10 Northern Tribes of Reuben, Simeon, Levi, Dan, Naphtali, Gad, Asher, Issachar, Zebulun, and Joseph.
*/
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('36', 'Rehoboam, King of Judah', 'H7346', 'M', '1 Kings 11:43, 1 Chronicles 3:10', 'Solomon', '1 Kings 11:43, 1 Chronicles 3:10, Matthew 1:7', NULL, NULL, NULL, NULL, '41', '1 Kings 14:21', '17', '1 Kings 14:21');  
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('37', 'Abijah (a.k.a. Abijam & Abia), King of Judah', 'H29', 'M', '1 Chronicles 3:10', 'Rehoboam', '1 Kings 15:1-2, 1 Chronicles 3:10, Matthew 1:7', NULL, NULL, NULL, NULL, NULL, NULL, '3', '1 Kings 15:1-2, 2 Chronicles 13:1-2');
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('38', 'Asa, King of Judah', 'H609', 'M', '1 Chronicles 3:10', 'Abijah', '1 Chronicles 3:10, 2 Chronicles 14:1, Matthew 1:7', NULL, NULL, NULL, NULL, NULL, NULL, '41', '1 Kings 15:8-10'); 
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('39', 'Jehoshaphat, King of Judah', '3092', 'M', '1 Chronicles 3:10', 'Asa & Azubah', '1 Kings 15:24, 1 Chronicles 3:10, Matthew 1:8', NULL, NULL, NULL, NULL, '35', '1 Kings 22:41-42, 2 Chronicles 20:31-32', '25', '1 Kings 22:41-42, 2 Chronicles 20:31-32');
/*
Note: There are two different King Jehorams. 

      Jehoram son of Ahab, according to 1 & 2 Kings, was king over Israel in Samaria (32°25'N 35°18'E). 
      This geographically maps to the 10 Northern Tribes of Reuben, Simeon, Levi, 
      Dan, Naphtali, Gad, Asher, Issachar, Zebulun, and Joseph:
	  
      - 2 Kings 3:1 KJV "Now Jehoram the son of Ahab began to reign over Israel in Samaria 
	  		 the eighteenth year of Jehoshaphat king of Judah, and reigned twelve years."
      - 1 Kings 22:51 KJV "Ahaziah the son of Ahab began to reign over Israel in Samaria 
	  		   the seventeenth year of Jehoshaphat king of Judah, and reigned two years over Israel."
      - 2 Kings 8:16 KJV "And in the fifth year of Joram the son of Ahab king of Israel, 
	  		  Jehoshaphat being then king of Judah, Jehoram the son of Jehoshaphat king of Judah began to reign."

      Jehoram son of Jehosaphat, according to 2 Chrinicles 21:16-20, was king over Jerusalem/Judah (31°46'N 35°12'E). 
      This geographically maps to the 2 Southern Tribes of Judah and Benjamin:
	  
      - 2 Chronicles 21:16 KJV "Moreover the LORD stirred up against Jehoram the 
	  			spirit of the Philistines, and of the Arabians, that were near the Ethiopians:"
      - 2 Chronicles 21:17 KJV "And they came up into Judah, and brake into it, and carried 
	  			wives; so that there was never a son left him, save Jehoahaz, the youngest of his sons."
      - 2 Chronicles 21:18 KJV "And after all this the LORD smote him in his bowels with an incurable disease."
      - 2 Chronicles 21:19 KJV "And it came to pass, that in process of time, after the end of 
	  			two years, his bowels fell out by reason of his sickness: so he died of sore diseases. 
	  			And his people made no burning for him, like the burning of his fathers."
       - 2 Chronicles 21:20 KJV "Thirty and two years old was he when he began to reign, and he [Jehoram]
	  			 reigned in Jerusalem eight years, and departed without being desired. 
	  			 Howbeit they buried him in the city of David, but not in the sepulchres of the kings."
								
Note: Ahaziah had no son to assume the throne of the 10 Northern Tribes, so Jehoram son of Ahab and Jezebel 
      became king over Israel. To the South, Jehoram took the throne two years prior to Jehoshaphat's death since 
      Jehoshaphat allied with Ahab in a military campaign against Ramoth Gilead in 1 Kings 22. Obviously, Jehoshaphat 
      would not depart from Judah with no leader, so Jehoram son of Jehoshaphat became co-regent king at that time:
	  
      - 2 Kings 1:16 KJV "And he [Elijah] said unto him [Ahaziah], Thus saith the LORD, 
	  		  Forasmuch as thou hast sent messengers to enquire of Baalzebub the god of Ekron 
	  		  [of the heathen Philistines], 
	  		  is it not because there is no God in Israel to enquire of his word? therefore 
	  		  thou shalt not come down off that bed on which thou art gone up, but shalt surely die 
	  		  [every male of Ahab's family was soon to be exterminated according to 1 Kings 21:21-24]."
      - 2 Kings 1:17 KJV "So he [Ahaziah] died according to the word of the LORD which Elijah had spoken. 
	  		  And Jehoram [son of Ahab and Jezebel] reigned in his stead in the second year of 
			  Jehoram the son of Jehoshaphat king of Judah; because he [Ahaziah] had no son." 
						  
Note: There are two different Jorams. Translations are not universal.

      Jehoram son of Jehoshaphat king of Judah is called "Joram" in 1 Chronicles 3:11.
	  
      - 1 Chronicles 3:10 KJV "And Solomon's son was Rehoboam, Abia his son, Asa his son, Jehoshaphat his son,"
      - 1 Chronicles 3:11 KJV "Joram his son, Ahaziah his son, Joash his son,"

      Jehoram son of Ahab king of Israel is called "Joram" in 2 Kings 8:16.
      - 2 Kings 8:16 KJV "And in the fifth year of Joram the son of Ahab king of Israel, 
	  		  Jehoshaphat being then king of Judah, Jehoram the son of Jehoshaphat king of Judah began to reign."
*/
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('40', 'Jehoram (a.k.a. Joram in 1 Ch. 3:11), King of Judah', 'H3141', 'M', '1 Chronicles 3:10-11', 'Jehoshaphat', '2 Kings 1:17, 1 Chronicles 3:10-11, Matthew 1:8', NULL, NULL, NULL, NULL, '32', '2 Kings 8:17, 2 Chronicles 21:16-20', '8', '2 Kings 8:17, 2 Chronicles 21:16-20');
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('41', 'Ahaziah, King of Judah', 'H274', 'M', '1 Chronicles 3:11', 'Jehoram', '1 Chronicles 3:11, Matthew 1:8', NULL, NULL, NULL, NULL, '22 or 42', '2 Kings 8:26, 2 Chronicles 22:2', '1', '2 Kings 8:26, 2 Chronicles 22:2');
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('42', 'Jotham, King of Judah', 'H3147', 'M', '2 Chronicles 27:1', 'Uzziah', 'Matthew 1:9', NULL, NULL, NULL, NULL, '25', '2 Kings 15:32-33, 2 Chronicles 27:1', '16', '2 Kings 15:32-33, 2 Chronicles 27:1');
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('43', 'Ahaz, King of Judah', 'H271', 'M', '1 Chronicles 3:12-13', 'Jotham', '2 Kings 15:38, 1 Chronicles 3:12-13, 2 Chronicles 27:9, Matthew 1:9', NULL, NULL, NULL, NULL, '20', '2 Kings 16:1-2, 2 Chronicles 28:1', '16', '2 Kings 16:1-2, 2 Chronicles 28:1');
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('44', 'Hezekiah, King of Judah', 'H2396', 'M', '1 Chronicles 3:13', 'Ahaz & Abijah', '2 Kings 16:20, 1 Chronicles 3:13, 2 Chronicles 28:27, Matthew 1:9', NULL, NULL, NULL, NULL, '25', '2 Kings 18:1-2, 2 Chronicles 29:1', '29', '2 Kings 18:1-2, 2 Chronicles 29:1');
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('45', 'Manasseh, King of Judah', 'H4519', 'M', '1 Chronicles 3:13', 'Hezekiah & Hephzibah', '2 Kings 21:1, 1 Chronicles 3:13, Matthew 1:10', NULL, NULL, NULL, NULL, '12', '2 Kings 21:1, 2 Chronicles 33:1', '55', '2 Kings 21:1, 2 Chronicles 33:1');
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('46', 'Amon, King of Judah', 'H526', 'M', '1 Chronicles 3:14', 'Manasseh', '2 Kings 21:20, 1 Chronicles 3:13-14, Matthew 1:10', NULL, NULL, NULL, NULL, '22', '2 Kings 21:19, 2 Chronicles 33:21', '2', '2 Kings 21:19, 2 Chronicles 33:21');  
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('47', 'Josiah, King of Judah', 'H2977', 'M', '1 Chronicles 3:14', 'Amon & Jedidah', '1 Chronicles 3:14, Matthew 1:10', NULL, NULL, NULL, NULL, '8', '2 Kings 22:1, 2 Chronicles 34:1', '31', '2 Kings 22:1, 2 Chronicles 34:1');  
/*
Note: King Nebuchadnezzar II (605-561 BC) of the Neo-Babylonian Empire sacked Jerusalem in 586 BC after the reign of King Josiah. King Jeconiah surrendered to the Babylonians
      during the eighth year of King Nebuchadnezzar II's reign according to 2 Kings 24:12. This marked the beginning of the Babylonian exile.
      It is widely documented that King Nebuchadnezzar II became king over the Neo-Babylonian Empire in 605 BC. 
      It is also widely documented that in the eighth year of Nebuchadnezzar II's reign, i.e. 597 BC, he captured King Jeconiah in 597BC.
	  
      - 2 Kings 24:12 KJV "And Jehoiachin the king of Judah went out to the king of Babylon [surrendered], he, and his mother, and his servants, and his princes, and his officers: 
	  		   and the king of Babylon took him [Jehoiachin] in the eighth year of his [Nebuchadnezzar's] reign."
	  
Note: In the English tongue, a discrepancy lies in the statements of Jehoiachin's age when he began to reign being eight in 2 Chronicles 36:9 and eighteen in 2 Kings 24:8. 
      In the Hebrew tongue, eight and eighteen share the same consonant: "shem-o-neh'". As a conjunction, the word ten, pronounced "aw-sawr'" in the Hebrew, is included in 2 Kings 24:8. 
      This conjunction of "shem-o-neh'" (eight) and "aw-sawr'" (ten) in the Hebrew translates in the English to "eighteen".
      The word "eight" has the same article in 2 Kings 24:8 and 2 Chronicles 36:9. Therefore, 2 Chronicles 36:9 seems to be a broader reference to 2 Kings 24:8.
	  
      - 2 Chronicles 36:9 KJV "Jehoiachin was eight years old when he began to reign, and he reigned three months and ten days in Jerusalem:"
      - 2 Kings 24:8 KJV "Jehoiachin was eighteen years old when he began to reign, and he reigned in Jerusalem three months."
	  
Strong's Definition of Eight: שְׁמֹנֶה (Strong's Hebrew # 8083) "shem-o-neh'" - A cardinal number. Eight.
Strong's Definition of Eighteen: עֶשֶׂר (Strong's Hebrew # 8083 & 6240) "shem-o-neh'" - (H8083) "shem-o-neh'" - A cardinal number. Eight. Conjoined with (H6240) "aw-sawr'" - Ten (only in combination), i.e. teen.
	  
Note: Three months and ten days is still three months. "Three months and ten days" is more specific than "three months."
*/
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('48', 'Jeconiah (a.k.a. Jehoiachin), King of Judah', 'H3078', 'M', 'Strong''s Hebrew # 3078 & 3204 (masculine noun)', 'Josiah', 'Matthew 1:11', NULL, NULL, NULL, NULL, 'Either 8 or 18.', '2 Kings 24:8, 2 Chronicles 36:9', '3months & 10days', '2 Kings 24:8, 2 Kings 24:12, 2 Chronicles 36:9');
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('49', 'Salathiel', 'H7597', 'M', '1 Chronicles 3:17', 'Jeconiah', '1 Chronicles 3:17, Matthew 1:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('50', 'Zorobabel (a.k.a. Zerubbabel), Governer of Judah', 'H2216', 'M', 'Haggai 1:1', 'Shealtiel', 'Ezra 3:2, Haggai 1:1, Matthew 1:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL); 
-- Note: Zorobabel returned to Jerusalem as Governor of Judah after the Babylonian exile according to Ezra 3:1-2 and Haggai 1:1-2.
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('51', 'Abiud', 'G10', NULL, 'Strong''s Greek # 10 (locative noun)', 'Zorobabel', 'Matthew 1:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('52', 'Eliakim', 'G1662', 'M', 'Strong''s Greek # 1662 (masculine noun)', 'Abiud', 'Matthew 1:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('53', 'Azor', 'G107', 'M', 'Strong''s Greek # 107 (masculine noun)', 'Eliakim', 'Matthew 1:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('54', 'Sadoc', 'G4524', 'M', 'Strong''s Greek # 4524 (masculine noun)', 'Azor', 'Matthew 1:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('55', 'Achim', 'G885', 'M', 'Strong''s Greek # 885 (masculine noun)', 'Sadoc', 'Matthew 1:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('56', 'Eliud', 'G1664', 'M', 'Strong''s Greek # 1664 (masculine noun)', 'Achim', 'Matthew 1:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('57', 'Eleazar', 'G1648', 'M', 'Strong''s Greek # 1648 (masculine noun)', 'Eliud', 'Matthew 1:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('58', 'Matthan', 'G3157', 'M', 'Strong''s Greek # 3157 (masculine noun)', 'Eleazar', 'Matthew 1:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('59', 'Jacob', 'G2384', 'M', 'Strong''s Greek # 2384 (masculine noun)', 'Matthan', 'Matthew 1:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO RepresentativeGenealogySolomonToJoseph VALUES ('60', 'Joseph (Mary''s Husband)', 'G2501', 'M', 'Matthew 1:16', 'Jacob', 'Matthew 1:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  


-- Make sure everything got inserted:
SELECT * FROM RepresentativeGenealogySolomonToJoseph;


INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('35', 'Solomon, King of Israel (Undivided Kingdom)', 'H8010', 'M', '2 Samuel 12:24', 'David', '2 Samuel 12:24, 1 Chronicles 3:10, Matthew 1:6', NULL, NULL, NULL, NULL, NULL, NULL, '40', '1 Kings 11:42, 2 Chronicles 9:30'); 
/*
Note: According to 1 Kings chapter 12, the Kingdom of Israel divided during the reign of King Rehoboam. 
      The Kingdom of Israel divided into two parts: Judah, containing the 2 Southern Tribes of Judah and Benjamin; and Israel, 
      containing the 10 Northern Tribes of Reuben, Simeon, Levi, Dan, Naphtali, Gad, Asher, Issachar, Zebulun, and Joseph.
*/
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('36', 'Rehoboam, King of Judah', 'H7346', 'M', '1 Kings 11:43, 1 Chronicles 3:10', 'Solomon', '1 Kings 11:43, 1 Chronicles 3:10, Matthew 1:7', NULL, NULL, NULL, NULL, '41', '1 Kings 14:21', '17', '1 Kings 14:21');  
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('37', 'Abijah (a.k.a. Abijam & Abia), King of Judah', 'H29', 'M', '1 Chronicles 3:10', 'Rehoboam', '1 Kings 15:1-2, 1 Chronicles 3:10, Matthew 1:7', NULL, NULL, NULL, NULL, NULL, NULL, '3', '1 Kings 15:1-2, 2 Chronicles 13:1-2');
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('38', 'Asa, King of Judah', 'H609', 'M', '1 Chronicles 3:10', 'Abijah', '1 Chronicles 3:10, 2 Chronicles 14:1, Matthew 1:7', NULL, NULL, NULL, NULL, NULL, NULL, '41', '1 Kings 15:8-10'); 
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('39', 'Jehoshaphat, King of Judah', '3092', 'M', '1 Chronicles 3:10', 'Asa & Azubah', '1 Kings 15:24, 1 Chronicles 3:10, Matthew 1:8', NULL, NULL, NULL, NULL, '35', '1 Kings 22:41-42, 2 Chronicles 20:31-32', '25', '1 Kings 22:41-42, 2 Chronicles 20:31-32');
/*
Note: There are two different King Jehorams. 

      Jehoram son of Ahab, according to 1 & 2 Kings, was king over Israel in Samaria (32°25'N 35°18'E). 
      This geographically maps to the 10 Northern Tribes of Reuben, Simeon, Levi, 
      Dan, Naphtali, Gad, Asher, Issachar, Zebulun, and Joseph:
	  
      - 2 Kings 3:1 KJV "Now Jehoram the son of Ahab began to reign over Israel in Samaria 
	  		 the eighteenth year of Jehoshaphat king of Judah, and reigned twelve years."
      - 1 Kings 22:51 KJV "Ahaziah the son of Ahab began to reign over Israel in Samaria 
	  		   the seventeenth year of Jehoshaphat king of Judah, and reigned two years over Israel."
      - 2 Kings 8:16 KJV "And in the fifth year of Joram the son of Ahab king of Israel, 
	  		  Jehoshaphat being then king of Judah, Jehoram the son of Jehoshaphat king of Judah began to reign."

      Jehoram son of Jehosaphat, according to 2 Chrinicles 21:16-20, was king over Jerusalem/Judah (31°46'N 35°12'E). 
      This geographically maps to the 2 Southern Tribes of Judah and Benjamin:
	  
      - 2 Chronicles 21:16 KJV "Moreover the LORD stirred up against Jehoram the 
	  			spirit of the Philistines, and of the Arabians, that were near the Ethiopians:"
      - 2 Chronicles 21:17 KJV "And they came up into Judah, and brake into it, and carried 
	  			wives; so that there was never a son left him, save Jehoahaz, the youngest of his sons."
      - 2 Chronicles 21:18 KJV "And after all this the LORD smote him in his bowels with an incurable disease."
      - 2 Chronicles 21:19 KJV "And it came to pass, that in process of time, after the end of 
	  			two years, his bowels fell out by reason of his sickness: so he died of sore diseases. 
	  			And his people made no burning for him, like the burning of his fathers."
      - 2 Chronicles 21:20 KJV "Thirty and two years old was he when he began to reign, and he [Jehoram]
	  			reigned in Jerusalem eight years, and departed without being desired. 
	  			Howbeit they buried him in the city of David, but not in the sepulchres of the kings."
								
Note: Ahaziah had no son to assume the throne of the 10 Northern Tribes, so Jehoram son of Ahab and Jezebel 
      became king over Israel. To the South, Jehoram took the throne two years prior to Jehoshaphat's death since 
      Jehoshaphat allied with Ahab in a military campaign against Ramoth Gilead in 1 Kings 22. Obviously, Jehoshaphat 
      would not depart from Judah with no leader, so Jehoram son of Jehoshaphat became co-regent king at that time:
	  
      - 2 Kings 1:16 KJV "And he [Elijah] said unto him [Ahaziah], Thus saith the LORD, 
	  		  Forasmuch as thou hast sent messengers to enquire of Baalzebub the god of Ekron 
	  		  [of the heathen Philistines], 
	  		  is it not because there is no God in Israel to enquire of his word? therefore 
	  		  thou shalt not come down off that bed on which thou art gone up, but shalt surely die 
	  		  [every male of Ahab's family was soon to be exterminated according to 1 Kings 21:21-24]."
      - 2 Kings 1:17 KJV "So he [Ahaziah] died according to the word of the LORD which Elijah had spoken. 
	  		  And Jehoram [son of Ahab and Jezebel] reigned in his stead in the second year of 
			  Jehoram the son of Jehoshaphat king of Judah; because he [Ahaziah] had no son." 
						  
Note: There are two different Jorams. Translations are not universal.

      Jehoram son of Jehoshaphat king of Judah is called "Joram" in 1 Chronicles 3:11.
	  
      - 1 Chronicles 3:10 KJV "And Solomon's son was Rehoboam, Abia his son, Asa his son, Jehoshaphat his son,"
      - 1 Chronicles 3:11 KJV "Joram his son, Ahaziah his son, Joash his son,"

      Jehoram son of Ahab king of Israel is called "Joram" in 2 Kings 8:16.
      - 2 Kings 8:16 KJV "And in the fifth year of Joram the son of Ahab king of Israel, 
	  		  Jehoshaphat being then king of Judah, Jehoram the son of Jehoshaphat king of Judah began to reign."
*/
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('40', 'Jehoram (a.k.a. Joram in 1 Ch. 3:11), King of Judah', 'H3141', 'M', '1 Chronicles 3:10-11', 'Jehoshaphat', '2 Kings 1:17, 1 Chronicles 3:10-11, Matthew 1:8', NULL, NULL, NULL, NULL, '32', '2 Kings 8:17, 2 Chronicles 21:16-20', '8', '2 Kings 8:17, 2 Chronicles 21:16-20');
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('41', 'Ahaziah, King of Judah', 'H274', 'M', '1 Chronicles 3:11', 'Jehoram', '1 Chronicles 3:11, Matthew 1:8', NULL, NULL, NULL, NULL, '22 or 42', '2 Kings 8:26, 2 Chronicles 22:2', '1', '2 Kings 8:26, 2 Chronicles 22:2');
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('42', 'Joash (a.k.a. Jehoash in 2 Ki. 12:1), King of Judah', 'H3060', 'M', '1 Chronicles 3:11', 'Ahaziah', '1 Chronicles 3:11', NULL, NULL, NULL, NULL, '7', '2 Kings 11:21, 2 Chronicles 24:1', '40', '2 Kings 12:1, 2 Chronicles 24:1');
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('43', 'Amaziah, King of Judah', 'H558', 'M', '2 Kings 14:1', 'Joash & Jehoaddan', '1 Chronicles 3:11-12, 2 Kings 14:1-2', NULL, NULL, NULL, NULL, '25', '2 Kings 14:1-2, 2 Chronicles 25:1', '29', '2 Kings 14:1-2, 2 Chronicles 25:1'); 
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('44', 'Azariah (a.k.a. Uzziah in 2 Ch. 26:3), King of Judah', 'H5838', 'M', '2 Chronicles 26:3', 'Amaziah & Jecholiah', '1 Chronicles 3:12, 2 Kings 15:1-2, 2 Chronicles 26:3', NULL, NULL, NULL, NULL, '16', '2 Kings 15:1-2, 2 Chronicles 26:3', '52', '2 Kings 15:1-2, 2 Chronicles 26:3');
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('45', 'Jotham, King of Judah', 'H3147', 'M', '1 Chronicles 3:12', 'Azariah', '1 Chronicles 3:12, 2 Kings 15:32-33', NULL, NULL, NULL, NULL, '25', '2 Kings 15:32-33, 2 Chronicles 27:1', '16', '2 Kings 15:32-33, 2 Chronicles 27:1');
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('46', 'Ahaz, King of Judah', 'H271', 'M', '1 Chronicles 3:12-13', 'Jotham', '2 Kings 15:38, 1 Chronicles 3:12-13, 2 Chronicles 27:9, Matthew 1:9', NULL, NULL, NULL, NULL, '20', '2 Kings 16:1-2, 2 Chronicles 28:1', '16', '2 Kings 16:1-2, 2 Chronicles 28:1');
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('47', 'Hezekiah, King of Judah', 'H2396', 'M', '1 Chronicles 3:13', 'Ahaz & Abijah', '2 Kings 16:20, 1 Chronicles 3:13, 2 Chronicles 28:27, Matthew 1:9', NULL, NULL, NULL, NULL, '25', '2 Kings 18:1-2, 2 Chronicles 29:1', '29', '2 Kings 18:1-2, 2 Chronicles 29:1');
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('48', 'Manasseh, King of Judah', 'H4519', 'M', '1 Chronicles 3:13', 'Hezekiah & Hephzibah', '2 Kings 21:1, 1 Chronicles 3:13, Matthew 1:10', NULL, NULL, NULL, NULL, '12', '2 Kings 21:1, 2 Chronicles 33:1', '55', '2 Kings 21:1, 2 Chronicles 33:1');
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('49', 'Amon, King of Judah', 'H526', 'M', '1 Chronicles 3:14', 'Manasseh', '2 Kings 21:20, 1 Chronicles 3:13-14, Matthew 1:10', NULL, NULL, NULL, NULL, '22', '2 Kings 21:19, 2 Chronicles 33:21', '2', '2 Kings 21:19, 2 Chronicles 33:21');  
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('50', 'Josiah, King of Judah', 'H2977', 'M', '1 Chronicles 3:14', 'Amon & Jedidah', '1 Chronicles 3:14, Matthew 1:10', NULL, NULL, NULL, NULL, '8', '2 Kings 22:1, 2 Chronicles 34:1', '31', '2 Kings 22:1, 2 Chronicles 34:1');
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('51', 'Jehoiakim, King of Judah', 'H3079', 'M', '2 Kings 23:36', 'Josiah & Zebudah', '1 Chronicles 3:15, 2 Kings 23:36', NULL, NULL, NULL, NULL, '25', '2 Kings 23:36, 2 Chronicles 36:5', '11', '2 Kings 23:36, 2 Chronicles 36:5');
/*
Note: King Nebuchadnezzar II (605-561 BC) of the Neo-Babylonian Empire sacked Jerusalem in 586 BC after the reign of King Josiah. King Jeconiah surrendered to the Babylonians
      during the eighth year of King Nebuchadnezzar II's reign according to 2 Kings 24:12. This marked the beginning of the Babylonian exile.
      It is widely documented that King Nebuchadnezzar II became king over the Neo-Babylonian Empire in 605 BC. 
      It is also widely documented that in the eighth year of Nebuchadnezzar II's reign, i.e. 597 BC, he captured King Jeconiah in 597BC.
	  
      - 2 Kings 24:12 KJV "And Jehoiachin the king of Judah went out to the king of Babylon [surrendered], he, and his mother, and his servants, and his princes, and his officers: 
	  		   and the king of Babylon took him [Jehoiachin] in the eighth year of his [Nebuchadnezzar's] reign."
	  
Note: In the English tongue, a discrepancy lies in the statements of Jehoiachin's age when he began to reign being eight in 2 Chronicles 36:9 and eighteen in 2 Kings 24:8. 
      In the Hebrew tongue, eight and eighteen share the same consonant: "shem-o-neh'". As a conjunction, the word ten, pronounced "aw-sawr'" in the Hebrew, is included in 2 Kings 24:8. 
      This conjunction of "shem-o-neh'" (eight) and "aw-sawr'" (ten) in the Hebrew translates in the English to "eighteen".
      The word "eight" has the same article in 2 Kings 24:8 and 2 Chronicles 36:9. Therefore, 2 Chronicles 36:9 seems to be a broader reference to 2 Kings 24:8.
	  
      - 2 Chronicles 36:9 KJV "Jehoiachin was eight years old when he began to reign, and he reigned three months and ten days in Jerusalem:"
      - 2 Kings 24:8 KJV "Jehoiachin was eighteen years old when he began to reign, and he reigned in Jerusalem three months."
	  
Strong's Definition of Eight: שְׁמֹנֶה (Strong's Hebrew # 8083) "shem-o-neh'" - A cardinal number. Eight.
Strong's Definition of Eighteen: עֶשֶׂר (Strong's Hebrew # 8083 & 6240) "shem-o-neh'" - (H8083) "shem-o-neh'" - A cardinal number. Eight. Conjoined with (H6240) "aw-sawr'" - Ten (only in combination), i.e. teen.
	  
Note: Three months and ten days is still three months. "Three months and ten days" is more specific than "three months."
*/
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('52', 'Jeconiah (a.k.a. Jehoiachin), King of Judah', 'H3078', 'M', 'Strong''s Hebrew # 3078 & 3204 (masculine noun)', 'Jehoiakim', '2 Kings 24:6, 1 Chronicles 3:16', NULL, NULL, NULL, NULL, 'Either 8 or 18.', '2 Kings 24:8, 2 Chronicles 36:9', '3months & 10days', '2 Kings 24:8, 2 Kings 24:12, 2 Chronicles 36:9');
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('53', 'Salathiel', 'H7597', 'M', '1 Chronicles 3:17', 'Jeconiah', '1 Chronicles 3:17, Matthew 1:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('54', 'Zorobabel (a.k.a. Zerubbabel), Governer of Judah', 'H2216', 'M', 'Haggai 1:1', 'Shealtiel', 'Ezra 3:2, Haggai 1:1, Matthew 1:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL); 
-- Note: Zorobabel returned to Jerusalem as Governor of Judah after the Babylonian exile according to Ezra 3:1-2 and Haggai 1:1-2.
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('55', 'Abiud', 'G10', NULL, 'Strong''s Greek # 10 (locative noun)', 'Zorobabel', 'Matthew 1:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('56', 'Eliakim', 'G1662', 'M', 'Strong''s Greek # 1662 (masculine noun)', 'Abiud', 'Matthew 1:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('57', 'Azor', 'G107', 'M', 'Strong''s Greek # 107 (masculine noun)', 'Eliakim', 'Matthew 1:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('58', 'Sadoc', 'G4524', 'M', 'Strong''s Greek # 4524 (masculine noun)', 'Azor', 'Matthew 1:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('59', 'Achim', 'G885', 'M', 'Strong''s Greek # 885 (masculine noun)', 'Sadoc', 'Matthew 1:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('60', 'Eliud', 'G1664', 'M', 'Strong''s Greek # 1664 (masculine noun)', 'Achim', 'Matthew 1:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('61', 'Eleazar', 'G1648', 'M', 'Strong''s Greek # 1648 (masculine noun)', 'Eliud', 'Matthew 1:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('62', 'Matthan', 'G3157', 'M', 'Strong''s Greek # 3157 (masculine noun)', 'Eleazar', 'Matthew 1:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('63', 'Jacob', 'G2384', 'M', 'Strong''s Greek # 2384 (masculine noun)', 'Matthan', 'Matthew 1:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  
INSERT INTO BiologicalGenealogySolomonToJoseph VALUES ('64', 'Joseph (Mary''s Husband)', 'G2501', 'M', 'Matthew 1:16', 'Jacob', 'Matthew 1:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);  


-- Make sure everything got inserted:
SELECT * FROM BiologicalGenealogySolomonToJoseph;


INSERT INTO GenealogyNathanToHeli VALUES ('35', 'Nathan', 'G3481', '23', 'M', 'Luke 3:31', 'David', '2 Samuel 5:13-14, Luke 3:31', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('36', 'Mattatha', 'G3160', '24', 'M', 'Luke 3:31', 'Nathan', 'Luke 3:31', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('37', 'Menan', 'G3104', '25', 'M', 'Luke 3:31', 'Mattatha', 'Luke 3:31', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('38', 'Melea', 'G3190', '26', 'M', 'Luke 3:31', 'Menan', 'Luke 3:31', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('39', 'Eliakim', 'G1662', '27', 'M', 'Luke 3:30-31', 'Melea', 'Luke 3:30-31', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('40', 'Jonan', 'G2494', '28', 'M', 'Luke 3:30', 'Eliakim', 'Luke 3:30', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('41', 'Joseph', 'G2501', '29', 'M', 'Luke 3:30', 'Jonan', 'Luke 3:30', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('42', 'Juda', 'G2455', '2a', 'M', 'Luke 3:30', 'Joseph', 'Luke 3:30', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('43', 'Simeon', 'G4826', '2b', 'M', 'Luke 3:30', 'Juda', 'Luke 3:30', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('44', 'Levi', 'G3017', '2c', 'M', 'Luke 3:29-30', 'Simeon', 'Luke 3:29-30', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('45', 'Matthat', 'G3158', '2d', 'M', 'Luke 3:29', 'Levi', 'Luke 3:29', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('46', 'Jorim', 'G2497', '2e', 'M', 'Luke 3:29', 'Matthat', 'Luke 3:29', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('47', 'Eliezer', 'G1663', '2f', 'M', 'Luke 3:29', 'Jorim', 'Luke 3:29', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('48', 'Jose', 'G2499', '30', 'M', 'Luke 3:29', 'Eliezer', 'Luke 3:29', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('49', 'Er', 'G2262', '31', 'M', 'Luke 3:28-29', 'Jose', 'Luke 3:28-29', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('50', 'Elmodam', 'G1678', '32', 'M', 'Luke 3:28', 'Er', 'Luke 3:28', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('51', 'Cosam', 'G2973', '33', 'M', 'Luke 3:28', 'Elmodam', 'Luke 3:28', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('52', 'Addi', 'G78', '34', 'M', 'Luke 3:28', 'Cosam', 'Luke 3:28', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('53', 'Melchi', 'G3197', '35', 'M', 'Luke 3:28', 'Addi', 'Luke 3:28', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('54', 'Neri', 'G3518', '36', 'M', 'Luke 3:27-28', 'Melchi', 'Luke 3:27-28', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('55', 'Salathiel', 'G4528', '37', 'M', 'Luke 3:27', 'Neri', 'Luke 3:27', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('56', 'Zorobabel', 'G2216', '38', 'M', 'Luke 3:27', 'Salathiel', 'Luke 3:27', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('57', 'Rhesa', 'G4488', '39', 'M', 'Luke 3:27', 'Zorobabel', 'Luke 3:27', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('58', 'Joanna', 'G2490', '3a', 'M', 'Luke 3:27', 'Rhesa', 'Luke 3:27', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('59', 'Juda', 'G2455', '3b', 'M', 'Luke 3:26-27', 'Joanna', 'Luke 3:26-27', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('60', 'Joseph', 'G2501', '3c', 'M', 'Luke 3:26', 'Juda', 'Luke 3:26', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('61', 'Semei', 'G4584', '3d', 'M', 'Luke 3:26', 'Joseph', 'Luke 3:26', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('62', 'Mattathias', 'G3161', '3e', 'M', 'Luke 3:26', 'Semei', 'Luke 3:26', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('63', 'Maath', 'G3092', '3f', 'M', 'Luke 3:26', 'Mattathias', 'Luke 3:26', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('64', 'Nagge', 'G3477', '40', 'M', 'Luke 3:25-26', 'Maath', 'Luke 3:25-26', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('65', 'Esli', 'G2069', '41', 'M', 'Luke 3:25', 'Nagge', 'Luke 3:25', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('66', 'Naum', 'G3486', '42', 'M', 'Luke 3:25', 'Esli', 'Luke 3:25', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('67', 'Amos', 'G301', '43', 'M', 'Luke 3:25', 'Naum', 'Luke 3:25', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('68', 'Mattathias', 'G3161', '44', 'M', 'Luke 3:25', 'Amos', 'Luke 3:25', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('69', 'Joseph', 'G2501', '45', 'M', 'Luke 3:24-25', 'Mattathias', 'Luke 3:24-25', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('70', 'Janna', 'G2388', '46', 'M', 'Luke 3:24', 'Joseph', 'Luke 3:24', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('71', 'Melchi', 'G3197', '47', 'M', 'Luke 3:24', 'Janna', 'Luke 3:24', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('72', 'Levi', 'G3017', '48', 'M', 'Luke 3:24', 'Melchi', 'Luke 3:24', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('73', 'Matthat', 'G3158', '49', 'M', 'Luke 3:24', 'Levi', 'Luke 3:24', NULL, NULL, NULL, NULL);
INSERT INTO GenealogyNathanToHeli VALUES ('74', 'Heli', 'G2242', '4a', 'M', 'Luke 3:23-24', 'Matthat', 'Luke 3:23-24', NULL, NULL, NULL, NULL);
/*  
Strong's Definition of Son: υἱός (Strong's Greek # 5207) "hwee-os'" - (masculine noun) Kinship.
Strong's Definition of Begat: γεννάω (Strong's Greek # 1080) "ghen-nah'-o" - To procreate.
Note: According to the Strong's Exhaustive Concordance, none of the genealogy records 
      in the book of Luke use the word "begat." Rather, the terminology used is "the son of." 
      With the absence the word "begat" in the entire book of Luke, it would be invalid
      to say that Luke 3:23 explicitly states that Joseph, Mary's husband, is the biological 
      son of Heli. Mary's husband Joseph is Heli's son-in-law. Biologically, Joseph does not belong in this table.  
*/


-- Make sure everything got inserted:
SELECT * FROM GenealogyNathanToHeli;


INSERT INTO GenealogyOfCain VALUES('2', 'Cain', 'H7014', 'M', 'Genesis 4:1', 'Eve', 'Genesis 4:1', 'Abel & Seth', 'Genesis 4:2, Genesis 4:25', NULL, NULL, 'Tiller of the Ground', 'Genesis 4:2');
INSERT INTO GenealogyOfCain VALUES('3', 'Enoch', 'H2585', 'M', 'Genesis 4:17', 'Cain', 'Genesis 4:17', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO GenealogyOfCain VALUES('4', 'Irad', 'H5897', 'M', 'Strong''s Hebrew # 5897 (masculine noun)', 'Enoch', 'Genesis 4:18', NULL,  NULL, NULL, NULL, NULL, NULL);
INSERT INTO GenealogyOfCain VALUES('5', 'Mehujael', 'H4232', 'M', 'Strong''s Hebrew # 4232 (masculine noun)', 'Irad', 'Genesis 4:18', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO GenealogyOfCain VALUES('6', 'Methusael', 'H4967', 'M', 'Strong''s Hebrew # 4967 (masculine noun)', 'Mehujael', 'Genesis 4:18', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO GenealogyOfCain VALUES('7', 'Lamech', 'H3929', 'M', 'Strong''s Hebrew # 3929 (masculine noun)', 'Methusael', 'Genesis 4:18', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO GenealogyOfCain VALUES('8', 'Jabal', 'H2989', 'M', 'Genesis 4:20', 'Lamech & Adah', 'Genesis 4:19-20', 'Jubal', 'Genesis 4:20-21', NULL, NULL, 'Tent Dweller and Cattle Owner', 'Genesis 4:20');
INSERT INTO GenealogyOfCain VALUES('8', 'Jubal', 'H3106', 'M', 'Genesis 4:21', 'Lamech & Adah', 'Genesis 4:19-21', 'Jabal', 'Genesis 4:20-21', NULL, NULL, 'Harp and Organ Player', 'Genesis 4:21');
INSERT INTO GenealogyOfCain VALUES('8', 'Tubalcain', 'H8423', 'M', 'Strong''s Hebrew # 8423 (masculine noun)', 'Lamech & Zillah', 'Genesis 4:19, Genesis 4:22', 'Naamah', 'Genesis 4:22', NULL, NULL, 'Instructer of every artificer in brass and iron/ Metal Craftsman', 'Genesis 4:22, Strong''s Hebrew # 2794');
INSERT INTO GenealogyOfCain VALUES('8', 'Naamah', 'H5279', 'F', 'Genesis 4:22', 'Lamech & Zillah', 'Genesis 4:19, Genesis 4:22', 'Tubalcain', 'Genesis 4:22', NULL, NULL, NULL, NULL);


-- Make sure everything got inserted:
SELECT * FROM GenealogyOfCain;


-- Let's see everyone from Adam to David:
SELECT Generation AS "Generation", Name AS "Name", Gender AS "Gender", Age_when_individual_Begat_subsequent_child AS "Age When Child Was Begotten",
       Lifespan_Years AS "Lifespan Years", Begat_Age_Citation AS "Citation: Begat", Lifespan_Citation AS "Citation: Lifespan"
FROM GenealogyAdamToDavid 
ORDER BY Generation ASC;

-- Let's see the biological genealogy from Solomon to Joseph:
SELECT Generation AS "Generation", Name AS "Name", Gender AS "Gender", Age_when_individual_Begat_subsequent_child AS "Age When Child Was Born", Lifespan_Years AS "Lifespan Years", 
       Age_Before_Becoming_King AS "Age Before Becoming King", Years_As_King AS "Years as King", Age_Before_Becoming_King_Citation AS "Citation: Age Before King", Years_As_King_Citation AS "Citation: Years as King"
FROM BiologicalGenealogySolomonToJoseph 
ORDER BY Generation ASC;

-- Let's see the representative genealogy from Solomon to Joseph:
SELECT Generation AS "Generation", Name AS "Name", Gender AS "Gender", Age_when_individual_Begat_subsequent_child AS "Age When Child Was Born", Lifespan_Years AS "Lifespan Years", 
       Age_Before_Becoming_King AS "Age Before Becoming King", Years_As_King AS "Years as King", Age_Before_Becoming_King_Citation AS "Citation: Age Before King", Years_As_King_Citation AS "Citation: Years as King"
FROM RepresentativeGenealogySolomonToJoseph 
ORDER BY Generation ASC;

-- Let's see everyone from Nathan to Heli:
SELECT Generation AS "Generation", Name AS "Name", Gender AS "Gender", Parent AS "Parent", Age_when_individual_Begat_subsequent_child AS "Age When Child Was Born",
       Lifespan_Years AS "Lifespan Years", Parent_Citation AS "Citation"
FROM GenealogyNathanToHeli
ORDER BY Generation ASC;

-- Let's see the genealogy of the Kenites:
SELECT Generation AS "Generation", Name AS "Name", Concordance_ID AS "Strong''s #", Gender AS "Gender", Parent AS "Flesh Parent(s)",
       Sibling AS "Sibling(s)", Lifespan_Years AS "Lifespan Years", Profession AS "Profession", Gender_Citation AS "Citation: Gender",
       Parent_Citation AS "Citation: Parent", Sibling_Citation AS "Citation: Sibling", Lifespan_Citation AS "Citation: Lifespan", Profession_Citation AS "Citation: Profession"
FROM GenealogyOfCain
ORDER BY Generation ASC;

-- Let's compare the names of Adam's descendants to the names of the Kenites down to the 10th generation:
SELECT Generation AS "Generation", Name AS "Name", Parent AS "Parent(s)", "Strong''s #" AS "Strong''s #", "Lifespan Years", "Citation: Lifespan", "Citation: Parent"
FROM (
    SELECT 
        CAST(Generation AS INT) AS Generation, Name, Concordance_ID AS "Strong''s #", Parent, 
    	Lifespan_Years AS "Lifespan Years", Lifespan_Citation AS "Citation: Lifespan", Parent_Citation AS "Citation: Parent"
    FROM GenealogyAdamToDavid
    WHERE CAST(Generation AS INT) < 11
    UNION ALL
    SELECT 
        CAST(Generation AS INT), Name, Concordance_ID, Parent, Lifespan_Years, Lifespan_Citation, Parent_Citation
    FROM GenealogyOfCain
    WHERE CAST(Generation AS INT) < 11
) ComparedGenealogy
ORDER BY Generation ASC;

-- Let's see everyone from Adam to Heli:
SELECT Generation AS "Generation", Name AS "Name", Gender AS "Gender", Lifespan_Years AS "Lifespan Years", 
    Age_when_individual_Begat_subsequent_child AS "Age When Child Was Begotten", Begat_Age_Citation AS "Citation: Begat", Lifespan_Citation AS "Citation: Lifespan"
FROM (
    SELECT Generation, Name, Gender, Lifespan_Years, Age_when_individual_Begat_subsequent_child, Begat_Age_Citation, Lifespan_Citation 
    FROM GenealogyAdamToDavid
    UNION ALL
    SELECT Generation, Name, Gender, Lifespan_Years, Age_when_individual_Begat_subsequent_child, 
        Begat_Age_Citation, Lifespan_Citation 
    FROM GenealogyNathanToHeli
) CombinedData
ORDER BY Generation ASC;

-- Let's see everyone from Adam to Joseph (Mary's Husband), biologically:
SELECT Generation AS "Generation", Name AS "Name", Gender AS "Gender", Lifespan_Years AS "Lifespan Years", Age_when_individual_Begat_subsequent_child AS "Age When Child Was Begotten",
    Begat_Age_Citation AS "Citation: Begat", Lifespan_Citation AS "Citation: Lifespan"
FROM (
    SELECT Generation, Name, Gender, Lifespan_Years, Age_when_individual_Begat_subsequent_child,
        Begat_Age_Citation, Lifespan_Citation
    FROM GenealogyAdamToDavid
    UNION ALL
    SELECT Generation, Name, Gender, Lifespan_Years, Age_when_individual_Begat_subsequent_child,
        Begat_Age_Citation, LIFESPAN_CITATION AS Lifespan_Citation -- Alias the column name
    FROM BiologicalGenealogySolomonToJoseph
) CombinedData
ORDER BY Generation ASC;

-- Let's see everyone from Adam to Joseph representatively (i.e. what Matthew 1:17 represents):
SELECT Generation AS "Generation", Name AS "Name", Gender AS "Gender", Lifespan_Years AS "Lifespan Years", Age_when_individual_Begat_subsequent_child AS "Age When Child Was Begotten",
    Begat_Age_Citation AS "Citation: Begat", Lifespan_Citation AS "Citation: Lifespan"
FROM (
    SELECT Generation, Name, Gender, Lifespan_Years, Age_when_individual_Begat_subsequent_child,
        Begat_Age_Citation, Lifespan_Citation
    FROM GenealogyAdamToDavid
    UNION ALL
    SELECT Generation, Name, Gender, Lifespan_Years, Age_when_individual_Begat_subsequent_child,
        Begat_Age_Citation, LIFESPAN_CITATION AS Lifespan_Citation -- Alias the column name
    FROM RepresentativeGenealogySolomonToJoseph
) CombinedData
ORDER BY Generation ASC;

-- Let's see Joash, Amaziah, Azariah, and Jehoiakim because they are missing in Matthew 1:6-16 but present in 1 Chronicles 3:10-16:
SELECT Generation AS "Generation", Name AS "Name", Gender AS "Gender", Age_when_individual_Begat_subsequent_child AS "Age When Child Was Born", Lifespan_Years AS "Lifespan Years", 
       Age_Before_Becoming_King AS "Age Before Becoming King", Years_As_King AS "Years as King", Age_Before_Becoming_King_Citation AS "Citation: Age Before King", Years_As_King_Citation AS "Citation: Years as King"
FROM BiologicalGenealogySolomonToJoseph
WHERE Generation IN (42, 43, 44, 51)
ORDER BY Generation ASC;

-- Let's see all individuals who have a lifespan explicitly documented:
SELECT Generation AS "Generation", Name AS "Name", Lifespan_Years AS "Lifespan Years", Lifespan_Citation AS "Citation: Lifespan"
FROM GenealogyAdamToDavid 
Where Lifespan_Years IS NOT NULL
ORDER BY Generation ASC;

-- Let's prove that no individuals' lifespans are explicitly documented outside of the genealogy from Adam to David:
SELECT 'RepresentativeGenealogySolomonToJoseph' AS "Table", Generation AS "Generation", Name AS "Name", Lifespan_Years AS "Lifespan Years", Lifespan_Citation AS "Citation: Lifespan"
FROM RepresentativeGenealogySolomonToJoseph
WHERE Lifespan_Years IS NOT NULL
UNION ALL
SELECT 'BiologicalGenealogySolomonToJoseph' AS "Table", Generation AS "Generation", Name AS "Name", Lifespan_Years AS "Lifespan Years", Lifespan_Citation AS "Citation: Lifespan"
FROM BiologicalGenealogySolomonToJoseph
WHERE Lifespan_Years IS NOT NULL
UNION ALL
SELECT 'GenealogyNathanToHeli' AS "Table", Generation AS "Generation", Name AS "Name", Lifespan_Years AS "Lifespan Years", Lifespan_Citation AS "Citation: Lifespan"
FROM GenealogyNathanToHeli
WHERE Lifespan_Years IS NOT NULL
ORDER BY "Table", "Generation" ASC;

-- Drop table statements are below for convenience sake:
DROP TABLE GenealogyAdamToDavid;
DROP TABLE RepresentativeGenealogySolomonToJoseph;
DROP TABLE BiologicalGenealogySolomonToJoseph;
DROP TABLE GenealogyNathanToHeli;
DROP TABLE GenealogyOfCain;
