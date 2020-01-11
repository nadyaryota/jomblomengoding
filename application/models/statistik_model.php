<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class statistik_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
	public function selectTim(){
		//Mencri data TIM
		$sql = "SELECT id_tim,nama_tim FROM tim";
		return $this->db->query($sql)->result_array();
	}

	public function selectPemain($idtim){
		$sql = "SELECT  id_pemain,nama_pemain,no_punggung from pemain where tim = '$idtim'";
		return $this->db->query($sql)->result_array();
	}
	
	public function insertStatistik ($p){
		$id_match = uniqid();
		//SIMPAN Data Statistik
		$sql2 = "INSERT INTO `match` 
				(tanggal,id_match,tim) 
			VALUES 
				('".$p['tanggal']."','".$id_match."','".$p['tim1']."')";
		$this->db->query($sql2);
		
		$id = $this->db->insert_id();
		$data = array();
		foreach($p['statistik_tim1'] as $tim){
			$_data = $tim;
			$_data['id_match'] = $id;
			$data[] = $_data;
		}
		
		$this->db->insert_batch('statistik',$data);
		
		$sql2 = "INSERT INTO `match` 
				(tanggal,id_match,tim) 
			VALUES 
				('".$p['tanggal']."','".$id_match."','".$p['tim2']."')";
		$this->db->query($sql2);
		
		$id = $this->db->insert_id();
		$data = array();
		foreach($p['statistik_tim2'] as $tim){
			$_data = $tim;
			$_data['id_match'] = $id;
			$data[] = $_data;
		}
		$this->db->insert_batch('statistik',$data);
	}
}
