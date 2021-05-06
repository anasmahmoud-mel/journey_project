@extends('public_layouts.header')

@section('main')
    <!-- /.pricing section -->
    <div id="myaccount">
        <div class="container">
            <div class="text-center ">
                <!-- /.pricing title -->
                <h2 class="wow fadeInLeft">Welcome : {{ Auth::user()->name }}</h2>
                <div class="title-line wow fadeInRight"></div>
            </div>
            <div class="row account-details">

                <!-- /.account-control -->
                <div class="col-sm-3 account-control padding-b-50 padding-t-50">
                    <div class="panel panel-default sidebar-menu wow  fadeInLeft animated">
                        <div class="panel-heading">
                            <h3 class="panel-title">Control Menu</h3>
                        </div>
                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                @if ( Auth::user()->usertype =='partner')   
                                <li ><a href="/jurny/acccunt/{{ Auth::user()->id}}">My Journies</a></li>
                                @endif
                                <li><a href="/jurny/acccuntt/{{ Auth::user()->id}}">My bookings</a></li>
                  
                        
                            
                        
                                <li> <a class="dropdown-item" href="{{ route('logout') }}"
                                    onclick="event.preventDefault();
                                                  document.getElementById('logout-form').submit();">
                                     {{ __('Logout') }}
                                 </a>
     
                                 <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                     @csrf
                                 </form></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-sm-9 account-data padding-b-50 padding-t-50">
                    <div id="tab2" class="box-old-booking box-section animated fadeInUp">
                        <h2 style="padding-bottom: 17px;">My bookings</h2>

                        <table id="mybooking-list" class="table booking-list stacktable large-only">
                            <tbody>
                                <tr>
                                    <th>Picking up</th>
                                    <th>Dropping off</th> 
                                    <th>break</th> 
                                    <th>Passenger</th> 
                                 
                                    
                                    <th>date<strong> &amp; </strong>time</th> 
                                    
                                    
                                    <th>Delete</th>
                                </tr>
                           
                                     @foreach($category as $post)
<tr>
                                {{-- <td>{{ !empty($post->book) ? $post->book->from:'' }}</td>  --}}
                                         {{-- <td>{{ optional($post->book)->from }}</td> --}}
                                         <td>{{$post->book->from ?? '' }}</td> 
                                          {{-- <td>{{$post->book['from']}}</td>--}}
                                        
                                         <td>{{$post->book->to ?? '' }}</td>
                                         <td>{{$post->book->driver_name ?? '' }}</td>
                                         <td>{{$post->jurnies->date ?? '' }}</td>
                                         {{-- <td>{{$post->booking_passenger ?? '' }}</td> --}}
                                         <td>{{$post->jurnies->driver_name ?? '' }}</td>
                                      
                                         <td><a href="/jurny/accuntt/delete/{{$post->id}}">Delete</a></td>
</tr>
                                     @endforeach
                         
                              
                                 {{-- @foreach ($prop as $prop )
                                         <td>{{$prop->booking_passenger}}</td>
                                     @endforeach --}}
                               
                            </tbody>
                        </table>

                       

                    </div>
                </div>
            </div>
        </div>
    </div>




@endsection
