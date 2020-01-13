<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class rekap_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
	public function getDataPemain(){
		$sql = "Select id_pemain,nama_pemain from pemain";
		return $this->db->query($sql)->result_array();
	}
	
}
