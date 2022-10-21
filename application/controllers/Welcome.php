<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	
	public function __construct()
	{
		parent::__construct();
		if(!$this->session->userdata('username')){
			redirect('login');
		}
		$this->load->model('user_m');
		$this->load->model('pemilih_m');
		$this->load->model('hasil_m');
		$this->load->model('fakultas_m');
	}
	
	public function index()
	{
		$data['mDashboard'] = true;
		$data['dashboard'] = [
			'total_calon'=>$this->user_m->getCount('tb_calon'),
			'total_pemilih'=>$this->user_m->getCount('tb_pemilih'),
			'sudah_pilih'=>$this->user_m->getCount('tb_hasil_suara'),
			'belum_pilih'=>$this->user_m->getCount('tb_pemilih') - $this->user_m->getCount('tb_hasil_suara'),
		];
		$data['belom_milih'] = $this->hasil_m->getBelumMilih();
		$data['config'] = $this->user_m->getConfig();
        $data['fakultas'] = $this->fakultas_m->getJurusan();
		$data['content'] = 'dashboard';
		$this->load->view('index',$data);
	}
	public function pilih()
    {
        $data['mPemilih'] = true;
        $data['pemilih'] = $this->pemilih_m->getByFakultas($this->input->post('fakultas',true));
        $data['fakultas'] = $this->hasil_m->getJurusan();
        $this->load->view('welcome/#exampleModal',$data);
    }

	public function ubah_password(){
		if($this->session->userdata('level')=='user'){
			$table = 'tb_pemilih';
			$id = 'id_pemilih';
		}else{
			$table = 'tb_admin';
			$id = 'id_admin';
		}
		$data = [ 
			'password'=>password_hash($this->input->post('password',true),PASSWORD_DEFAULT)
		];
		$this->db->update($table,$data,[$id=>$this->input->post('id',true)]);
		echo '<script>javascript:history.back()</script>';
	}

	public function logout(){
		$this->session->sess_destroy();
		redirect('login');
	}
}