DELIMITER $$

CREATE PROCEDURE pro_naikan_gaji 
     (IN unit_id INT , IN persen DOUBLE)
BEGIN
  UPDATE pegawai SET gaji=gaji * (1.0 + persen)
     WHERE unit_kerja_id=unit_id;
END

DELIMITER $$

CREATE FUNCTION umur (tanggal date)
RETURNS INTEGER
BEGIN
  DECLARE usia INT;
  SET usia = year(current_date) - year(tanggal);
RETURN usia;
END

DELIMITER $$

CREATE FUNCTION hasil_ujian (nilai double)
RETURNS VARCHAR(20)
BEGIN
  DECLARE hasil VARCHAR(20);
  IF nilai > 55 then
      SET hasil='LULUS';
  ELSE 
      SET hasil='TIDAK LULUS';
  END IF;
RETURN hasil;
END

CREATE FUNCTION thr 
(N int, gaji double, jml_anak int)
RETURNS double
BEGIN
 DECLARE nilai_thr double;
 IF jml_anak > 0 then 
    SET nilai_thr = N * gaji + (N * 0.5 * jml_anak * gaji);
 ELSE 
    SET nilai_thr = N * gaji;
 END IF;
RETURN nilai_thr;
END

