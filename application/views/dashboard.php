<?php date_default_timezone_set('Asia/Jakarta'); ?>
<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
    <?php if($config['status']=='nonaktif' && $this->session->userdata('level')=='administrator'): ?>
    <a href="<?=base_url('pemilihan/aktifkan');?>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-stopwatch fa-sm text-white-50"></i> Aktifkan Pemilihan</a>
    <?php elseif ($config['status']=='aktif' && $this->session->userdata('level')=='administrator'): ?>

    Pemilihan sedang berlangsung
    <a href="<?=base_url('pemilihan/nonaktif');?>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-stopwatch fa-sm text-white-50"></i> Ulang & NonAktifkan Pemilihan</a>
    </button>
    <?php endif; ?>

</div>
<?php if($this->session->flashdata('berhasil')): ?>
<div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>Berhasil</strong> <?= $this->session->flashdata('berhasil'); ?>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<?php endif; ?>
<?php if($this->session->userdata('level')=='administrator' || $this->session->userdata('level')=='operator'): ?>
<!-- Content Row -->
<div class="row">

    <!-- Total Pasangan Calon -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                            Total Calon</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $dashboard['total_calon']; ?></div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-user fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Total Pemilih -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-info shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                            Total Pemilih</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $dashboard['total_pemilih']; ?></div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-users fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Total Sudah Memilih -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-info shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                            Total Sudah Memilih</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $dashboard['sudah_pilih']; ?></div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Total Belum Memilih -->
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card border-left-warning shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                            Total Belum Memilih</div>
                        <div class="mb-0 ">
                            <a href="/welcome/#exampleModal" class=" h5 font-weight-bold text-gray-800 cursor-pointer"
                                data-toggle="modal" data-target="#exampleModal">
                                <?= $dashboard['belum_pilih']; ?>
                            </a>
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                                aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Daftar Belum Memilih</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">

                                            <table class="table table-light">
                                                <thead>
                                                    <tr>
                                                        <!-- <th colspan="2"> -->
                                                            <!-- <form action="<?=base_url('welcome/pilih');?>"
                                                                method="post">

                                                                <div class="input-group">
                                                                    <select class="custom-select text-uppercase"
                                                                        id="inputGroupSelect02" name="fakultas">
                                                                        <option selected>Pilih <Kelas></Kelas>
                                                                        </option>
                                                                        <?php foreach($fakultas as $f): ?>
                                                                        <option value="<?= $f['nama_fakultas']; ?>">
                                                                            <?= $f['nama_fakultas']; ?>
                                                                        </option>
                                                                        <?php endforeach; ?>
                                                                    </select>
                                                                    <div class="input-group-append">
                                                                        <a href="<?=base_url('welcome/pilih/#exampleModal');?>"
                                                                            class="btn btn-info">Info</a>
                                                                    </div>
                                                                </div>
                                                            </form> -->
                                                            
                                                        <!-- </th>  -->
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                    foreach($belom_milih as $u) :
                                                    ?>
                                                    <tr>
                                                        <td>
                                                            <?php echo ucwords($u['nama']); ?>
                                                        </td>
                                                        <td>
                                                            <?php echo $u['email']; ?>
                                                        </td>
                                                    </tr>
                                                    <?php
                                                    endforeach
                                                     ?>
                                                </tbody>
                                            </table>

                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-dismiss="modal">Tutup</button>

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php endif; ?>

<!-- Content Row -->
<div class="row">


    <div class="col-lg-12 mb-4">

        <!-- Informasi -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary float-left">Panduan Memilih Pasangan Calon</h6>
                <h6 class="m-0 font-weight-bold text-primary float-right">Batas Waktu :
                    <?= date('d-m-Y H:i:s',$config['akhir_pemilihan']); ?></h6>
            </div>
            <div class="card-body">
                <p>Berikut ini langkah-langkah yang harus anda lalui untuk memilih pasangan calon Ketua dan Wakil OSIS :</p>
                <ol>
                    <li>Anda telah melewati langkah pertama yaitu login pada sistem</li>
                    <li>Langkah selanjut klik menu <b>Pemilihan</b></li>
                    <li>Setelah itu klik tombol <b>Pilih</b> yang ada di pasangan calon Ketua dan Wakil OSIS anda</li>
                    <li>Langka terakhir silahkan klik <b>Ok</b></li>
                    <li>Selamat anda telah memilih pasangan Ketua dan Wakil Ketua OSIS</li>
                    <li><b>Pemilihan setiap Akun hanya bisa dilakukan sekali </b></li>
                    <li><b>Setalah selesai bisa logout </b></li>
                </ol>
            </div>
        </div>

    </div>
</div>