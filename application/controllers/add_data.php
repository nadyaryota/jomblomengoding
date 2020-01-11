<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class add_data extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('data_model');
		$this->load->model('statistik_model');
	}
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
		
		echo $this->data_model->tambahData($p);
	}
	public function statistik(){
		$_data = array(
			'list_tim' => $this->statistik_model->selectTim(),
		);
		$data = array(
			'content'=>$this->load->view('view_statistik',$_data,true),
		);
		$this->load->view('view_menu',$data);
		
	}
	public function get_pemaintim(){
		$p = $this->input->post('id');
		$data = $this->statistik_model->selectPemain($p);
		echo json_encode($data);
	}
	
	public function saveStatistic(){
		$p = $this->input->post();
		$res = $this->statistik_model->insertStatistik($p);
		echo true;
	}
}
