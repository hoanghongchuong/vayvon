@extends('admin.master')
@section('content')
<section class="content-header">
	<h1>
	   	Quản lý
	    <small>Đăng ký</small>
	</h1>
	<ol class="breadcrumb">
	    <li><a href="admin"><i class="fa fa-dashboard"></i> Home</a></li>
	    <li><a href="javascript:">Đăng ký</a></li>
	    <li class="active">Chi tiết</li>
	</ol>
</section>
<section class="content">
  
    <div class="box">
    	@include('admin.messages_error')
        <div class="box-body">
        	<form method="post" action="{{ route('admin.order.update', $data->id) }}">
        		<input type="hidden" name="_token" value="{!! csrf_token() !!}" />        		
      			<div class="nav-tabs-custom">
	                <ul class="nav nav-tabs">
	                  	<li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="false">Thông tin chung</a></li>
	                  	
	                </ul>
	                <div class="tab-content">
	                  	<div class="tab-pane active" id="tab_1">
	                  		<div class="row">
		                  		<div class="col-md-6 col-xs-12">
							    	<div class="form-group ">
								      	<label for="ten">Tên</label>
								      	<input type="text" name="name" id="txtName" value="{{ $data->name }}"  class="form-control" />								      	
									</div>
									<div class="form-group">
								      	<label for="alias">Ngày sinh</label>
								      	<input type="text" name="birthday" id="" value="{{ date('d/m/Y', strtotime($data->birthday)) }}"  class="form-control" />
									</div>									
									<div class="form-group">
								      	<label for="desc">Số điện thoại</label>
								      	<input type="text" name="phone" id="" value="{{ $data->phone }}"  class="form-control" />
									</div>
									<div class="form-group">
								      	<label for="desc">Nơi công tác</label>
								      	<input type="text" name="name_company" id="" value="{{ $data->name_company }}"  class="form-control" />
									</div>
									<div class="form-group">
								      	<label for="desc">Địa chỉ nơi công tác</label>
								      	<input type="text" name="address" id="" value="{{ $data->address }}"  class="form-control" />
									</div>
								</div>
								<div class="col-md-6 col-xs-12">
									<div class="form-group ">
								      	<label for="ten">Loại giao dịch</label>
								      	<select name="cate_id" class="form-control">
								      		@foreach($cates as $cate)
								      		<option value="{{ $cate->id }}" @if($cate->id == $data->cate_id) selected @endif>{{ $cate->name }}</option>
								      		@endforeach
								      	</select>								      	
									</div>
									<div class="form-group">
								      	<label for="desc">Thu nhập</label>
								      	<input type="text" name="money" id="" value="{{ $money }}"  class="form-control" />
									</div>
									<div class="form-group">
								      	<label for="desc">Đóng bảo hiểm</label>
								      	<input type="text" name="baohiem" id="" value="@if($data->baohiem == 0) Có @elseif($data->baohiem == 1) Không @endif"  class="form-control" />
									</div>
									<div class="form-group">
								      	<label for="desc">Hình thức nhận lương</label>
								      	<input type="text" name="type" id="" value="@if($data->type == 0) Chuyển khoản @elseif($data->type == 1) Tiền mặt @endif"  class="form-control" />
									</div>
									<div class="form-group ">
								      	<label for="ten">Trạng thái</label>
								      	<select name="status" class="form-control">
								      		<option value="0" @if($data->status == 0) selected @endif>Chưa xử lý</option>
								      		<option value="1" @if($data->status == 1) selected @endif>Đã xử lý</option>
								      	</select>								      	
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
	                  	</div><!-- /.tab-pane -->
	                </div>
	            </div>	            
			    <div class="clearfix"></div>
			    <div class="box-footer">
			    	<div class="row">
						<div class="col-md-6">
					    	<button type="submit" class="btn btn-primary">Cập nhật</button>
					    	<button type="button" class="btn btn-danger" onclick="javascript:window.location='backend/orders'">Thoát</button>
				    	</div>
			    	</div>
			  	</div>
		    </form>
        </div><!-- /.box-body -->
    </div><!-- /.box -->
    
</section><!-- /.content -->
@endsection