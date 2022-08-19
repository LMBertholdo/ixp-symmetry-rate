CREATE TABLE tcc.hitlist_2022_05_05
(ip varchar(40) NOT NULL,  
ipnum varchar(40) DEFAULT NULL,  
ipgeoref varchar(40) DEFAULT NULL,  
ASN varchar(40) DEFAULT NULL,  
amsix varchar(40) DEFAULT NULL,
linx varchar(40) DEFAULT NULL,  
poaixbr varchar(40) DEFAULT NULL,  
spoixbr varchar(40) DEFAULT NULL,  
six varchar(40) DEFAULT NULL,  
nome_arquivo varchar(150) DEFAULT NULL
);

CREATE INDEX idx_hitlist_nome_arquivo ON tcc.hitlist_2022_05_05 (nome_arquivo);
CREATE INDEX idx_ipnum ON tcc.hitlist_2022_05_05 (ipnum);
CREATE INDEX idx_ip ON tcc.hitlist_2022_05_05 (ip);
CREATE INDEX idx_hitlist_amsix ON tcc.hitlist_2022_05_05 (amsix);
CREATE INDEX idx_hitlist_spoixbr ON tcc.hitlist_2022_05_05 (spoixbr);
CREATE INDEX idx_hitlist_poaixbr ON tcc.hitlist_2022_05_05 (poaixbr);
CREATE INDEX idx_hitlist_linx ON tcc.hitlist_2022_05_05 (linx);
CREATE INDEX idx_hitlist_six ON tcc.hitlist_2022_05_05 (six);

CREATE TABLE tcc.assimetria_23_exclusive_2022_05_05
(
task_id decimal(10,0) DEFAULT NULL,  
client_id varchar(300) DEFAULT NULL,  
transmit_time varchar(300) DEFAULT NULL,  
receive_time varchar(300) DEFAULT NULL,  
send_receive_time_diff varchar(300) DEFAULT NULL,  
source_address varchar(300) DEFAULT NULL,  
destination_address varchar(300) DEFAULT NULL,  
meta_source_address varchar(300) DEFAULT NULL,  
meta_destination_address varchar(300) DEFAULT NULL,  
ttl decimal(10,0) DEFAULT NULL,  
source_address_country varchar(100) DEFAULT NULL,  
source_address_asn varchar(300) DEFAULT NULL,  
nome_arquivo varchar(800) DEFAULT NULL,  
origem varchar(100) DEFAULT NULL,  
data_amostra date DEFAULT NULL,  
hora_amostra varchar(100) DEFAULT NULL,  
ip_numerico decimal(10,0) DEFAULT NULL
);

CREATE INDEX idx_assimetria_23_exclusive_source_address ON tcc.assimetria_23_exclusive_2022_05_05 (source_address);
CREATE INDEX idx_assimetria_23_exclusive_source_address_asn ON tcc.assimetria_23_exclusive_2022_05_05 (source_address_asn);
CREATE INDEX idx_assimetria_23_exclusive_ip_numerico ON tcc.assimetria_23_exclusive_2022_05_05 (ip_numerico);
CREATE INDEX idx_assimetria_23_exclusive_origem ON tcc.assimetria_23_exclusive_2022_05_05 (origem);
CREATE INDEX idx_assimetria_23_exclusive_meta_source_address ON tcc.assimetria_23_exclusive_2022_05_05 (meta_source_address);
CREATE INDEX idx_assimetria_23_exclusive_origem_data_amostra ON tcc.assimetria_23_exclusive_2022_05_05 (data_amostra);
CREATE INDEX idx_assimetria_23_exclusive_origem_dt_amostra ON tcc.assimetria_23_exclusive_2022_05_05 (origem,data_amostra);

CREATE TABLE tcc.assimetria_23_2022_05_05
(
task_id decimal(10,0) DEFAULT NULL,  
client_id varchar(300) DEFAULT NULL,  
transmit_time varchar(300) DEFAULT NULL,  
receive_time varchar(300) DEFAULT NULL,  
send_receive_time_diff varchar(300) DEFAULT NULL,  
source_address varchar(300) DEFAULT NULL,  
destination_address varchar(300) DEFAULT NULL,  
meta_source_address varchar(300) DEFAULT NULL,  
meta_destination_address varchar(300) DEFAULT NULL,  
ttl decimal(10,0) DEFAULT NULL,  
source_address_country varchar(100) DEFAULT NULL,  
source_address_asn varchar(300) DEFAULT NULL,  
nome_arquivo varchar(800) DEFAULT NULL,  
origem varchar(100) DEFAULT NULL,  
data_amostra date DEFAULT NULL,  
hora_amostra varchar(100) DEFAULT NULL,  
ip_numerico decimal(10,0) DEFAULT NULL
);

CREATE INDEX idx_assimetria_23_source_address ON tcc.assimetria_23_2022_05_05 (source_address);
CREATE INDEX idx_assimetria_23_source_address_asn ON tcc.assimetria_23_2022_05_05 (source_address_asn);
CREATE INDEX idx_assimetria_23_ip_numerico ON tcc.assimetria_23_2022_05_05 (ip_numerico);
CREATE INDEX idx_assimetria_23_origem ON tcc.assimetria_23_2022_05_05 (origem);
CREATE INDEX idx_assimetria_23_meta_source_address ON tcc.assimetria_23_2022_05_05 (meta_source_address);
CREATE INDEX idx_assimetria_23_origem_data_amostra ON tcc.assimetria_23_2022_05_05 (data_amostra);
CREATE INDEX idx_assimetria_23_origem_dt_amostra ON tcc.assimetria_23_2022_05_05 (origem,data_amostra);

CREATE TABLE tcc.assimetria_24_exclusive_2022_05_05
(
task_id decimal(10,0) DEFAULT NULL,  
client_id varchar(300) DEFAULT NULL,  
transmit_time varchar(300) DEFAULT NULL,  
receive_time varchar(300) DEFAULT NULL,  
send_receive_time_diff varchar(300) DEFAULT NULL,  
source_address varchar(300) DEFAULT NULL,  
destination_address varchar(300) DEFAULT NULL,  
meta_source_address varchar(300) DEFAULT NULL,  
meta_destination_address varchar(300) DEFAULT NULL,  
ttl decimal(10,0) DEFAULT NULL,  
source_address_country varchar(100) DEFAULT NULL,  
source_address_asn varchar(300) DEFAULT NULL,  
nome_arquivo varchar(800) DEFAULT NULL,  
origem varchar(100) DEFAULT NULL,  
data_amostra date DEFAULT NULL,  
hora_amostra varchar(100) DEFAULT NULL,  
ip_numerico decimal(10,0) DEFAULT NULL
);

CREATE INDEX idx_assimetria_24_exclusive_source_address ON tcc.assimetria_24_exclusive_2022_05_05 (source_address);
CREATE INDEX idx_assimetria_24_exclusive_source_address_asn ON tcc.assimetria_24_exclusive_2022_05_05 (source_address_asn);
CREATE INDEX idx_assimetria_24_exclusive_ip_numerico ON tcc.assimetria_24_exclusive_2022_05_05 (ip_numerico);
CREATE INDEX idx_assimetria_24_exclusive_origem ON tcc.assimetria_24_exclusive_2022_05_05 (origem);
CREATE INDEX idx_assimetria_24_exclusive_meta_source_address ON tcc.assimetria_24_exclusive_2022_05_05 (meta_source_address);
CREATE INDEX idx_assimetria_24_exclusive_origem_data_amostra ON tcc.assimetria_24_exclusive_2022_05_05 (data_amostra);
CREATE INDEX idx_assimetria_24_exclusive_origem_dt_amostra ON tcc.assimetria_24_exclusive_2022_05_05 (origem,data_amostra);


CREATE TABLE tcc.assimetria_24_2022_05_05
(
task_id decimal(10,0) DEFAULT NULL,  
client_id varchar(300) DEFAULT NULL,  
transmit_time varchar(300) DEFAULT NULL,  
receive_time varchar(300) DEFAULT NULL,  
send_receive_time_diff varchar(300) DEFAULT NULL,  
source_address varchar(300) DEFAULT NULL,  
destination_address varchar(300) DEFAULT NULL,  
meta_source_address varchar(300) DEFAULT NULL,  
meta_destination_address varchar(300) DEFAULT NULL,  
ttl decimal(10,0) DEFAULT NULL,  
source_address_country varchar(100) DEFAULT NULL,  
source_address_asn varchar(300) DEFAULT NULL,  
nome_arquivo varchar(800) DEFAULT NULL,  
origem varchar(100) DEFAULT NULL,  
data_amostra date DEFAULT NULL,  
hora_amostra varchar(100) DEFAULT NULL,  
ip_numerico decimal(10,0) DEFAULT NULL
);

CREATE INDEX idx_assimetria_24_source_address ON tcc.assimetria_24_2022_05_05 (source_address);
CREATE INDEX idx_assimetria_24_source_address_asn ON tcc.assimetria_24_2022_05_05 (source_address_asn);
CREATE INDEX idx_assimetria_24_ip_numerico ON tcc.assimetria_24_2022_05_05 (ip_numerico);
CREATE INDEX idx_assimetria_24_origem ON tcc.assimetria_24_2022_05_05 (origem);
CREATE INDEX idx_assimetria_24_meta_source_address ON tcc.assimetria_24_2022_05_05 (meta_source_address);
CREATE INDEX idx_assimetria_24_origem_data_amostra ON tcc.assimetria_24_2022_05_05 (data_amostra);
CREATE INDEX idx_assimetria_24_origem_dt_amostra ON tcc.assimetria_24_2022_05_05 (origem,data_amostra);






