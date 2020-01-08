<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class login extends CI_Controller {
	function __construct(){
		parent::__construct();
	
		$this->load->model('login_model');
		$this->load->library('session');
		$this->load->helper('url');
	}

	public function index(){
		$p = $this->input->post();
		if(!empty($p['username'])){
			$res = $this->login_model->login($p);
			if($res == true){
				$this->load->view('view_menu');
			}else{
				$data['msg'] = 'Username & password salah';
				$this->load->view('view_login',$data);			
			} 
		}else{
			$data = array();
			$this->load->view('view_login',$data);			
		}		
	}
	
	public function logout(){
		$this->session->unset_userdata('sdhLogin');		
		redirect('view_login');
	}
	
	public function tanpa(){
		$this->session->set_userdata('username',"tanpa");
		$this->session->set_userdata('hasLogin',TRUE);	

		redirect('view_login');
	}
	
}

