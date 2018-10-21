<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $services = DB::table('news')->where('com','dich-vu')->where('status',1)->get();
    $brands = DB::table('partner')->orderBy('id')->get();
?>

<section class="partner partner-maketing pd-60" style="margin-top: 40px;">
    <div class="container">
        <h2 class="index-title text-uppercase text-center font-ice">
            <span style="font-size: 24px;
                font-weight: bold;">ĐỐI TÁC CỦA CHÚNG TÔI
            </span>
        </h2>
        <div class="partner-slider owl-carousel slider-general">
            @foreach($brands as $brand)
            <div class="item">
                <a href="{{ $brand->url }}" title="" class="zoom"><img src="{{ asset('upload/banner/'.$brand->photo) }}" alt="" title=""> </a>
            </div>
            @endforeach
        </div>
    </div>
</section>
<footer class="b1 ft">
    <div class="container">
        <div class="ft-1">
            <div class="row">
                <div class="col-lg-4 col-md-12">
                    <div class="text-lg-left text-center"><a href="{{url('')}}" title=""><img src="{{asset('upload/hinhanh/'.$setting->photo)}}" title="" alt=""></a></div>
                    <div class="ft-cap">
                        Chúng tôi vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rối nghĩa dễ gây rối trí và cảm trở công việc tập trung vào yếu tố trình bày văn bản.
                    </div>
                    
                </div>

                <div class="col-lg-3 offset-lg-1 col-md-6">
                    <h2 class="s16 sbold text-uppercase pb-4 ft-tit">Thông tin</h2>

                    <ul class="list-unstyled ft-menu">
                        <li><a href="{{url('')}}" title="">Trang chủ</a></li>
                        <li><a href="{{url('gioi-thieu')}}" title="">Giới thiệu</a></li>
                        
                        <!-- <li><a href="thanhtoan.html" title="">Thanh toán khoản vay</a></li> -->
                        <li><a href="{{url('tuyen-dung')}}" title="">Tuyển dụng</a></li>
                        <li><a href="{{url('lien-he')}}" title="">Liên hệ</a></li>
                    </ul>
                    
                </div>
                <div class="col-lg-4 col-md-6">
                    <h2 class="s16 sbold text-uppercase pb-4 ft-tit">Liên hệ</h2>

                    <ul class="list-unstyled ft-add">
                        <li class="d-flex align-items-baseline">
                            <i class="fas fa-phone"></i>
                            <a href="tel:{{$setting->phone}}" title="">{{$setting->phone}}</a>
                        </li>
                        <li class="d-flex align-items-baseline">
                            <i class="fas fa-envelope"></i> <a href="#" title="">{{$setting->email}}</a>
                        </li>
                        
                        <li class="d-flex align-items-baseline">
                            <i class="fas fa-map-marker-alt"></i> 
                            <span>{{$setting->address}}</span>
                        </li>
                    </ul>
                   <!--  <ul class="text-lg-left text-center list-inline pt-4 ft-social">
                        <li><a href="#" title=""><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="" title=""><i class="fab fa-twitter"></i></a></li>
                        <li><a href="" title=""><i class="fab fa-linkedin-in"></i></a></li>
                    </ul> -->
                </div>
            </div>
        </div>
        
    </div>
    <div class="b2 s12 text-center ft-last">
        © <a href="" title=""></a> 2018. All rights reserved.
    </div>
</footer>

<div id="fb-root"></div>
<script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6&appId=124844007858325";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>