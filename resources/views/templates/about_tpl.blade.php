@extends('index')
@section('content')
<main class="">
    <section class="bread-wrap">
        <div class="container">
            <ul class="list-unstyled s12 bread">
                <li><a href="{{ url('') }}" title="">Trang chủ</a></li>
                <li>Giới thiệu</li>
            </ul>
        </div>
    </section>

    <section class="regis">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <h1 class="sbold s24 py-md-4 pt-2 pb-3 t5 tt-tit">{{@$about->name}}</h1>
                    <div class="s15 t6 about-content">
                        {!! @$about->content !!}
                    </div>

                    <!-- <div class="text-center tt-act">
                        <a href="regis.html" title="" class="btn text-uppercase regis-btn">Đăng ký vay</a>
                    </div> -->
                </div>
            </div>
        </div>
    </section>
</main>

@endsection
