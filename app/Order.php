<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = "orders";

    protected $fillable = [
    	'name','phone','birthday','address','name_company','cate_id','money','baohiem','type','status'
    ]; 

    public function getFieldList()
    {
    	return $this->fillable;
    }
}
