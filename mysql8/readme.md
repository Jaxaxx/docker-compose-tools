## remote manage


USE mysql;
GRANT ALL ON * TO 'root'@'%';
FLUSH PRIVILEGES;

select host, user from user;