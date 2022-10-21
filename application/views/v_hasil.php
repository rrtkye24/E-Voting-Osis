<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Hasil Pemungutan Suara</h1>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-body">
    <a href="<?=base_url('hasil/export');?>" class="btn btn-success btn-icon-split btn-sm">
            <span class="text">Export Excel Data Pemilih</span>
        </a>
        <div class="row">
            <?php foreach($daftar_calon as $key => $dc): ?>
            <div class="col-md-5 mb-2">
                <div class="card" style="width: 18rem;">
                    <img src="<?=base_url('uploads/image/');?><?=$dc['gambar'];?>" class="card-img-top" alt="Foto Calon"
                        width="100%" height="150">
                    <div class="card-body">
                        <h5 class="md-2 card-title text-center border-left-info">
                            <?=$dc['calon_presma'].' & '.$dc['calon_wakil_presma'];?>
                        </h5>
                        <p class="card-text"><?=$dc['visi_misi'];?></p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Total Suara <span
                                class="badge badge-primary float-right"><?= $dc['total']; ?>
                                Suara</span>
                        </li>
                    </ul>
                    <div class="card-footer">
                        <?php if($this->session->userdata('level')=='administrator' || $this->session->userdata('level')=='operator'): ?>
                        <a href="<?=base_url('hasil/suara/');?><?=$dc['id_calon'];?>"
                            class="badge badge-secondary float-left"><i class="fas fa-bullhorn"></i> Lihat
                            Suara</a>
                     
                        <?php endif; ?>
                    </div>
                </div>
            </div>
            <?php endforeach; ?>
    </div>
</div>