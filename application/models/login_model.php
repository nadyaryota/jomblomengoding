<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class login_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
	public function login($p){
		$sql = "Select * from user where username = '".$p['username']."' and password = '".$p['password']."'";
		$res = $this->db->query($sql);
		if($res->num_rows()>0){
			return true;
		}else{
			return false;
		}
		
	}

	
}
