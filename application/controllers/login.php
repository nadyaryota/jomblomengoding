<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class login extends CI_Controller {
	function __construct(){
		parent::__construct();
	
		$this->load->model('login_model');
		$this->load->library('session');
		$this->load->helper('url');
	}

	public function index(){
		$ses = $this->session->userdata('username');
		if(!empty($ses)){
			redirect(site_url().'/dashboard');
		}else{
			$p = $this->input->post();
			if(!empty($p['username'])){
				$res = $this->login_model->login($p);
				if($res == true){
					$sess = array(
						'username'=>$p['username'],
					);
					$this->session->set_userdata($sess);
					redirect(site_url().'/dashboard');
				}else{
					$data['msg'] = 'Username & password salah';
					$this->load->view('view_login',$data);			
				} 
			}else{
				$data = array();
				$this->load->view('view_login',$data);			
			}
		}		
	}
	
	public function logout(){
		$this->session->sess_destroy();		
		redirect(site_url());
	}
	
	public function tanpa(){
		$this->session->set_userdata('username',"tanpa");
		$this->session->set_userdata('hasLogin',TRUE);	

		redirect('view_login');
	}
	
}

