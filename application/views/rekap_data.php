<script src="<?php echo base_url(); ?>assets/sbadmin2/js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="<?php echo base_url(); ?>assets/sbadmin2/js/plugins/dataTables/dataTables.bootstrap.js"></script>
	<div class="col-lg-12">
		<h1 class="page-header">Rekap Perolehan Pemain</h1>
	</div>
	<!-- /.col-lg-12 -->
	
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
									<th>No Punggung</th>
									<th>Nama Tim</th>
									<th>Perolehan</th>
									<th>Rangking</th>
								</tr>
							</thead>
							<tbody>
								<?php								
								foreach($tim as $i=>$t){
									
									echo '<tr>
										<td>'.$t['no_punggung'].'</td>
										<td>'.$t['nama_tim'].'</td>
										<td></td>
										<td></td>
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
</div>
<script>
	$(document).ready(function(){
		$('table#dt_team').DataTable();
	})
</script>