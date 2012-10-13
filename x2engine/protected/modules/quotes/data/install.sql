DROP TABLE IF EXISTS x2_quotes,x2_quotes_products;

CREATE TABLE x2_quotes(
	id						INT				UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name					VARCHAR(40)		NOT NULL,
	accountName				VARCHAR(250),
	salesStage				VARCHAR(20),
	expectedCloseDate		BIGINT,
	probability				INT,
	leadSource				VARCHAR(10),
	description				TEXT,
	assignedTo				TEXT,
	createDate				BIGINT,
	createdBy				VARCHAR(20),
	associatedContacts		TEXT,
	lastUpdated				BIGINT,
	updatedBy				VARCHAR(20),
	expirationDate			BIGINT,
	status					VARCHAR(20),
	currency				VARCHAR(40),
	locked					TINYINT
) COLLATE = utf8_general_ci;

CREATE TABLE x2_quotes_products( 
	id						INT				NOT NULL AUTO_INCREMENT PRIMARY KEY,
	quoteId					INT,
	productId				INT,
	quantity				INT,
	name					VARCHAR(100)	NOT NULL,
	type					VARCHAR(100),
	price					FLOAT,
	inventory				INT,
	description				TEXT,
	assignedTo				TEXT,
	createDate				BIGINT,
	lastUpdated				BIGINT,
	updatedBy				VARCHAR(20),
	active					TINYINT,
	currency				VARCHAR(40),
	adjustment				FLOAT,
	adjustmentType			VARCHAR(20)
) COLLATE = utf8_general_ci;
INSERT INTO `x2_modules` 
			(`name`,			title,			visible, 	menuPosition,	searchable,	editable,	adminOnly,	custom,	toggleable) 
	VALUES	("quotes",			"Quotes",			1,			12,				1,			1,			0,			0,		0);

INSERT INTO x2_fields
(modelName,		fieldName,				attributeLabel,	 modified,	custom,	type,		required,	readOnly,  linkType,   searchable,	isVirtual,	relevance)
VALUES
("Quote",			"id",					"ID",					0,		0,	"varchar",		0,			0,		NULL,			0,		0,			""),
("Quote",			"name",					"Name",					0,		0,	"varchar",		0,			0,		NULL,			1,		0,			"High"),
("Quote",			"accountName",			"Account",				0,		0,	"link",			0,			0,		"Accounts",	 	0,		0,			""),
("Quote",			"salesStage",			"Opportunity Stage",	0,		0,	"varchar",		0,			0,		NULL,			0,		0,			""),
("Quote",			"expectedCloseDate",	"Expected Close Date",	0,		0,	"date",			0,			0,		NULL,			0,		0,			""),
("Quote",			"probability",			"Probability",			0,		0,	"varchar",		0,			0,		NULL,			0,		0,			""),
("Quote",			"leadSource",			"Lead Source",			0,		0,	"varchar",		0,			0,		NULL,			0,		0,			""),
("Quote",			"description",			"Notes",				0,		0,	"text",			0,			0,		NULL,			0,		0,			""),
("Quote",			"assignedTo",			"Assigned To",			0,		0,	"assignment",	0,			0,		"",			 	0,		0,			""),
("Quote",			"createDate",			"Create Date",			0,		0,	"date",			0,			1,		NULL,			0,		0,			""),
("Quote",			"associatedContacts",	"Contacts",				0,		0,	"link",			0,			0,		"Contacts",		0,		0,			""),
("Quote",			"lastUpdated",			"Last Updated",			0,		0,	"date",			0,			1,		NULL,			0,		0,			""),
("Quote",			"updatedBy",			"Updated By",			0,		0,	"varchar",		0,			1,		NULL,			0,		0,			""),
("Quote",			"status",				"Status",				0,		0,	"dropdown",		0,			0,		"7",			0,		0,			""),
("Quote",			"expirationDate",		"Expiration Date",		0,		0,	"date",			0,			0,		NULL,			0,		0,			""),
("Quote",			"existingProducts",		"Existing Products",	0,		0,	"varchar",		0,			0,		NULL,			0,		1,			""),
("Quote",			"products",				"Products",				0,		0,	"varchar",		0,			0,		NULL,			0,		1,			""),
("Quote",			"locked",				"Locked",				0,		0,	"boolean",		0,			0,		NULL,			0,		0,			"");