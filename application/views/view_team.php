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
								<tr>
									<td>1</td>
									<td>Amerika</td>
									<td><button type="button" class="btn btn-primary">Lihat</button></td>
									
								</tr>
								<tr>
									<td>2</td>
									<td>Iran</td>
									<td><button type="button" class="btn btn-primary">Lihat</button></td>
									
								</tr>
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