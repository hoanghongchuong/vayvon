@extends('index')
@section('content')

<main class="">
    <section class="bread-wrap">
        <div class="container">
            <ul class="list-unstyled s12 bread">
                <li><a href="{{url('')}}" title="">Trang chủ</a></li>
                <li>{{$news_detail->name}}</li>
            </ul>
        </div>
    </section>

    <section class="regis">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-3">
                    <p class="dv-title">Dịch vụ liên quan</p>   
                    <ul class="cate-service">
                        @foreach($sameCate as $same)
                        <li class="@if($same->id == $news_detail->id) active @endif"><a href="{{ url('post/'.$same->alias.'.html') }}">{{$same->name}}</a></li>
                        @endforeach
                        
                    </ul>
                </div>
                <div class="col-lg-9">
                    <div class="vay-content">
                        <h1 class="name-vay">{{$news_detail->name}}</h1>
                        <div class="s15 t6" style="margin-top: 20px; margin-bottom: 50px;">
                            {!! $news_detail->mota !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="regis">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <h1 class="sbold s24 pb-4 pt-2 regis-tit" style="color:red">Gửi yêu cầu của bạn, chúng tôi sẽ liên hệ lại với bạn ngay!</h1>

                    <form action="" class="regis-frm" method="post">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="py-3" for="">Lựa chọn giao dịch</label>
                                    <select name="" class="form-control">
                                        <option value="">Vay theo lương</option>
                                        <option value="">Vay theo lương</option>
                                        <option value="">Vay theo lương</option>
                                        
                                    </select>
                                </div>

                                <label class="py-3" for="">Họ tên</label>
                                <input type="text" class="form-control" placeholder="Họ tên" required="required">
                                <label class="py-3" for="">Ngày sinh</label>
                                <input type="date" class="form-control" placeholder="Ngày sinh" required="required">
                                <label class="py-3" for="">Số điện thoại</label>
                                <input type="tel" class="form-control" placeholder="Số điện thoại" required="required">
                                <label class="py-3" for="">Địa chỉ nơi công tác</label>
                                <input type="text" class="form-control" placeholder="address" required="required">
                                
                            </div>

                            <div class="col-sm-6">

                                <label class="py-3" for="">Tên đầy đủ công tác</label>
                                <input type="text" class="form-control" placeholder="address" required="required">
                                <div class="form-group">
                                    <label class="py-3" for="">Tổng thu nhập hàng tháng</label>
                                    <select name="" class="form-control">
                                        <option value="0">từ 3 đến 5 triệu</option>
                                        <option value="1">Từ 5 đến 10 triệu</option>
                                        <option value="2">Trên 10 triệu</option>
                                        <option value="3">Khác</option>                                             
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="py-3" for="">Công ty, Cơ quan có đóng BHYT cho anh (chị) không?</label>
                                    <select name="" class="form-control">
                                        <option value="0">Có</option>
                                        <option value="1">Không</option>
                                        
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="py-3" for="">Lương anh (chị) nhận hàng tháng theo hình thức nào?</label>
                                    <select name="" class="form-control">
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
