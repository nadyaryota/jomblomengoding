<script src="<?php echo base_url(); ?>assets/sbadmin2/js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="<?php echo base_url(); ?>assets/sbadmin2/js/plugins/dataTables/dataTables.bootstrap.js"></script>
	<div class="col-lg-12">
		<h1 class="page-header">Tambah Data</h1>
	</div>
	<!-- /.col-lg-12 -->
	<div class="col-lg-6">
		<div class="form-group">
			<label>Nama Tim</label>
			<input class="form-control" name="nama_tim">
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					Player
			    </div>
                        <!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover" id="tb_pemain">
							<thead>
								<tr>
									<th>Nama</th>
									<th>No. Punggung</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input class="form-control" name="nama_pemain"></td>
									<td><input class="form-control" name="no_punggung"></td>
								</tr>
							</tbody>
						</table>
						<div class="row" style="margin-top:10px; margin-left:0px">              
							<button type="button" class="btn btn-primary" id="tambah-row">Tambah</button>
						</div>
					</div>
				</div>
			</div>
			<button type="button" class="btn btn-success" id="simpan">Save</button>
		</div>
	</div>
<script>
	$(document).ready(function(){
		$('table#dt_team').DataTable();
	})
	$('#tambah-row').click(function(){
		$('table#tb_pemain').find('tbody').append('<tr><td><input class="form-control" name="nama_pemain"></td><td><input class="form-control" name="no_punggung"></td></tr>');
	})
	$('#simpan').click(function(){
		var data = {
			'nama_tim' : $('input[name="nama_tim"]').val(),
			'pemain' : []
		};
		
		$('table#tb_pemain').find('tbody tr').each(function(){
			data.pemain.push(
				{
					'nama_pemain':$(this).find('input[name="nama_pemain"]').val(),
					'no_punggung':$(this).find('input[name="no_punggung"]').val()
				}
			)
		})
		console.log(data);
		$.post('<?php echo site_url()?>/add_data/simpan',data,function(respon){
			if(respon>0) window.location = '<?php echo site_url()?>/add_data';
		})
	})
</script>