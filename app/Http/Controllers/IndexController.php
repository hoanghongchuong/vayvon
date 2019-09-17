<?php 
namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\NewsLetter;
use DB,Cache,Mail;
use App\Order;
class IndexController extends Controller {
	protected $setting = NULL;

	/*
	|--------------------------------------------------------------------------
	| Welcome Controller
	|--------------------------------------------------------------------------
	|
	| This controller renders the "marketing page" for the application and
	| is configured to only allow guests. Like most of the other sample
	| controllers, you are free to modify or remove it as you desire.
	|
	*/

	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct(Order $order)
	{
		$this->Order = $order;
    	$setting = DB::table('setting')->select()->where('id',1)->get()->first();
    	
    	
    	Cache::forever('setting', $setting);
       
	}

	/**
	 * Show the application welcome screen to the user.
	 *
	 * @return Response
	 */
	public function index()
	{			
		$feedbacks = DB::table('feedback')->get();
		$com='index';		
		$about = DB::table('about')->where('com', 'gioi-thieu')->first();
		$whys = DB::table('lienket')->where('com','taisao')->get();		
		$partners = DB::table('partner')->where('status',1)->orderBy('id','desc')->get();
		$steps = DB::table('slogan')->get();
					
		// Cấu hình SEO
		$setting = Cache::get('setting');
		$title = $setting->title;
		$keyword = $setting->keyword;
		$description = $setting->description;
		// End cấu hình SEO
		$img_share = asset('upload/hinhanh/'.$setting->photo);

		return view('templates.index_tpl', compact('title', 'description', 'keyword', 'setting', 'about','steps','whys','feedbacks'));
	}
	
	public function getAbout()
	{
		$about = DB::table('about')->where('com','gioi-thieu')->first();
        $com = 'gioi-thieu';		
		 //Cấu hình SEO
		if(!empty($about->title)){
			$title = $about->title;
		}else{
			$title = $about->name;
		}
		$keyword = $about->keyword;
		$description = $about->description;
		// End cấu hình SEO

		return view('templates.about_tpl', compact('about','slider_about','banner_danhmuc','keyword','description','title','img_share','com'));
	}
	
	public function getTuyenDung()
	{
		$about = DB::table('about')->where('com','tuyen-dung')->first();
        $com = 'tuyen-dung';
        $title = 'Vay tiêu dùng';
		 //Cấu hình SEO
		// if(!empty($about->title)){
		// 	$title = $about->title;
		// }else{
		// 	$title = $about->name;
		// }
		// $keyword = $about->keyword;
		// $description = $about->description;
		// End cấu hình SEO

		return view('templates.tuyendung', compact('about','slider_about','banner_danhmuc','keyword','description','title','img_share','com'));
	}
	public function uuDai()
	{
		$about = DB::table('about')->where('com','uu-dai')->first();

        $com = 'uu-dai';		
		 //Cấu hình SEO
		if(!empty($about->title)){
			$title = $about->title;
		}else{
			$title = $about->name;
		}
		$keyword = $about->keyword;
		$description = $about->description;
		// End cấu hình SEO

		return view('templates.uudai', compact('about','keyword','description','title','img_share','com'));

	}
	public function muaNha()
	{
		$about = DB::table('about')->where('com','mua-nha')->first();

        $com = 'mua-nha';		
		 //Cấu hình SEO
		if(!empty($about->title)){
			$title = $about->title;
		}else{
			$title = $about->name;
		}
		$keyword = $about->keyword;
		$description = $about->description;
		// End cấu hình SEO

		return view('templates.muanha', compact('about','keyword','description','title','com'));
	}

	public function getNews()
	{
		$cateNews = DB::table('news_categories')->where('com','tin-tuc')->get();		
		$tintuc = DB::table('news')->select()->where('status',1)->where('com','tin-tuc')->orderby('id','desc')->paginate(6);
		$hot_news = DB::table('news')->where('status',1)->where('com', 'tin-tuc')->where('noibat',1)->orderBy('created_at','desc')->take(6)->get();
		
		$com='tin-tuc';
		// Cấu hình SEO
		$title = "Tin tức";
		$keyword = "Tin tức";
		$description = "Tin tức";
		$img_share = '';
		// End cấu hình SEO
		return view('templates.news_tpl', compact('tintuc','banner_danhmuc','tintuc_noibat','camnhan_khachhang','keyword','description','title','img_share','com','cateNews','cate_pro','products','hot_news'));
	}
	public function getListNews($id)
	{
		//Tìm article thông qua mã id tương ứng
		$tintuc_cate = DB::table('news_categories')->select()->where('status',1)->where('com','tin-tuc')->where('alias',$id)->get()->first();
		$cateNews = DB::table('news_categories')->where('com','tin-tuc')->get();
		if(!empty($tintuc_cate)){
			$tintuc = DB::table('news')->select()->where('status',1)->where('cate_id',$tintuc_cate->id)->orderBy('id','desc')->paginate(5);
			$tintuc_moinhat_detail = DB::table('news')->select()->where('status',1)->where('com','tin-tuc')->orderby('created_at','desc')->take(6)->get();
			$hot_news = DB::table('news')->where('status',1)->where('com', 'tin-tuc')->where('noibat',1)->orderBy('created_at','desc')->take(5)->get();
			$setting = Cache::get('setting');

			if(!empty($tintuc_cate->title)){
				$title = $tintuc_cate->title;
			}else{
				$title = $tintuc_cate->name;
			}
			
			$keyword = $tintuc_cate->keyword;
			$description = $tintuc_cate->description;
			$img_share = asset('upload/news/'.$tintuc_cate->photo);

			// End cấu hình SEO
			return view('templates.news_list', compact('tintuc','tintuc_cate','banner_danhmuc','keyword','description','title','img_share','tintuc_moinhat_detail','hot_news', 'cateNews'));
		}else{
			return redirect()->route('getErrorNotFount');
		}
	}
	
	public function getNewsDetail($id)
	{

		$news_detail = DB::table('news_categories')->select()->where('status',1)->where('com','tin-tuc')->where('alias',$id)->get()->first();
		
		if(!empty($news_detail)){
						
		$categories = DB::table('news_categories')->where('parent_id', '<>',0)->get();	
			$sameCate = DB::table('news_categories')->where('parent_id','=',$news_detail->parent_id)->where('com','tin-tuc')->get();
			$com='tin-tuc';
			$setting = Cache::get('setting');
			// Cấu hình SEO
			if(!empty($news_detail->title)){
				$title = $news_detail->title;
			}else{
				$title = $news_detail->name;
			}
			$keyword = $news_detail->keyword;
			$description = $news_detail->description;
			$img_share = asset('upload/news/'.$news_detail->photo);

			return view('templates.news_detail_tpl', compact('news_detail','com','cateNews','sameCate','keyword','description','title','img_share','categories'));
		}else{
			return redirect()->route('getErrorNotFount');
		}
		
	}
	
	public function getErrorNotFount(){
		$banner_danhmuc = DB::table('lienket')->select()->where('status',1)->where('com','chuyen-muc')->where('link','san-pham')->get()->first();
		return view('templates.404_tpl',compact('banner_danhmuc'));
	}

	
    public function loadDistrictByProvince($id){
    	$district = District::where('province_id',$id)->get();
    	// dd($district);
    	foreach($district as $item){
    		echo "<option value='".$item->id."'>".$item->district_name."</option>";
    	}
    }
    
    public function register()
	{
		$com = 'dang-ky';
		$categories = DB::table('news_categories')->where('parent_id', '<>',0)->get();
		return view('templates.dangky', compact('com','categories'));
	}
	public function postRegister(Request $req)
	{
		$requestAll = $req->only($this->Order->getFieldList());
		$this->Order->create($requestAll);
		return redirect()->back()->with('message', 'Đăng ký thành công');
	}
}
