CREATE DATABASE anujin

CREATE TABLE employees (
    emp_no      INT             NOT NULL,  
    birth_date  DATE            NOT NULL,
    owog VARCHAR(14)     NOT NULL,
    ner   VARCHAR(16)     NOT NULL,
    huis      ENUM ('M','F')  NOT NULL, 
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no)                                                    
);


CREATE TABLE departments (
    dept_no     CHAR(4)         NOT NULL, 
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no),                
    UNIQUE  KEY (dept_name)               

CREATE TABLE dept_emp (
    emp_no      INT         NOT NULL,
    dept_no     CHAR(4)     NOT NULL,
    from_date   DATE        NOT NULL,
    to_date     DATE        NOT NULL,
    KEY         (emp_no),  
    KEY         (dept_no), 
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager (
   dept_no      CHAR(4)  NOT NULL,
   emp_no       INT      NOT NULL,
   from_date    DATE     NOT NULL,
   to_date      DATE     NOT NULL,
   KEY         (emp_no),
   KEY         (dept_no),
   FOREIGN KEY (emp_no)  REFERENCES employees (emp_no)    ON DELETE CASCADE,
   FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
   PRIMARY KEY (emp_no, dept_no) 
);

CREATE TABLE ajil (
    emp_no      INT          NOT NULL,
    ajil       VARCHAR(50)  NOT NULL,
    from_date   DATE         NOT NULL,
    to_date     DATE,
    KEY         (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no, ajil, from_date)
);

CREATE TABLE tsalin (
    emp_no      INT    NOT NULL,
    tsalin      INT    NOT NULL,
    from_date   DATE   NOT NULL,
    to_date     DATE   NOT NULL,
    KEY         (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no, from_date)
);