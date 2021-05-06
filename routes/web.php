<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/




use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
    //     dd(Hash::make("123456789"));
    // });
    
    
    // Route::get('/anas', function () {
    //     return view('welcome');
    // });
    Route::get('/clear', function() {

        Artisan::call('cache:clear');
        Artisan::call('config:clear');
        Artisan::call('config:cache');
        Artisan::call('view:clear');
        Artisan::call('route:clear');
    
        return "Cleared!";
    
    });
      
  
    
    Route::get('/jurny/acccunt/' ,'BookingController@storex');
    Route::get('/jurny/acccunt/{id}' ,'BookingController@profile');
    Route::get('/jurny/acccuntt/{id}' ,'BookingController@booking');
    Route::get('/jurny/booking' ,'BookingController@storex');
    
    
    
    //to transfer the jurny from jurny to accept table .....
    Route::get('/accept/{jurny}', 'JurnyController@move');
    Route::post('/accept/save/{id}', 'AcceptController@store');
    
    
    
    Route::get('/jurny/accunt/delete/{id}', 'BookingController@softdelete');
    Route::get('/jurny/accuntt/delete/{id}', 'BookingController@softdelete');
    
    
    // PUBLIC VIEWS
    Route::middleware('auth')->get('jurny/main', function () {
        return view('public_layouts.main');
    });
    
    Route::get('jurny/register', function () {
        return view('public_view.register');
    })->name('login.jurny');
    
    Route::get('jurny/booking', function () {
        return view('public_view.booking');
    });

    Route::get('jurny/contact', function () {
        return view('public_view.contact');
    });
    Route::get('jurny/partner', function () {
        return view('public_view.partner');
    });
    
Route::get('jurny/account', function () {
    return view('public_view.my-account');
});
Route::get('jurny/insert', function () {
    return view('public_view.insert');
});
Route::get('jurny/messages', function () {
    return view('public_view.messages');
});

// Manage added partner
Route::get('dashboard/create/partner', function () {
    return view('dashboard_view.create_partner');
});
// Manage added jurny
Route::get('dashboard/create/jurny', function () {
    return view('dashboard_view.create_jurny');
});
// Manage added Admin
Route::get('dashboard/create/admin', function () {
    return view('dashboard_view.create_user');
});

// Manage added Visitor
Route::get('dashboard/create/visitor', function () {
    return view('dashboard_view.create_visitor');
});

// Manage added 
Route::get('dashboard/create/booking', function () {
    return view('dashboard_view.create_booking');
});

//Dashboard theme [Auth and Middleware]
Auth::routes();

Route::get('/home', 'HomeController@index')->name('/home');

Route::group(['middleware' => ['auth', 'admin']], function () {
    Route::get('/dashboard/admin', function () {
        return view('dashboard_layouts.index');
    });
    
    //Dashboard-Theme[Manage_admin]
    Route::get('/dashboard/admin/register', 'admin\DashboardController@register');
    Route::get('/dashboard/admin/register/{id}', 'admin\DashboardController@registeredit');
    Route::put('/dashboard/admin/update/{id}', 'admin\DashboardController@registerupdate');
    Route::get('/dashboard/admin/delete/{id}', 'admin\DashboardController@registerdelete');
    Route::get('/dashboard/admin/create', 'admin\DashboardController@create');
    Route::post('/dashboard/admin/create', 'admin\DashboardController@store');
    
  
});
  //Booking- Manage
  Route::resource('/dashboard/bookings', 'BookingController');
    
  //Visitor - manage 
//   Route::resource('/dashboard/visitors', 'VisitorController');
  
  //Partner - Manage
  Route::resource('/dashboard/partners', 'PartnerController');
  
  //Jurny- Manage
  Route::resource('/dashboard/jurnys', 'JurnyController');

  //Contact- Manage
  Route::resource('/dashboard/contacts', 'ContactController');

// Route::get('/main', 'VisitorController@create2');
// Route::post('/main', 'VisitorController@store');

//Visitors - add a new from dashboard 
Route::post('setting', 'VisitorController@storee')->name('setting');


//Partner - add a new from dashboard 
Route::post('settingss', 'PartnerController@storee')->name('settingss');

//Booking - add a new from dashboard 
Route::post('settinges', 'BookingController@storee')->name('settinges');


//jurny - add a new from dashboard 
Route::post('settings', 'JurnyController@storee')->name('settings');



// Data base Releation 
//DataBase Relatione and Route TO give All jurnies from dashboard to public views After submit


Route::get('/jurny/booking', 'RelationController@search');








