<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
class Hasil extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        if(!$this->session->userdata('username')){
            redirect('login');
        }
        $this->load->model('hasil_m');
        $this->load->model('calon_m');
        $this->load->model('fakultas_m');
        $this->load->model('pemilih_m');
    }
    
    public function index()
    {
        $data['mHasil'] = true;
        $data['daftar_calon'] = $this->hasil_m->getAll();
        $data['content'] = 'v_hasil';
        $this->load->view('index',$data);
    }
    public function pilih()
    {
        $data['mPemilih'] = true;
        $data['pemilih'] = $this->pemilih_m->getByFakultas($this->input->post('fakultas',true));
        $data['fakultas'] = $this->fakultas_m->getJurusan();
        $this->load->view('index',$data);
    }
   
    public function grafik()
    {
        $data['mGrafik'] = true;
        $data['content'] = 'v_grafik';
        $this->load->view('index',$data);
    }

    public function dataGrafik(){
        $data = $this->hasil_m->getDataGrafik();
        foreach ($data as $key => $value) {
            $chartData[] =['x'=>$value['calon_presma'].' & '.$value['calon_wakil_presma'],'y'=>intval($value['total'])];
        }
        echo json_encode($chartData);
    }

    public function suara($id)
    {
        $data['mHasil'] = true;
        $data['suara_calon'] = $this->hasil_m->getDataById($id);
        $data['content'] = 'hasil_suara';
        $this->load->view('index',$data);
    }

    public function video($id)
    {
        // $data['mHasil'] = true;
        $data['calonbyid'] = $this->calon_m->getDataById($id);
        $data['content'] = 'lihat_video';
        $this->load->view('index',$data);
    }
    public function export(){
        $data['hasil_suara'] = $this->hasil_m->getPemilih();
        // Buat sebuah variabel untuk menampung pengaturan style dari isi tabel

        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        // Set document properties
$spreadsheet->getProperties()->setCreator('SMK BAGIMU NEGERIKU')
->setLastModifiedBy('SMK BAGIMU NEGERIKU')
->setTitle('DATA PEMILOS')
->setSubject('DATA PEMILOS')
->setDescription('Pemilihan Ketua dan Wakil Ketua OSIS')
->setKeywords('Pemilos');
$style_col = [
    'font' => ['bold' => true], // Set font nya jadi bold
    'alignment' => [
      'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER, // Set text jadi ditengah secara horizontal (center)
      'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
    ],
    'borders' => [
      'top' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border top dengan garis tipis
      'right' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN],  // Set border right dengan garis tipis
      'bottom' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border bottom dengan garis tipis
      'left' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN] // Set border left dengan garis tipis
    ]
  ];
        $style_row = [
            'alignment' => [
            'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER // Set text jadi di tengah secara vertical (middle)
        ],
    'borders' => [
        'top' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border top dengan garis tipis
        'right' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN],  // Set border right dengan garis tipis
        'bottom' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN], // Set border bottom dengan garis tipis
        'left' => ['borderStyle'  => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN] // Set border left dengan garis tipis
    ]
];

       
        $sheet
       ->setCellValue('A1', "DATA Pemilihan OSIS")
       ->setCellValue('A3', 'No.')
       ->setCellValue('B3', 'Nama Pemilih')
       ->setCellValue('C3', 'Kelas Pemilih')
       ->setCellValue('D3', 'Nama Calon Ketua & Wakil Dipilih')
       ->setCellValue('E3', 'ID')
       ->mergeCells('A1:F1') // Set Merge Cell pada kolom A1 sampai F1
       ->getStyle('A1')->getFont()->setBold(true) // Set bold kolom A1 // Set font size 15 untuk kolom A1
       ->setSize(24); // Set bold kolom A1 // Set font size 15 untuk kolom A1
       $sheet->getStyle('A3')->applyFromArray($style_col);
       $sheet->getStyle('B3')->applyFromArray($style_col);
       $sheet->getStyle('C3')->applyFromArray($style_col);
       $sheet->getStyle('D3')->applyFromArray($style_col);
       $sheet->getStyle('E3')->applyFromArray($style_col);
        $baris= 4;
        $no= 1;
        foreach($data['hasil_suara'] as $hs){
            $presma = strtoupper($hs->calon_presma);
            $wapresma = strtoupper($hs->calon_wakil_presma);
            $sheet->setCellValue('A'.$baris, $no++);
            $sheet->setCellValue('B'.$baris, strtoupper($hs->nama));
            $sheet->setCellValue('C'.$baris, strtoupper($hs->nama_fakultas));
            $sheet->setCellValue('D'.$baris, $presma.",".$wapresma);
            $sheet->getStyle('A'.$baris)->applyFromArray($style_row);
            $sheet->getStyle('B'.$baris)->applyFromArray($style_row);
            $sheet->getStyle('C'.$baris)->applyFromArray($style_row);
            $sheet->getStyle('D'.$baris)->applyFromArray($style_row);
            $sheet->setCellValue('E'.$baris, $hs->id_calon);
            $sheet->getStyle('E'.$baris)->applyFromArray($style_row);
            $baris++;
           } 
   $sheet->getColumnDimension('A')->setWidth(3); // Set width kolom A
   $sheet->getColumnDimension('B')->setWidth(28); // Set width kolom B
   $sheet->getColumnDimension('C')->setWidth(35); // Set width kolom C
   $sheet->getColumnDimension('D')->setWidth(50); // Set width kolom D
   $sheet->getColumnDimension('E')->setWidth(3); // Set width kolom E
   $sheet->getDefaultRowDimension()->setRowHeight(-1);
   $sheet->getPageSetup()->setOrientation(\PhpOffice\PhpSpreadsheet\Worksheet\PageSetup::ORIENTATION_LANDSCAPE);
        $date = date('Y');
        $filename = 'Data Pemilihan Ketua Wakil OSIS '.$date;
        $sheet->setTitle("Data Pemilihan OSIS");
        $writer = new Xlsx($spreadsheet);
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="'. $filename .'.xlsx"');
        header('Cache-Control: max-age=0');
        $writer->save('php://output'); // download file
        }
    public function excel(){
       // use PHPExcel-1.8 error cause the version  maybee
       require(APPPATH. 'PHPExcel-1.8/Classes/PHPExcel.php');
       require(APPPATH. 'PHPExcel-1.8/Classes/PHPExcel/Writer/Excel2007.php');

       $object = new PHPExcel();
      

       $object->getActiveSheetIndex(0);
       $object->getActiveSheet()->setCellValue('A1', 'No.');
       $object->getActiveSheet()->setCellValue('B1', 'NIS Pemilih');
       $object->getActiveSheet()->setCellValue('C1', 'Nama Pemilih');
       $object->getActiveSheet()->setCellValue('D1', 'Kelas Pemilih');
       $object->getActiveSheet()->setCellValue('E1', 'NIS Calon Ketua Dipilih');
       $object->getActiveSheet()->setCellValue('F1', 'Nama Calon Ketua Dipilih');
       $object->getActiveSheet()->setCellValue('G1', 'Jurusan Calon Ketua Dipilih');
       $object->getActiveSheet()->setCellValue('H1', 'NIS Calon Wakil Ketua Dipilih');
       $object->getActiveSheet()->setCellValue('I1', 'Nama Calon Wakil Ketua Dipilih');
       $object->getActiveSheet()->setCellValue('J1', 'Jurusan CAlon Wakil Ketua Dipilih');

       $baris= 2;
       $no= 1;

       foreach($data['hasil_suara'] as $hs){
        $object->getActiveSheet()->setCellValue('A'.$baris, $no++);
        $object->getActiveSheet()->setCellValue('B'.$baris, $hs->nim);
        $object->getActiveSheet()->setCellValue('C'.$baris, $hs->nama);
        $object->getActiveSheet()->setCellValue('D'.$baris, $hs->nama_fakultas);
        $object->getActiveSheet()->setCellValue('E'.$baris, $hs->nim_calon_presma);
        $object->getActiveSheet()->setCellValue('F'.$baris, $hs->calon_presma);
        $object->getActiveSheet()->setCellValue('G'.$baris, $hs->fakultas_calon_presma);
        $object->getActiveSheet()->setCellValue('H'.$baris, $hs->nim_calon_wapresma);
        $object->getActiveSheet()->setCellValue('I'.$baris, $hs->calon_wakil_presma);
        $object->getActiveSheet()->setCellValue('J'.$baris, $hs->fakultas_calon_wapresma);
        $baris++;
       }
       $filename = "Data_Pemilihan_Ketua_Wakil_OSIS".'.xlsx';
       $object->getActiveSheet()->setTitle("Data Pemilihan OSIS");

       header('Content-Type: application/
            vnd.openxmlformats-officedocument.spreadsheetml.sheet');
       header('Content-Disposition: attachment;filename="'.$filename. '"');
       header('Cache-Control: max-age=0');

       $writer=PHPExcel_IOFactory::createwriter($object, 'Excel2007');
       $writer->save('php://output');

       exit;
      }

}

/* End of file Hasil.php */