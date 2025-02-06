<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
                                

class HolaController extends Controller
{      
        public function hola()                       
        {
			return "<h1>Laravel en servidor Docker!!</h1>";
        }    
     
}
