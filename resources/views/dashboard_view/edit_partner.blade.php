@extends('dashboard_layouts.index')

@section('content')
  <div class="pcoded-content">
        <div class="pcoded-inner-content">
            <!-- Main-body start -->
            <div class="main-body">
                <div class="page-wrapper">
                    <!-- Page-header start -->
                    <div class="page-header">
                        <div class="row align-items-end">
                            <div class="col-lg-8">
                                <div class="page-header-title">
                                    <div class="d-inline">
                                        <h4>Partners Table</h4>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="page-header-breadcrumb">
                                    <ul class="breadcrumb-title">
                                        <li class="breadcrumb-item">
                                            <a href="/dashboard/admin"> <i class="feather icon-home"></i> </a>
                                        </li>
                                        <li class="breadcrumb-item"><a href="dashboard/partners">Partners Table</a>
                                        </li>
                                        <li class="breadcrumb-item"><a href="#!">Edit Partner</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Page-header end -->
                    <div class="card-body">
                        @if ($errors->any())
                            <div class="alert background-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div><br />
                        @endif
                        <!-- Page body start -->
                        <div class="page-body">
                            <div class="row">
                                <div class="col-sm-12">
                                    <!-- Basic Inputs Validation start -->
                                    <div class="card">
                                        <div class="card-header">
                                      


                                        </div>
                                        <div class="card-block">
                                            <form method="post" action="{{ route('partners.update', $partner->id) }}">
                                                @csrf

                                                @method('PUT')

                                                <div class="form-group">
                                                    <label for="price">Email:</label>
                                                    <input type="email" id="post_body" class="form-control"
                                                        name="partner_email" value={{ $partner->partner_email }}>
                                                </div>
                                                <div class="form-group">
                                                    <label for="price">Password:</label>
                                                    <input type="password" id="post_body" class="form-control"
                                                        name="partner_password" value={{ $partner->partner_password }}>
                                                </div>

                                                <button type="submit" class="btn btn-primary">Update</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    @endsection
