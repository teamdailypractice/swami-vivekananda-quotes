Create table quote(day integer, Quote varchar(500), Month varchar(25));

insert into quote(day, quote, Month) select DAY, quote, Month from (

SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_01.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_02.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_03.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_04.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_05.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_06.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_07.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_08.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_09.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_10.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_11.csv') where Quote is not null
Union
SELECT * FROM CSVREAD('D:\git\swami-vivekananda-quotes\Vivekananda_12.csv') where Quote is not null
)

1. Export the quote table as CSV
2. Use online https://www.convertcsv.com/csv-to-json.htm to conver into json and save it as quote_export.json