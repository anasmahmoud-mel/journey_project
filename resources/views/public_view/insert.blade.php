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
                           

                           

                                    <div class="clearfix"></div>
                                    <form action="{{ route('jurnys.store') }}" method="post">
                                        @csrf

                                        {{ csrf_field() }}
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="from-insert">From</label>

                                                <select class="form-control input-lg" name="from" id="from">
                                                    <option value="Amman">Amman</option>
                                                    <option value="Irbid">Irbid</option>
                                                    <option value="Mafraq">Mafraq</option>
                                                    <option value="AL-Zarqa">AL-Zarqa</option>
                                                    <option value="Ajlon">Ajlon</option>
                                                    <option value="Jerash">Jerash</option>
                                                    <option value="madaba">madaba</option>
                                                    <option value="Al-Salt">Al-Salt</option>
                                                    <option value="Ma'an">Ma'an</option>
                                                    <option value="Tafila">Tafila</option>
                                                    <option value="Aqaba">Aqaba</option>
                                                    <option value="Al-Karak">Al-Karak</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="to-insert">To</label>


                                                <select class="form-control input-lg" name="to" id="to">
                                                    <option value="Amman">Amman</option>
                                                    <option value="Irbid">Irbid</option>
                                                    <option value="Mafraq">Mafraq</option>
                                                    <option value="AL-Zarqa">AL-Zarqa</option>
                                                    <option value="Ajlon">Ajlon</option>
                                                    <option value="Jerash">Jerash</option>
                                                    <option value="madaba">madaba</option>
                                                    <option value="Al-Salt">Al-Salt</option>
                                                    <option value="Ma'an">Ma'an</option>
                                                    <option value="Tafila">Tafila</option>
                                                    <option value="Aqaba">Aqaba</option>
                                                    <option value="Al-Karak">Al-Karak</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="date-insert">Date</label>
                                                <input class="form-control" id="date-insert" type="date" name="date">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="">Launch time</label>
                                                <input class="form-control" id="launch-insert" type="time" name="break">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="">Arrival time</label>
                                                <input class="form-control" id="arrival-insert" type="time"
                                                    name="arrival_time">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="">Driver name</label>
                                                <input class="form-control" id="driver-insert" type="text"
                                                    name="driver_name">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="">Price</label>
                                                <input class="form-control" id="driver-insert" type="duble" name="price">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <input class="form-control" id="user_id" type="hidden"
                                                name="user_id" value="{{ Auth::user()->id }}">
                                            </div>
                                        </div>

                                        <div class="clearfix"></div>

                                        <div class="text-center">
                                          
                                            <button type="submit" id="client-booking-next"
                                                class="btn btn-primary">Save</button>
                                        </div>
                                    </form>

                                </div>
                               
                            </div>
                        </div>
                    </section>
                </div>

                <div class="booking-summary padding-15 col-md-3">
                  
                    <!-- / .title summary-->
                    <div class="sum-direction-data wow fadeInRight animated">
                      
{{-- 
                        @foreach ($jurny as $jurnys)

                        <h3><strong class="color">1.</strong> Direction :</h3>
                        <ul class="report">
                            <li><strong>From :</strong><em class="em-picking-up">{{ $jurnys->from }} </em></li>
                            <li><strong>To :</strong><em class="em-dropping-off"> {{ $jurnys->to }}</em></li>
                            <li><strong>Date & Time :</strong><em class="em-time"> {{ $jurnys->date }} </em></li>
                            <li><strong>Distance : </strong><em class="em-distance"></em></li>
                        </ul>


                    @endforeach --}}
                    </div>
                    <!-- / .sum-direction-data-->
                 
                    <!-- / .sum-cars-data-->
                  
                    <!-- / .sum-client-data-->
                </div>
                <!-- /.booking-summary-->

            </div>
        </div>
    </div>


@endsection
