<?php

namespace App\Http\Controllers;

use App\CompanyCode;
use Illuminate\Http\Request;

class importCSV extends Controller
{
    public function importCSVLogic(Request $request)
    {
        if($request->method() == 'GET'){
            return response()->json([
                'status' => 200,
                'message' => 'Data has been imported successfully',
                'data' => CompanyCode::all()
            ]);
        }
        die;
        $filename=$_FILES["csv_file"]["tmp_name"];    
        
        if($_FILES["csv_file"]["size"] > 0)
        {
            $file = fopen($filename, "r");
            $a = 0;
            while (($getData = fgetcsv($file, 10000, ",")) !== FALSE){
                if($a > 0){
                    $data = CompanyCode::create([
                        'name'      => $getData[0],
                        'code_1'    => $getData[1],
                        'code_2'    => $getData[2],
                        'code_3'    => $getData[3],
                        'code_4'    => $getData[4],
                        'code_5'    => $getData[5],
                        'code_6'    => $getData[6],
                        'code_7'    => $getData[7],
                    ]); 
                }
                $a++;
            }

            return response()->json([
                'status' => 200,
                'message' => 'Data has been imported successfully',
                'data' => $data
            ]);
        }
    }
}
