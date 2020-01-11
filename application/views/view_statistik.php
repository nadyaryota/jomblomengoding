<script src="<?php echo base_url(); ?>assets/sbadmin2/js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="<?php echo base_url(); ?>assets/sbadmin2/js/plugins/dataTables/dataTables.bootstrap.js"></script>
	<div class="col-lg-12">
		<h1 class="page-header">Tambah Data</h1>
	</div>
	<!-- /.col-lg-12 -->
	<div class="col-lg-6">
		<div class="form-group">
			<label>Tanggal Match</label>
			<input class="form-control" name="tanggal">
			<label>Tim</label>
			<div class="row">
				<div class="col-lg-5">
					<select class="form-control" name="tim_1">
						<option value>-- Pilih Tim 1--</option>
						<?php foreach($list_tim as $tim){
							echo '<option value="'.$tim['id_tim'].'">'.$tim['nama_tim'].'</option>';
						}?>
					</select>
				</div>
				<div class="col-lg-2 center">VS</div>
				<div class="col-lg-5">
					<select class="form-control" name="tim_2">
						<option value>-- Pilih Tim 2--</option>
						<?php foreach($list_tim as $tim){
							echo '<option value="'.$tim['id_tim'].'">'.$tim['nama_tim'].'</option>';
						}?>
					</select>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					Player Tim 1
			    </div>
                        <!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover" id="tb_pemain1">
							<thead>
								<tr>
									<th>Nama</th>
									<th>No. Punggung</th>
									<th>Point</th>
									<th>Assist</th>
									<th>Off Rebound</th>
									<th>Def Rebound</th>
									<th>Block</th>
									<th>Steal</th>
									
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input class="form-control" name="nama_pemain"></td>
									<td><input class="form-control" name="no_punggung"></td>
									<td><input class="form-control" name="point"></td>
									<td><input class="form-control" name="assist"></td>
									<td><input class="form-control" name="off_rebound"></td>
									<td><input class="form-control" name="def_rebound"></td>
									<td><input class="form-control" name="block"></td>
									<td><input class="form-control" name="steal"></td>
								</tr>
							</tbody>
						</table>
						
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					Player Tim 2
			    </div>
                        <!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover" id="tb_pemain2">
							<thead>
								<tr>
									<th>Nama</th>
									<th>No. Punggung</th>
									<th>Point</th>
									<th>Assist</th>
									<th>Off Rebound</th>
									<th>Def Rebound</th>
									<th>Block</th>
									<th>Steal</th>
									
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input class="form-control" name="nama_pemain"></td>
									<td><input class="form-control" name="no_punggung"></td>
									<td><input class="form-control" name="point"></td>
									<td><input class="form-control" name="assist"></td>
									<td><input class="form-control" name="off_rebound"></td>
									<td><input class="form-control" name="def_rebound"></td>
									<td><input class="form-control" name="block"></td>
									<td><input class="form-control" name="steal"></td>
								</tr>
							</tbody>
						</table>
						
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
	function tambah_pemain(tim){
		$('table#tb_pemain'+tim).find('tbody').append(`
			<tr>
				<td>
					<input type="hidden" class="form-control" name="pemain">
					<input class="form-control" name="nama_pemain">
				</td>
				<td><input class="form-control" name="no_punggung"></td>
				<td><input class="form-control" name="point"></td>
				<td><input class="form-control" name="assist"></td>
				<td><input class="form-control" name="off_rebound"></td>
				<td><input class="form-control" name="def_rebound"></td>
				<td><input class="form-control" name="block"></td>
				<td><input class="form-control" name="steal"></td>
			</tr>`);
	}
	$('select[name="tim_1"]').change(function(){
		$.post('<?php echo site_url()?>/add_data/get_pemaintim',{id:$(this).val()},function(respon){
			$('table#tb_pemain1').find('tbody tr').remove();
			$.each(respon,function(i,v){
				tambah_pemain(1);
				$('table#tb_pemain1').find('tbody tr:last').find('input[name="pemain"]').val(v.id_pemain);
				$('table#tb_pemain1').find('tbody tr:last').find('input[name="nama_pemain"]').val(v.nama_pemain);
				$('table#tb_pemain1').find('tbody tr:last').find('input[name="no_punggung"]').val(v.no_punggung);
			})
		},'json')
	})
	
	$('select[name="tim_2"]').change(function(){
		$.post('<?php echo site_url()?>/add_data/get_pemaintim',{id:$(this).val()},function(respon){
			$('table#tb_pemain2').find('tbody tr').remove();
			$.each(respon,function(i,v){
				tambah_pemain(2);
				$('table#tb_pemain2').find('tbody tr:last').find('input[name="pemain"]').val(v.id_pemain);
				$('table#tb_pemain2').find('tbody tr:last').find('input[name="nama_pemain"]').val(v.nama_pemain);
				$('table#tb_pemain2').find('tbody tr:last').find('input[name="no_punggung"]').val(v.no_punggung);
			})
		},'json')
	})
	$("#simpan").click(function(){
		var data = {
			'tanggal' : $('input[name="tanggal"]').val(),
			'tim1' : $('select[name="tim_1"]').val(),
			'tim2' : $('select[name="tim_2"]').val(),
			'statistik_tim1' : [],
			'statistik_tim2' : [],
		}
		$('table#tb_pemain1').find('tbody tr').each(function(){
			data.statistik_tim1.push({
				'pemain' : $(this).find('input[name="pemain"]').val(),
				'point' : $(this).find('input[name="point"]').val(),
				'assist' : $(this).find('input[name="assist"]').val(),
				'off_rebound' : $(this).find('input[name="off_rebound"]').val(),
				'def_rebound' : $(this).find('input[name="def_rebound"]').val(),
				'block' : $(this).find('input[name="block"]').val(),
				'steal' : $(this).find('input[name="steal"]').val(),
			})
		});
		
		$('table#tb_pemain2').find('tbody tr').each(function(){
			data.statistik_tim2.push({
				'pemain' : $(this).find('input[name="pemain"]').val(),
				'point' : $(this).find('input[name="point"]').val(),
				'assist' : $(this).find('input[name="assist"]').val(),
				'off_rebound' : $(this).find('input[name="off_rebound"]').val(),
				'def_rebound' : $(this).find('input[name="def_rebound"]').val(),
				'block' : $(this).find('input[name="block"]').val(),
				'steal' : $(this).find('input[name="steal"]').val(),
			})
		});
		console.log(data);
		
		$.post('<?php echo site_url()?>/add_data/saveStatistic',data,function(respon){
			
		})
		$.post('<?php echo site_url()?>/add_data/saveStatistic',data,function(respon){
			if(respon>0) window.location = '<?php echo site_url()?>/add_data/statistik';
		})
	})
</script>