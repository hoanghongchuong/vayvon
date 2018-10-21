@extends('index')
@section('content')
<main class="">
	<section class="bread-wrap">
		<div class="container">
			<ul class="list-unstyled s12 bread">
				<li><a href="index.html" title="">Trang chủ</a></li>
				<li>Đăng ký vay</li>
			</ul>
		</div>
	</section>

	<section class="regis">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-10">
					<h1 class="sbold s24 pb-4 pt-2 regis-tit" style="color:red">Gửi yêu cầu của bạn, chúng tôi sẽ liên hệ lại với bạn ngay!</h1>
					@if (session('message'))
						<div class="alert alert-success"><h2 style="font-size: 26px;">{{ session('message') }}</h2></div>
					@endif
					<form action="{{ route('vayvon') }}" class="regis-frm" method="post">
						{{ csrf_field() }}
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group">
									<label class="py-3" for="">Lựa chọn giao dịch</label>
									<select name="cate_id" class="form-control">
										@foreach($categories as $cate)
										<option value="{{ $cate->id }}">{{$cate->name}}</option>
										@endforeach
										
									</select>
								</div>

								<label class="py-3" for="">Họ tên</label>
								<input type="text" class="form-control" name="name" placeholder="Họ tên" required="required">
								<label class="py-3" for="">Ngày sinh</label>
								<input type="date" class="form-control" name="brithday" placeholder="Ngày sinh" required="required">
								<label class="py-3" for="">Số điện thoại</label>
								<input type="tel" class="form-control" name="phone" placeholder="Số điện thoại" required="required">
								<label class="py-3" for="">Địa chỉ nơi công tác</label>
								<input type="text" class="form-control" name="address" placeholder="Địa chỉ" required="required">
								
							</div>

							<div class="col-sm-6">

								<label class="py-3" for="">Tên đầy đủ ơi công tác</label>
								<input type="text" class="form-control" name="name_company" placeholder="Tên nơi công tác" required="required">
								<div class="form-group">
									<label class="py-3" for="">Tổng thu nhập hàng tháng</label>
									<select name="money" class="form-control" required="">
										<option value="0">từ 3 đến 5 triệu</option>
										<option value="1">Từ 5 đến 10 triệu</option>
										<option value="2">Trên 10 triệu</option>
										<option value="3">Khác</option>												
									</select>
								</div>
								<div class="form-group">
									<label class="py-3" for="">Công ty, Cơ quan có đóng BHYT cho anh (chị) không?</label>
									<select name="baohiem" class="form-control" required="">
										<option value="0">Có</option>
										<option value="1">Không</option>
										
									</select>
								</div>
								<div class="form-group">
									<label class="py-3" for="">Lương anh (chị) nhận hàng tháng theo hình thức nào?</label>
									<select name="type" class="form-control" required="">
										<option value="0">Chuyển khoản</option>
										<option value="1">Tiền mặt</option>
										
									</select>
								</div>
							</div>
							<div class="col-sm-12">
								<div class=" pt-5 text-center">
									<button class="btn text-uppercase regis-btn">Đăng ký vay</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</main>
@endsection