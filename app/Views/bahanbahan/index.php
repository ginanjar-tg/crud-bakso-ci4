<?= $this->extend('layouts/admin') ?>

<?php $this->section('styles') ?>
<!-- Custom styles for this page -->
<link href="<?= base_url('assets/vendor/datatables/dataTables.bootstrap4.min.css') ?> " rel="stylesheet">
<?= $this->endSection() ?>

<?= $this->section('content') ?>
<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Bahan Bahan</h1>
    <?php
    if (session()->getFlashData('success')) {
    ?>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <?= session()->getFlashData('success') ?>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    <?php
    }
    ?>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addModal">
                Add Bahan
            </button>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>nama</th>
                            <th>jumlah</th>
                            <th>harga</th>
                            <th>penyuplai</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($bahanbahan as $key => $bahan) : ?>
                            <tr>
                                <td><?= ++$key ?></td>
                                <td><?= $bahan['nama'] ?></td>
                                <td><?= $bahan['jumlah'] ?></td>
                                <td><?= $bahan['harga'] ?></td>
                                <td><?= $bahan['penyuplai'] ?></td>
                                <td>
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editModal-<?= $bahan['id'] ?>">
                                        Edit
                                    </button>
                                    <a href="<?= base_url('bahan/delete/' . $bahan['id']) ?>" class="btn btn-danger" onclick="return confirm('Are you sure ?')">Delete</a>
                                </td>
                            </tr>
                            <!-- Edit Bahan Modal -->
                            <div class="modal fade" id="editModal-<?= $bahan['id'] ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Edit Bahan</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <form action="<?= base_url('bahan/edit/' . $bahan['id']) ?>" method="post">
                                            <?= csrf_field(); ?>
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label for="nama">nama</label>
                                                    <input type="text" name="nama" class="form-control" id="nama" value="<?= $bahan['nama'] ?>" placeholder="Nama Bahan" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="jumlah">jumlah</label>
                                                    <input type="jumlah" name="jumlah" class="form-control" id="jumlah" value="<?= $bahan['jumlah'] ?>" placeholder="Jumlah Bahan" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="harga">harga</label>
                                                    <input type="text" name="harga" class="form-control" id="harga" value="<?= $bahan['harga'] ?>" placeholder="Harga Bahan" required>
                                                </div>
                                                <div class="form-group">
                                                    <label for="penyuplai">penyuplai</label>
                                                    <input type="text" name="penyuplai" class="form-control" id="penyuplai" value="<?= $bahan['penyuplai'] ?>" placeholder="Penyuplai Bahan" required>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary">Save</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- Add Bahan Modal -->
<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Bahan</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="<?= base_url('bahan') ?>" method="post">
                <?= csrf_field(); ?>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="nama">nama</label>
                        <input type="text" name="nama" class="form-control" id="name" placeholder="Nama Bahan" required>
                    </div>
                    <div class="form-group">
                        <label for="jumlah">jumlah</label>
                        <input type="jumlah" name="jumlah" class="form-control" id="jumlah" placeholder="Jumlah Bahan" required>
                    </div>
                    <div class="form-group">
                        <label for="harga">harga</label>
                        <input type="text" name="harga" class="form-control" id="harga" placeholder="Harga Bahan" required>
                    </div>
                    <div class="form-group">
                        <label for="penyuplai">penyuplai</label>
                        <input type="text" name="penyuplai" class="form-control" id="penyuplai" placeholder="Penyuplai Bahan" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>
<?= $this->endSection() ?>
<?php $this->section('scripts') ?>
<!-- Page level plugins -->
<script src="<?= base_url('assets/vendor/datatables/jquery.dataTables.min.js') ?>"></script>
<script src="<?= base_url('assets/vendor/datatables/dataTables.bootstrap4.min.js') ?>"></script>
<!-- Page level custom scripts -->
<script>
    // Call the dataTables jQuery plugin
    $(document).ready(function() {
        $('#dataTable').DataTable();
    });
</script>
<?php $this->endSection() ?>