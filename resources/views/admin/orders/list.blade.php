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
	    <li class="active">Danh sách</li>
	</ol>
</section>
<section class="content">
	<div class="row">
	    <div class="col-xs-12">
		    <div class="box">	
		    @include('admin.messages_error')	      	       
		        <div class="box-body ">
			        <table id="example2" class="table table-bordered table-hover">
			            <thead>
				            <tr>
				               
				                <th class="text-center with_dieuhuong">Stt</th>               
				              	<th>Tên</th>
				              	<!-- <th>Ngày sinh</th> -->
				              	<th>Số điện thoại</th>
				              	<th>Trạng thái</th>
				              	<!-- <th>Nơi công tác</th> -->
				              	<!-- <th>Địa chỉ</th> -->
				              	<!-- <th>Loại giao dịch</th> -->
				              	<!-- <th>Tổng thu nhập</th>
				              	<th>Đóng bảo hiểm y tế</th>
				              	<th>Hình thức nhận lương</th> -->
				                <!-- <th class="text-center with_dieuhuong">Hoạt động</th> -->
				                <th class="text-center with_dieuhuong">Sửa</th>
				                <th class="text-center with_dieuhuong">Xóa</th>
				            </tr>
			            </thead>
			            <tbody>
			            	@foreach($data as $k=>$item)
			             	<tr>
			             		<td>{{ $k+1 }}</td>
			             		<td>{{ $item->name }}</td>
			             		<!-- <td>{{ date('d/m/Y', strtotime($item->birthday)) }}</td>			             		 -->
			             		<td>{{ $item->phone }}</td>
			             		<td>@if($item->status == 0) Chưa xử lý @else Đã xử lý @endif</td>
			             		<!-- <td>{{ $item->name_company }}</td> -->
			             		<!-- <td>{{ $item->address }}</td> -->
			             		<td><a href="{{ route('admin.order.getEdit', $item->id) }}">Chi tiết</a></td>
			             		<td><a href="{{ route('admin.order.getDelete', $item->id) }}">Xóa</a></td>
			             	</tr>
			             	@endforeach
			            </tbody>
			        </table>
		        </div><!-- /.box-body -->
		        <div class="box-footer col-md-12">
		          <div class="row">
		            <div class="col-md-6">
		              <input type="button" onclick="javascript:window.location='backend/news/add?type={{ @$_GET[type] }}'" value="Thêm" class="btn btn-primary" />
		              <button type="button" id="xoahet" class="btn btn-success">Xóa</button>
		              <input type="button" value="Thoát" onclick="javascript:window.location='admin'" class="btn btn-danger" />

		            </div>
		          </div>
		        </div>
		    </div><!-- /.box -->
	    </div><!-- /.col -->
	</div><!-- /.row -->
</section><!-- /.content -->
@endsection