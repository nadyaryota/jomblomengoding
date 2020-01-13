<script src="<?php echo base_url(); ?>assets/sbadmin2/js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="<?php echo base_url(); ?>assets/sbadmin2/js/plugins/dataTables/dataTables.bootstrap.js"></script>
	<div class="col-lg-12">
		<h1 class="page-header">Tim</h1>
	</div>
	<!-- /.col-lg-12 -->
	<div class="row" style="margin-bottom:10px; margin-left:0px">
		<a href = "<?php echo site_url(); ?>/add_data/tambah" type="button" class="btn btn-primary">Tambah</a>
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					STIKI Basketball League
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover" id="dt_team">
							<thead>
								<tr>
									<th>No</th>
									<th>Tim</th>
									<th>Player</th>
								</tr>
							</thead>
							<tbody>
								<?php								
								foreach($tim as $i=>$t){
									
									echo '<tr>
										<td>'.$t['id_tim'].'</td>
										<td>'.$t['nama_tim'].'</td>
										<td><button type="button" class="btn btn-primary lihat-pemain" data-tim="'.$t['id_tim'].'" >Lihat</button></td>
									</tr>';
								}
								?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade bd-example-modal-lg" id="modalpemain" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Lihat Pemain</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					  <span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
<script>
	$(document).ready(function(){
		$('table#dt_team').DataTable();
	})
	$('body').on('click','.lihat-pemain',function(){
		
		var id_tim = $(this).attr('data-tim');
		$.post('<?php echo site_url()?>/add_data/get_lihatpemain',{id:id_tim},function(respon){
			$('#modalpemain').find('.modal-body').html(respon);
			$('#modalpemain').modal('show');
			$('table#dt_pemain').DataTable();
		})
	})
	
		
		
</script>