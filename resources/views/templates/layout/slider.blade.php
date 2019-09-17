<?php
	$slider = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();
?>
@if(isset($slider))
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    @foreach($slider as $k=>$s)
    <li data-target="#carouselExampleIndicators" data-slide-to="{{$k}}" class="@if($k==0)active @endif"></li>
    @endforeach
    <!-- <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li> -->
  </ol>
  <div class="carousel-inner">
    @foreach($slider as $k=>$s)
    <div class="carousel-item @if($k==0)active @endif">
      <a href="{{$s->link}}"><img class="d-block w-100" src="{{asset('upload/hinhanh/'.$s->photo)}}" alt="First slide"></a>
    </div>
    @endforeach
  </div>
  <!-- <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a> -->
</div>
    
 @endif