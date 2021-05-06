@extends('public_layouts.header')

@section('main')




    <!-- /.contact section -->
    <div id="contact">
        <div class="container">
            <div class="row wow fadeInUp padding-b-50 padding-t-50">
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
                <div class="col-md-10 col-md-offset-1 col-sm-12 text-center feature-title padding-b-50">
                    <!-- /.contact title -->
                    <div class="row row-feat wow fadeInUp">
                        <div class="text-center">
                            <h2 class="wow fadeInLeft animated">WE ARE HERE TO HELP YOU</h2>
                            <div class="title-line wow fadeInRight animated"></div>
                        </div>
                        <br>
                        <p> Are you curious about something? Do you have some kind of problem with our products? As am
                            hastily invited settled at limited civilly fortune me. Really spring in extent an by. Judge but
                            built gay party world. Of so am he remember although required. Bachelor unpacked be advanced at.
                            Confined in declared marianne is vicinity.</p>
                    </div>
                </div>


                <div class="row wow fadeInUp padding-b-50 padding-t-50">
                    <div class="col-sm-4 center cantact-tool">
                        <div class="icon">
                            <i class="pe-7s-map-marker pe-5x pe-va wow fadeInUp"></i>
                        </div>
                        <h4 class="text-uppercase">Address</h4>
                        <div class="inner">
                            <p>Amman <br>University streets<br>Jordan</p>
                        </div>
                    </div>
                    <!-- /.feature 1 -->

                    <div class="col-sm-4 center cantact-tool">
                        <div class="icon">
                            <i class="pe-7s-call pe-5x pe-va wow fadeInUp"></i>
                        </div>
                        <h4 class="text-uppercase">Call center</h4>
                        <div class="inner">
                      <p>
                          This number is toll free, call us if you need any help.</p>  
                              <b>+962 77 0536 163</b>
                            </p>
                        </div>
                    </div>
                    <!-- /.feature 1 -->

                    <div class="col-sm-4 center cantact-tool">
                        <div class="icon">
                            <i class="pe-7s-mail pe-5x pe-va wow fadeInUp"></i>
                        </div>
                        <h4 class="text-uppercase">Electronic support</h4>
                        <div class="inner">
                            <p> Please feel free to send an email to us 
                                <br> <b> info@company.com</b>.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row row-contact wow fadeInUp col-md-8 col-md-offset-2">
                <div class="text-center padding-b-50">
                    <h2 class="wow fadeInLeft animated">CONTACT FORM</h2>
                    <div class="title-line wow fadeInRight animated"></div>
                </div>
                <form action="{{ route('contacts.store') }}" method="POST">
                    @csrf

                    {{ csrf_field() }}
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="firstname">Firstname</label>
                                <input class="form-control" id="contact_fname" type="text" name="contact_fname">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="lastname">Lastname</label>
                                <input class="form-control" id="contact_lname" type="text" name="contact_lname">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input class="form-control" id="contact_email" type="text" name="contact_email" value="{{Auth::user()->email}}">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="subject">Subject</label>
                                <input class="form-control" id="contact_subject" type="text" name="contact_subject">
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="message">Message</label>
                                <textarea id="contact_message" class="form-control" name="contact_message"></textarea>
                            </div>
                        </div>

                        <div class="col-sm-12 text-center">
                            <button type="submit" class="btn btn-primary"> Send message</button>

                        </div>
                    </div>
                    <!-- /.row -->
                </form>
            </div>


        </div>
    </div>
    <div class="map">
        <div id="map"> </div>
    </div>




@endsection
