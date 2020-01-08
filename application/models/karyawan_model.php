<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class karyawan_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
	public function getAll(){
		$data = $this->db->get('karyawan');
		return $data->result();	
	}
	
	public function get($nik = FALSE){
		if ($nip === FALSE)
	   {
		  $query = $this->db->get('karyawan');
		  return $query->result();
	   }

	   $this->db->where('nik',$nik);
	   $query = $this->db->get('karyawan');
	   return $query->row();
	}
}
?>