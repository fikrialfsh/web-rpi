<div class="container-fluid">
  <h2>Tambah Arsip Surat Keluar<hr></h2>

  <ul class="breadcrumb">
    <li><a href="?page=home">Home</a></li>
    <li><a href="?page=daftar_surat_keluar">Arsip Surat Keluar</a></li>
    <li>Tambah Surat Keluar</li>
  </ul>

  <p>&nbsp;</p>
  <h4>Silahkan isi form berikut untuk menambah arsip surat Keluar</h4>
  <p>&nbsp;</p>

  <form class="form-horizontal" role="form" action="index.php?page=simpan_surat_keluar&ref=tambah" method="post" enctype="multipart/form-data">
    <div class="form-group">
      <label class="col-sm-2" for="nomor_urut">Nomor Urut</label>
      <div class="col-sm-5">
        <input type="text" class="form-control" required="true" name="nomor_urut" id="nomor_urut" placeholder="Nomor Urut">
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2" for="nomor_berkas">Nomor Berkas</label>
      <div class="col-sm-5">          
        <input type="text" class="form-control" required="true" name="nomor_berkas" id="nomor_berkas" placeholder="Nomor Berkas">
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2" for="penerima">Penerima</label>
      <div class="col-sm-5">          
        <input type="text" class="form-control" required="true" name="penerima" id="penerima" placeholder="Penerima">
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2" for="tanggal_keluar">Tanggal Keluar</label>
      <div class="col-sm-3">          
        <input type="text" class="form-control datepicker" required="true" name="tanggal_keluar" id="tanggal_keluar" placeholder="dd/mm/yyyy">
      </div>
      <span class="glyphicon glyphicon-calendar kalender"></span>
    </div>
    <div class="form-group">
      <label class="col-sm-2" for="no_surat_keluar">No. Surat Keluar</label>
      <div class="col-sm-5">          
        <input type="text" class="form-control" required="true" name="no_surat_keluar" id="no_surat_keluar" placeholder="Nomor Surat Keluar">
      </div>
    </div>

    <div class="form-group">
      <label class="col-sm-2" for="perihal">Perihal Surat</label>
      <div class="col-sm-6">          
        <input type="text" class="form-control" required="true" name="perihal" id="perihal" placeholder="Perihal">
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2" for="fileToUpload">Upload Berkas</label>
      <div class="col-sm-2">
        <input type="file" name="fileToUpload" id="fileToUpload">
      </div>
    </div>    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success" name="btnSimpan" value="simpan_surat_keluar">Simpan</button>
        <a href="?page=daftar_surat_keluar" type="submit" class="btn btn-danger">Batal</a>
      </div>
    </div>
  </form>
</div>
<?php
  $_SESSION['tambah_surat_keluar'] = '
  function createNewJenisSurat() {
    $("#newJenisSuratSpace").show();
    $("#NewJenisSurat").show();
  }
';
?>