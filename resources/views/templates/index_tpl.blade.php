@extends('index')
@section('content')
<main class="index">
    <!-- <section class="slider-area">
        <img class="slider-img" src="" alt="slider-img" title="#caption1" />
        
    </section> -->
    <!-- slider-area-end -->
    @include('templates.layout.slider')
    <!-- <section class="sloganx" style="background: url('./public/images/slider.jpg');">
        <h2 class=" text-uppercase">Hãy đăng ký để nhận được sự hỗ trợ tốt nhất</h2>
        <a href="{{ url('dang-ky') }}" class="btn btn-register btn-success">Đăng ký ngay</a>
    </section> -->
    <section class="hd">
        <div class="container">
            <h2 class="medium s30 text-center hd-tit wow">Các bước để nhận và thanh toán khoản vay</h2>

            <div class="hd-wrap">
                <div class="row justify-content-between">
                    @foreach($steps as $step)
                    <div class="col-xl-5 col-lg-6 col-md-6 col-sm-6 wow fadeInUp" data-wow-offset="200">
                        <div class="d-flex align-items-center flex-md-row flex-column hd-item">
                            <img src="{{asset('upload/hinhanh/'.$step->photo)}}" title="" alt="">
                            <div class="text-md-left text-center hd-content">
                                <h3 class="sbold s18 t1 pt-3 pb-2 tit">{{$step->name}}</h3>
                                <h4>{!!$step->content!!}</h4>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>

    <section class="text-white why">
        <div class="container">
            <h2 class="medium s30 py-4 text-md-left text-center why-tit wow bounceInLeft" data-wow-offset="200">Vì sao chọn chúng tôi</h2>
            <!-- <h3 class="w-lg-50 wow bounceInLeft" data-wow-offset="200">Chúng ta vẫn biết rằng làm việc với một đoạn văn bản dễ đọc và rõ nghĩa và cản trở việc tập trung vào nội dung văn bản...</h3> -->
            <div class="text-md-left my-4 text-center wow bounceInLeft" data-wow-offset="200">
                <a href="{{url('dang-ky')}}" title="" class="btn text-uppercase regis-btn">ĐĂng ký ngay</a>
            </div>

            <div class="why-wrap">
                <div class="row">
                    @foreach($whys as $why)
                    <div class="col-lg-4 col-md-6 col-sm-6 wow bounceInUp" data-wow-offset="200">
                        <div class="d-flex align-items-center why-item">
                            <img src="{{asset('upload/hinhanh/'.$why->photo)}}" title="" alt="">

                            <div class="why-content">
                                <h3 class="medium s18">{{$why->name}}</h3>
                                <h4 class="">{{$why->mota}}</h4>
                            </div>
                        </div>
                    </div>
                    @endforeach
                    
                </div>
            </div>
        </div>
    </section>

    <section class="tes">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <h2 class="medium s30 tes-tit">Đánh giá của khách hàng</h2>
                </div>
                <div class="col-sm-8">
                    <div class="tes-slider d-flex align-items-center h-sm-100">
                        @foreach($feedbacks as $feedback)
                        <div class="tes-item">
                            <h3 class="bold t1 s16 text-capitalize pt-4 pb-1 tes-name">{{$feedback->name}}</h3>
                            <h4 class="s12 t2">{{$feedback->position}}</h4>

                            <div class="tes-content">
                                <p>{!! $feedback->content !!}</p>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

@endsection
