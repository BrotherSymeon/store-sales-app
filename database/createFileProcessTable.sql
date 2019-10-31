

use etsy_sales;
DROP TABLE IF EXISTS FileProcess;
create TABLE FileProcess (
  FileId BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (FileId),
  FileName VARCHAR(100) NOT NULL,
  ProcessStatus ENUM('CREATED', 'STARTED', 'FINISHED', 'ERROR')
);

DROP TABLE IF EXISTS FileProcessDetails;
create  TABLE FileProcessDetails(
  FileProcessDetailId BIGINT UNSIGNED  NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (FileProcessDetailId),
  DetailType ENUM('MESSAGE', 'ERROR', 'WARNING'),
  DetailMessage VARCHAR(200)
);
