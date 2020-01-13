 <?php
defined('BASEPATH') OR exit('No direct script access allowed');

class rekap extends CI_Controller {

	public function index()
	{
		$data = array('content'=>'');
		//$this->load->view('view_menu',$data);
		$this->load->model('rekap_model');
		$this->count_spk();
	}
	
	public function count_spk(){
		$this->load->model('rekap_model');
		echo '<pre>';
		$bobot = array(
			'point = 20',
			'assist = 20', 
			'off_rebound = 15',
			'def_rebound = 15',
			'steal = 15',
			'block = 15'
		);	
		$data = $this->rekap_model->rekapPemain();
		print_r($data);
	}
	
	
	
	
}
?>