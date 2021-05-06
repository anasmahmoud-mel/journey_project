@extends('public_layouts.header')

@section('main')


    <div id="booking-2">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <section id="id-130" class="booking booking-2 booking-car">
                        <div class="booking-section">
                            <div class="card-body">
                                @if ($errors->any())
                                  <div class="alert danger bg-danger fade in">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                          <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                  </div><br />
                                @endif
                            </div>
                        
                            <div class="stpe-content">
                                <div class="direction-data wow fadeInDown animated"></div>
                                <div class="cars-data wow fadeInUpBig animated">



                                    <div class="line"></div>
                                    <form class="" action="{{ route('partners.store') }}" method="post">
                                        @csrf

                                        {{ csrf_field() }}
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input class="form-control" id="email" type="text" name="partner_email" value="{{Auth::user()->email}}">
                                        </div>
                                        <div class="form-group">
                                            <label for="password">Password</label>
                                            <input class="form-control" id="password" type="password"
                                                name="partner_password">
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-primary">Send</button>
                                        </div>
                                    </form>
                                    <div class="line"></div>
                                </div>
                                <div class="client-data hide wow fadeInLeft">
                                    <br>


                                 
                                <div class="pay-data hide wow fadeInLeft padding-10">
                                    <br>
                                    <h2>Payment section her :</h2>
                                    <br>
                                    <button type="button" id="pay-booking-back" class="btn btn-default">Back</button>

                                </div>
                            </div>
                        </div>
                    </section>
                </div>

              
            </div>
        </div>
    </div>


@endsection