<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class rekap_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
	public function rekapPemain(){
		$sql = "SELECT
					no_punggung,nama_tim
				FROM
					pemain
				INNER JOIN tim ON pemain.tim = tim.id_tim";
		return $this->db->query($sql)->result_array();
	}
}
