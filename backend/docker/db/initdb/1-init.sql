ALTER DATABASE sidedish DEFAULT CHARACTER SET utf8;

CREATE TABLE sidedish.dish (
    detail_hash VARCHAR(10) PRIMARY KEY,
    image VARCHAR(100) NOT NULL,
    alt VARCHAR(50) NOT NULL,
    delivery_type VARCHAR(50) NOT NULL,
    title VARCHAR(50) NOT NULL,
    description VARCHAR(50) NOT NULL,
    n_price INT NOT NULL,
    s_price INT NOT NULL,
    badge VARCHAR(50) NOT NULL,
    created_date datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT="Any dish";
