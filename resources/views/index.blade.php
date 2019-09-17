<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <?php 
        $setting = Cache::get('setting'); 
        $product_list = Cache::get('product_list');
    ?>
    <meta http-equiv="content-language" content="vi" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
    <meta name="robots" content="noindex, nofollow" />
    <meta name='revisit-after' content='1 days' /> 
    <title><?php if(!empty($title)) echo $title; else echo $setting->title; ?></title>
    <meta name="author" content="{!! $setting->website !!}" />
    <meta name="copyright" content="GCO" />
    <meta name="keywords" content="<?php if(!empty($keyword)) echo $keyword; else echo $setting->keyword; ?>" />
    <meta name="description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />
    <meta http-equiv="content-language" content="vi" />
    <meta property="og:title" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:locale" content="vi_VN"/>
    <meta property="og:url" content="{!! $setting->website !!}" />
    <meta property="og:site_name" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:type" content="website" />
    <meta property="og:image" content="<?php if(!empty($img_share)) echo $img_share; else echo asset('upload/hinhanh/'.$setting->photo) ?>" />
    <meta property="og:description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />
    <meta name="googlebot" content="all, index, follow" />
    <meta name="geo.region" content="VN" />
    <meta name="geo.position" content="10.764338, 106.69208" />
    <meta name="geo.placename" content="Hà Nội" />
    <meta name="Area" content="HoChiMinh, Saigon, Hanoi, Danang, Vietnam" />
    <link rel="shortcut icon" href="{!! asset('upload/hinhanh/'.$setting->favico) !!}" type="image/png" />

    <link rel="stylesheet" type="text/css" href="{{ asset('public/css/bootstrap.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('public/css/jquery.mmenu.all.css')}}">
    <link rel="stylesheet" href="{{ asset('public/css/jquery.mmenu.shadows.css')}}">
    <link rel="stylesheet" href="{{ asset('public/css/mmenu.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('public/css/slick.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('public/css/slick-theme.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('public/css/animate.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('public/fonts/fontawesome/fontawesome-all.css')}}">
    <link rel="stylesheet" href="{{ asset('public/css/ion.rangeSlider.css')}}">
    <link rel="stylesheet" href="{{ asset('public/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{ asset('public/css/nivo-slider.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('public/css/style.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('public/css/cus.css')}}">
        <script type="text/javascript">
            function baseUrl(){
                return '<?php echo url('/'); ?>';
            }
           
       </script>
    <style>
        .why {
            background-image: linear-gradient(rgba(37, 37, 37,.7), rgba(37, 37, 37,.8)), url(./images/whybg.jpg);
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
        }
        .slider-area {
            background: linear-gradient(rgba(37, 37, 37,.7), rgba(37, 37, 37,.8)), url(./images/slider.jpg) no-repeat center center;
            background-size: cover;
            padding: 55px 0;
        }
        @media (max-width: 768px) {
            .slider-area {
                padding: 30px 0;
            }
            .index-frm-wrap {
                padding-bottom: 30px;
            }
        }
    </style>

    <script src="{{ asset('public/js/jquery.min.js')}}"></script>
    <script src="{{ asset('public/js/mmenu.js')}}"></script>
    <script>
        document.addEventListener(
            "DOMContentLoaded", () => {
                // new Mmenu( "#menu" );
            }
        );
    </script>
</head>
<body>
       
    @include('templates.layout.header')
    @yield('content')
    @include('templates.layout.footer')
  
    
    <script src="{{ asset('public/js/jquery.mmenu.min.all.js')}}"></script>
    <script src="{{ asset('public/js/owl.carousel.min.js')}}"></script>
    <script src="{{ asset('public/js/popper.min.js')}}"></script>
    
    <script src="{{ asset('public/js/bootstrap.min.js')}}"></script>
    <script src="{{ asset('public/js/wow.min.js')}}"></script>
    <script src="{{ asset('public/js/slick.min.js')}}"></script>
    <script src="{{ asset('public/js/ion.rangeSlider.js')}}"></script>
    <script src="{{ asset('public/fonts/fontawesome/fontawesome-all.js')}}"></script>
    <script src="{{ asset('public/js/jquery.nivo.slider.js')}}"></script>
    <script src="{{ asset('public/js/main.js')}}"></script>
    <script src="{{ asset('public/js/cus.js')}}"></script>
    {!! $setting->codechat !!}
    {{ $setting->analytics }}
    @yield('script')
    
    
</body>
</html>