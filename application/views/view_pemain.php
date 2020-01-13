<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				STIKI Basketball League
			</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover" id="dt_pemain">
						<thead>
							<tr>
								<th>No Punggung</th>
								<th>Nama</th>
							</tr>
						</thead>
						<tbody>
							<?php								
							foreach($pemain as $i=>$t){
								
								echo '<tr>
									<td>'.$t['no_punggung'].'</td>
									<td>'.$t['nama_pemain'].'</td>
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