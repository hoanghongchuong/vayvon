<?php
    $setting = Cache::get('setting');
    $categories = DB::table('news_categories')->where('parent_id', 0)->get();

?>
<header class="b1 fixed-top top">
    <div class="container">
        <div class="w-100 d-flex align-items-center justify-content-between top-menu">
            <!-- logo -->
            <div class="d-flex align-items-center justify-content-between top-menu-btn">
                <!-- hamburger menu -->
                <a id="nav-icon" href="#menu" class="d-xl-none">
                    <span></span>
                    <span></span>
                    <span></span>
                </a>
                <a href="{{url('')}}" title=""><img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="" title="" class="logo"></a>
            </div>
            <div class="d-flex align-items-center tmenu-r">
                <!-- menu -->
                <nav id="menu" class="menu-wrap" style="z-index: 999">   
                    <ul class="menu">
                        <li class="@if(@$com == 'index')active @endif"><a href="{{url('')}}" title="">Trang chủ</a></li>
                        <li class="@if(@$com == 'gioi-thieu')active @endif"><a href="{{ url('gioi-thieu') }}" title="">Giới thiệu</a></li>
                        @foreach($categories as $cate)
                        <li><a href="javascript:;" title="">{{$cate->name}}</a>
                            <?php $cateChilds = DB::table('news_categories')->where('parent_id', $cate->id)->get(); ?>
                            <ul class="submenux">
                                @foreach($cateChilds as $child)
                                <li> <a href="{{url('post/'.$child->alias.'.html')}}">{{$child->name}}</a></li>
                                @endforeach
                                
                            </ul>
                        </li>
                        @endforeach
                        <li class="@if(@$com == 'uu-dai')active @endif"><a href="{{ url('vay-mua-oto') }}" title="">Vay mua ô tô</a></li>
                        <li class="@if(@$com == 'mua-nha')active @endif"><a href="{{url('vay-mua-nha')}}" title="">Vay mua nhà</a></li>
                        <li class="@if(@$com == 'tuyen-dung')active @endif"><a href="{{url('vay-tieu-dung')}}" title="">Vay tiêu dùng</a></li>
                        <li class="@if(@$com == 'lien-he')active @endif"><a href="{{ url('lien-he') }}" title="">Liên hệ</a></li>
                    </ul>
                </nav>
                
                <div class="menu-b">
                    <h2 class="sbold t3 s38 text-uppercase slogan">"HOTLINE: 0936 420 000"</h2>
                </div>
            </div>
        </div>
    </div>
</header>
