<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class add_data extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('data_model');
		$this->load->model('statistik_model');
		$this->load->model('rekap_model');
	}
	public function index()
	{
		$_data['tim'] = $this->data_model->selectTim();
		$data = array(
			'content'=>$this->load->view('view_team',$_data,true),
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
	public function get_lihatpemain(){
		$p = $this->input->post('id');
		$d['pemain'] = $this->statistik_model->selectPemain($p);
		$this->load->view('view_pemain',$d);
	}

	public function rekap(){
		$_data['tim'] = $this->rekap_model->rekapPemain();
		$data = array(
			'content'=>$this->load->view('rekap_data',$_data,true),
		);
		$this->load->view('view_menu',$data);
	}
}
