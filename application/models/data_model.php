<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class data_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
	public function tambahData($p){
		//SIMPAN BARU TIM
		$data_tim = array('nama_tim'=>$p['nama_tim']);
		$res = $this->db->insert('tim',$data_tim);
		
		//SIMPAN BARU PEMAIN
		$id_tim = $this->db->insert_id();
		$data_pemain = array();
		foreach($p['pemain'] as $ply){
			$ply['tim'] = $id_tim;
			$data_pemain[]=$ply;
		}
		$res = $this->db->insert_batch('pemain',$data_pemain);
		return $res;
	}

	
}
