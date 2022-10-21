<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Fakultas_m extends CI_Model {
    
    private $table = 'tb_fakultas';

    private $id = 'id_fakultas';

    public function getAll(){ 
        return $this->db->get($this->table)->result_array();
    }

    public function tambahBaru($data){
        $this->db->insert($this->table,$data);
    }

    public function hapus($id){
        $this->db->delete($this->table,[$this->id=>$id]);
    }
    public function getJurusan(){
        return $this->db
        ->select('*')
        ->join('tb_pemilih b','a.id_fakultas=b.id_fakultas')
        ->join('tb_hasil_suara c', 'b.id_pemilih=c.id_pemilih', 'left')
        ->where('c.id_hasil', null)
        ->group_by('a.nama_fakultas')
        ->get_where($this->table.' a')->result_array();
    }

}

/* End of file Fakultas_m.php */