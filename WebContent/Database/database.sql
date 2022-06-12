create database doanweb;
use doanweb;
create table Member(
	id int AUTO_INCREMENT,
    firstname varchar(50),
    lastname varchar(50),
    username varchar(50),
    password varchar(50),
    email varchar(50),
    phone varchar(50) unique,
    description varchar(50),
    createdDate datetime,
    updateTime datetime,
    PRIMARY KEY (`id`) 
);

create table Content(
	id int AUTO_INCREMENT,
    title varchar(50),
    brief longtext,
    content longtext,
    createddate datetime,
    updatetime datetime,
	sort varchar(50),
    authorid int,
    publiccontent int,
    PRIMARY KEY (`id`),
    FOREIGN KEY (authorid) REFERENCES Member(id)
);
INSERT INTO Member (firstname , lastname , username , password ,email ,phone ,description,createddate,updatetime)
VALUES ('Dung@gmail.com', 'Dung@gmail.com', 'Dung@gmail.com', 'Dung@gmail.com','Dung@gmail.com','123456789','Nhom7','2021/04/26','2021/05/26');

INSERT INTO Member (firstname , lastname , username , password ,email ,phone ,description,createddate,updatetime)
VALUES ('Tuyen@gmail.com', 'Tuyen@gmail.com', 'Tuyen@gmail.com', 'Tuyen@gmail.com','Tuyen@gmail.com','987654321','Nhom7','2021/04/26','2021/05/26');

INSERT INTO Member (firstname , lastname , username , password ,email ,phone ,description,createddate,updatetime)
VALUES ('Khoa@gmail.com', 'Khoa@gmail.com', 'Khoa@gmail.com', 'Khoa@gmail.com','Khoa@gmail.com','741852963','Nhom7','2021/04/26','2021/05/26');

INSERT INTO Member (firstname , lastname , username , password ,email ,phone ,description,createddate,updatetime)
VALUES ('Ngan@gmail.com', 'Ngan@gmail.com', 'Ngan@gmail.com', 'Ngan@gmail.com','Ngan@gmail.com','978465132','Nhom7','2021/04/26','2021/05/26');

INSERT INTO Member (firstname , lastname , username , password ,email ,phone ,description,createddate,updatetime)
VALUES ('Tien@gmail.com', 'Tien@gmail.com', 'Tien@gmail.com', 'Tien@gmail.com','Tien@gmail.com','963852741','Nhom7','2021/04/26','2021/05/26');

INSERT INTO Content (title , brief , content, createddate,updatetime , sort ,authorid,publiccontent)
VALUES ('Dung Public', 'Dung Public', 'Dung Public','2021/04/26','2021/05/26', 'Dung Public',1,1);
INSERT INTO Content (title , brief , content, createddate,updatetime , sort ,authorid,publiccontent)
VALUES ('Tuyen Public', 'Tuyen Public', 'Tuyen Public','2021/04/26','2021/05/26', 'Tuyen Public',2,1);

INSERT INTO Content (title , brief , content, createddate,updatetime , sort ,authorid,publiccontent)
VALUES ('Dung Private', 'Dung Private', 'Dung Private','2021/04/26','2021/05/26', 'Dung Private',1,0);
INSERT INTO Content (title , brief , content, createddate,updatetime , sort ,authorid,publiccontent)
VALUES ('Tuyen Private', 'Tuyen Private', 'Tuyen Private','2021/04/26','2021/05/26', 'Tuyen Private',2,0);