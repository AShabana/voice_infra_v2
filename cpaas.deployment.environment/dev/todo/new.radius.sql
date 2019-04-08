CREATE TABLE `cequensAcct` (
  `id` bigint(21) NOT NULL AUTO_INCREMENT,
  `acctsessionid` varchar(64) NOT NULL DEFAULT '',
  `acctuniqueid` varchar(32) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `sip_trunk` varchar(64) DEFAULT '',
  `nasipaddress` varchar(15) NOT NULL DEFAULT '',
  `port` varchar(15) DEFAULT NULL,
  `porttype` varchar(32) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `callMSduration` int(11) DEFAULT NULL,
  `calledstationid` varchar(50) NOT NULL DEFAULT '',
  `callingstationid` varchar(50) NOT NULL DEFAULT '',
  `acctterminatecause` varchar(32) NOT NULL DEFAULT '',
  `servicetype` varchar(32) DEFAULT NULL,
  `rc_sid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `acctuniqueid` (`acctuniqueid`),
  KEY `username` (`username`),
  KEY `acctsessionid` (`acctsessionid`),
  KEY `starttime` (`starttime`),
  KEY `rc_sid` (`rc_sid`),
  KEY `nasipaddress` (`nasipaddress`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 


CREATE TABLE `sip_trunks` (
	`id` bigint(21) NOT NULL AUTO_INCREMENT,
	`ip` varchar(15) NOT NULL DEFAULT '',
	`username` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 
