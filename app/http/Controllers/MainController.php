<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers;

class MainController extends Controller{
	public function __construct(){
		
	}
	public function getIndex(){
		return view('index');
	}
}