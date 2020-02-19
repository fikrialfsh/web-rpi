<?php
include "config/koneksi.php";

if(isset($_GET['token'])) {
	$id = buka(htmlspecialchars(e($_GET['token'])));
	$query = execSelectQuery("select * from tp_arsip_surat_masuk where id_arsip_surat_masuk = $id limit 0, 1");
	$data = array_shift($query);
	?>

	<div class="container-fluid">
		<h2>Detail Arsip Surat Masuk<hr></h2>

		<ul class="breadcrumb">
			<li><a href="?page=home">Home</a></li>
			<li><a href="?page=daftar_surat_masuk">Arsip Surat Masuk</a></li>
			<li>Tambah Arsip</li>
		</ul>

		<p>&nbsp;</p>
		<h4>Silahkan isi form berikut untuk menambah arsip surat masuk</h4>
		<p>&nbsp;</p>

		<div class="form-horizontal" role="form" >

			<div class="form-group">
				<label class="col-sm-2" for="nomor_urut">Nomor Urut</label>
				<div class="col-sm-2">
					<input type="text" class="form-control" required="true" id="nomor_urut" placeholder="Nomor Urut" disabled="" value="<?= $data['nomor_urut']?>">
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2" for="nomor_berkas">Nomor Berkas</label>
				<div class="col-sm-5">          
					<input type="text" class="form-control" required="true" name="nomor_berkas" id="nomor_berkas" placeholder="Nomor Berkas"  value="<?= $data['nomor_berkas']?>" disabled>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2" for="pengirim">Pengirim</label>
				<div class="col-sm-5">          
					<input type="text" class="form-control" required="true" name="pengirim" id="pengirim" placeholder="Pengirim"  value="<?= $data['pengirim']?>" disabled>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2" for="tanggal_masuk">Tanggal Masuk</label>
				<div class="col-sm-3">          
					<input type="text" class="form-control datepicker" name="tanggal_masuk" id="tanggal_masuk" placeholder="dd/mm/yyyy"  value="<?= date('d M Y', strtotime($data['tanggal_masuk'])) ?>" disabled>
				</div>
				<span class="glyphicon glyphicon-calendar kalender"></span>
			</div>
			<div class="form-group">
				<label class="col-sm-2" for="no_suratmasuk">No. Surat Masuk</label>
				<div class="col-sm-5">          
					<input type="text" class="form-control" required="true" name="no_suratmasuk" id="no_suratmasuk" placeholder="Nomor Surat Masuk" value="<?= $data['nomor_surat_masuk']?>" disabled>
				</div>
			</div>
			<div class="form-group ">
				<label class="col-sm-2" for="jenis_surat">Jenis Surat</label>
				<div class="col-sm-3">          
					<select class="form-control" required="true" name="jenis_surat" id="jenis_surat" disabled="">
						<option value="">-Pilih-</option>
						<?php foreach (execSelectQuery("select * from tr_jenis_surat_masuk order by id_jenis_surat_masuk asc") as $i => $row) { ?>
						<option <?=  setSelectedItem($row['id_jenis_surat_masuk'], $data['id_jenis_surat_masuk']) ?> class="jenis_surat" value="<?= $row['id_jenis_surat_masuk']?>"><?= $row['jenis']?></option>
						<?php } ?>
						<option class="lain_jenis_surat">Lainnya</option>
					</select>
				</div>
				<!-- (* Jika anda ingin menambahkan jenis surat maka anda bisa memilih option Lainnya. -->
			</div>
			<div class="form-group">
				<label class="col-sm-2" for="perihal">Perihal Surat</label>
				<div class="col-sm-6">          
					<input type="text" class="form-control" required="true" name="perihal" id="perihal" placeholder="Perihal Surat" value="<?= $data['perihal']?>" disabled>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2" for="disposisi">Disposisi</label>
				<div class="col-sm-3">          
					<select class="form-control" required="true" name="disposisi" id="disposisi" disabled="">
						<option value="">-Pilih-</option>
						<option value="1" <?= setSelectedItem("1", $data['disposisi'])?> >Ya</option>
						<option value="0" <?= setSelectedItem("0", $data['disposisi'])?> >Tidak</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2" for="fileToUpload">Berkas digital</label>
				<div class="col-sm-6">
					<?php
						if(!file_exists($data['path_berkas'])) {
							echo "Berkas tidak ditemukan.";
						} else {
							echo "<a href=\"".$data['path_berkas']."\" target='_blank'>Download berkas</a>";		
						}
					?>					
				</div>
			</div>          
			<div class="form-group">        
				<div class="col-sm-10">
					<a href="?page=daftar_surat_masuk" class="btn btn-primary">Kembali</a>
				</div>
			</div>
		</div>
	</div>
	<p>&nbsp;</p>
	<?php 
}
?>