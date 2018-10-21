@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
?>
<main class="">
    <section class="bread-wrap">
        <div class="container">
            <ul class="list-unstyled s12 bread">
                <li><a href="{{url('')}}" title="">Trang chủ</a></li>
                <li>Liên hệ</li>
            </ul>
        </div>
    </section>

    <section class="contact">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <h1 class="s24 t6 pb-4 t5 text-uppercase contact-tit">Liên hệ</h1>
                    <ul class="list-unstyled s15 ft-add">
                        <li class="d-flex align-items-baseline">
                            <i class="fas fa-phone"></i>
                            <a href="tel:{{$setting->phone}}" title="">&nbsp;{{$setting->phone}}</a>
                        </li>
                        <li class="d-flex align-items-baseline">
                            <i class="fas fa-envelope"></i> <a href="mailto:{{$setting->email}}" title="">&nbsp;{{$setting->email}}</a>
                        </li>
                        
                        <li class="d-flex align-items-baseline">
                            <i class="fas fa-map-marker-alt"></i> 
                            <span>&nbsp; {{$setting->address}}</span>
                        </li>
                    </ul>

                    <!-- <form action="" class="contact-frm">
                        <input type="text" placeholder="Họ tên" required="required" class="form-control">
                        <input type="email" placeholder="Email" required="required" class="form-control">
                        <input type="tel" placeholder="Số điện thoại" required="required" class="form-control">
                        
                        <textarea rows="6" class="form-control" placeholder="Nội dung"></textarea>

                        <div class="text-sm-left text-center">
                            <button class="btn regis-btn">GỬI</button>
                        </div>
                    </form> -->
                </div>

                <div class="col-sm-6">
                    <div class="contact-maps">
                        {!! @$setting->iframemap !!}
                    </div>
                </div>
            </div>
            
        </div>
    </section>
</main>

@endsection
