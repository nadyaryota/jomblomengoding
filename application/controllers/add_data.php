<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class add_data extends CI_Controller {

	public function index()
	{
		$data = array(
			'content'=>$this->load->view('view_team',array(),true),
		);
		$this->load->view('view_menu',$data);		
	}
	public function tambah(){
		$data = array(
			'content'=>$this->load->view('view_add',array(),true),
		);
		$this->load->view('view_menu',$data);
	}
	public function simpan(){
		$p = $this->input->post();
		$this->load->model('data_model');
		echo $this->data_model->tambahData($p);
	}
}
