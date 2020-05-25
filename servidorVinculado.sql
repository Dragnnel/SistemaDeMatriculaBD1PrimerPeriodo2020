EXEC sp_tables_ex 'MYSQL';

SELECT * 
	FROM OpenQuery (MYSQL,'SELECT idUnah,descripcion FROM unah');


INSERT INTO OpenQuery (MYSQL,'SELECT idUnah,descripcion FROM unah')
					VALUES (1,'Datos 2')