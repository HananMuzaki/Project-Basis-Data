create table barang (
	kode int,
	name varchar(100),
	harga int,
	jumlah int
);

--Menambahkan column
alter table barang
add column keterangan text;

--menghapus column
alter table barang 
drop column keterangan;

--Merename column
alter table barang 
rename column name to nama;

--Menggunakan not null dan defult
create table barang(
	kode int not null,
	nama varchar(100) not null,
	harga int not null default 1000,
	jumlah int not null default 0,
	waktu_dibuat timestamp not null default current_timestamp
);

--Membuat ulang table (truncate tabel nama_tabel)

truncate barang;

--menghapus table(drop table nama_table)
drop table barang;

--membuat table products
create table products(
	id	varchar(10) not null,
	nama	varchar(100) not null,
	keterangan	text,
	harga	int	not null,
	jumlah	int	not null default 0,
	created_at	timestamp not null default current_timestamp

);

-- input data ke dalam table(insert into nama_table values(sesuaikan dengan nama kolom)
insert into products(id,nama, harga, jumlah)
values('P0001', 'Ayam Geprek Sambal Matah', 20000,100);

--input data yang 2
insert into products(id,nama, keterangan, harga, jumlah)
values('P0002', 'Ayam Geprek original','Ayam Geprek + sambal ijo', 25000,100);

--input product sekaligus
insert into products(id, nama, harga, jumlah)
values ('P0003', 'Ayam Bakar Bumbu seafood', 35000,100),
		('P0004', 'Ayam Goreng Upin-Ipin', 30000,100),
		('P0005', 'Ayam Bakar Bumbu seadanya', 35000,100);


--mengambil data product
	select * from products;

--mengambil data products randum
select id, nama, harga from products;


select * from products;

select id, harga from products;

