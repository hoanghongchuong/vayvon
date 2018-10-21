<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Order;
use App\NewsCate;
class OrderController extends Controller
{
    //
    public function getList(){
    	$data = Order::orderBy('id','desc')->get();
    	return view('admin.orders.list', compact('data'));
    }

    public function getEdit($id)
    {
    	$data = Order::find($id);
    	$cates = NewsCate::all();
    	$money = '';
    	if($data->money == 0){
    		$money = 'từ 3 đến 5 triệu';
    	}
    	if($data->money == 1){
    		$money = 'Từ 5 đến 10 triệu';
    	}
    	if($data->money == 2){
    		$money = 'Trên 10 triệu';
    	}
    	if($data->money == 3){
    		$money = 'Khác';
    	}
    	return view('admin.orders.edit', compact('data','cates','money'));
    }

    public function update(Request $req, $id)
    {
    	$data = Order::find($id);
    	$data->status = $req->status;
    	$data->save();
    	return redirect()->back()->with('status', 'Cập nhật thành công');
    }
    public function getDelete($id)
    {
    	$data = Order::find($id);
    	$data->delete();
    	return redirect()->back()->with('status', 'Xóa thành công');
    }
}
