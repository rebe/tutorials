# Copyright 2018 Wirepas Ltd. All Rights Reserved.
#
# See file LICENSE.txt for full license details.


CREATE SCHEMA IF NOT EXISTS `mytable` DEFAULT CHARACTER SET latin1 ;

GRANT ALL PRIVILEGES ON *.* To 'myuser'@'%';

SET GLOBAL max_connections = 200;
SET GLOBAL wait_timeout = 60;
SET GLOBAL thread_cache_size = 32;



