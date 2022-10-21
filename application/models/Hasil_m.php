<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Hasil_m extends CI_Model {

    private $table = 'tb_hasil_suara';

    private $id = 'id_hasil';

    public function getAll(){
        return $this->db->select('*,count(a.id_pemilih) as total')
                        ->join('tb_pemilih c','a.id_pemilih=c.id_pemilih')
                        ->join('tb_calon b','a.id_calon=b.id_calon')
                        ->group_by('a.id_calon')
                        ->get($this->table.' a')->result_array();
    }
    //total
    public function getDataGrafik(){
        return $this->db->select('*,count(a.id_pemilih) as total')
                        ->join('tb_pemilih c','a.id_pemilih=c.id_pemilih')
                        ->join('tb_calon b','a.id_calon=b.id_calon')
                        ->group_by('a.id_calon')
                        ->get($this->table.' a')->result_array();
    }

    public function getDataById($id)
    {
        return $this->db->select('*')
                        ->join('tb_pemilih c','a.id_pemilih=c.id_pemilih')
                        ->join('tb_calon b','a.id_calon=b.id_calon')
                        ->where('a.id_calon',$id)
                        ->get($this->table.' a')->result_array();
    }
    public function getBelumMilih(){ 
        return $this->db
                    ->select('*')
                    ->join('tb_pemilih b','a.id_pemilih=b.id_pemilih','right')
                    ->join('tb_fakultas c','b.id_fakultas=c.id_fakultas')
                    ->where('a.id_hasil', null)
                    ->get($this->table.' a')->result_array();
                    
    }
    public function getPemilih(){ 
        // SELECT * FROM tb_hasil_suara h RIGHT OUTER join tb_pemilih p 
        // on h.id_pemilih= p.id_pemilih 
        // WHERE h.id_hasil is null;
        return $this->db
                    ->select('*')
                    ->join('tb_pemilih b','a.id_pemilih=b.id_pemilih')
                    ->join('tb_fakultas c','b.id_fakultas=c.id_fakultas')
                    ->join('tb_calon d','a.id_calon=d.id_calon')
                    ->order_by('c.nama_fakultas','a.id_calon','asc')
                    ->get($this->table.' a')->result();
                    
    }
    // public function get_kelas($keyword){
    //     $this->db->select('*')->join('tb_pemilih b','a.id_pemilih=b.id_pemilih','right')
    //     ->join('tb_fakultas c','b.id_fakultas=c.id_fakultas')
    //     ->where('b.id_hasil', null)->like('nama',$keyword);
    //     $this->db;
    //     $this->db->or_like('harga',$keyword);
    //     return $this->db->get()->result();
    // }
    

    public function getJurusan($id_fakultas){
        return $this->db
        ->select('*')
        ->join('tb_pemilih b','a.id_pemilih=b.id_pemilih','right')
        ->join('tb_fakultas c','b.id_fakultas=c.id_fakultas')
        ->where('a.id_hasil', null)
        ->get_where($this->table.' a',['b.id_fakultas'=>$id_fakultas])->result_array();
    }

    public function getCount()
    {
        return $this->db->count_all($this->table);
    }

    public function cekSuara($id_pemilih){
        return $this->db->get_where($this->table,['id_pemilih'=>$id_pemilih])->num_rows();
    }
    // public function kandidat($id_calon){
    //     return $this->db
    //     ->select('*')
    //     ->join('tb_pemilih b','a.id_pemilih=b.id_pemilih')
    //     ->join('tb_fakultas c','b.id_fakultas=c.id_fakultas')
    //     ->join('tb_calon d','b.id_calon=d.id_calon')
    //     ->get_where($this->table,['a.id_calon'=>'d'.$id_calon])->num_rows();
    // }

    public function pilih($data){
        $this->db->insert($this->table,$data);
    }
}

/* End of file Hasil_m.php */