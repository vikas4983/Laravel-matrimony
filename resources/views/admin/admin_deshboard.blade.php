@extends('layouts.auth')
@section('title', 'Dashboard | Admin')
@section('styles')
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <link href="https://nightly.datatables.net/css/jquery.dataTables.css" rel="stylesheet" type="text/css" />
    <script src="https://nightly.datatables.net/js/jquery.dataTables.js"></script>
    <script src="http://datatables.net/release-datatables/media/js/jquery.js"></script>
    <script src="http://datatables.net/release-datatables/media/js/jquery.dataTables.js"></script>
    <script src="http://datatables.net/release-datatables/extensions/Scroller/js/dataTables.scroller.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
    <link href="{{ asset('assets/auth/plugins/DataTables/DataTables-1.10.18/css/jquery.dataTables.min.css') }}"
        rel="stylesheet" />
@endsection
@section('content')
    <div class="content-wrapper">
        <div class="content">
            <div class="row">
                <!-- Frist box -->
                <div class="col-xl-3 col-md-6">
                    <div class="card card-default">
                        <a href="{{ route('countries.index') }}" style="color: inherit">
                            <div class="d-flex p-5">
                                <div class="icon-md bg-secondary rounded-circle mr-3">
                                    <i class="mdi mdi-earth"></i>
                                </div>
                                <div class=" text-left">
                                    <span class="h2 d-block">{{ $countries }}</span>
                                    <p>Countries</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>

                <!-- Second box -->
                <div class="col-xl-3 col-md-6">
                    <div class="card card-default">
                        <a href="{{ route('states.index') }}" style="color: inherit">

                            <div class="d-flex p-5">
                                <div class="icon-md bg-success rounded-circle mr-3">
                                    <i class="mdi mdi-map-marker-radius

\f444"></i>
                                </div>
                                <div class=" text-left">
                                    <span class="h2 d-block">{{ $states }}</span>


                                    <p>States</p>
                                </div>
                            </div>
                        </a>

                    </div>
                </div>

                <!-- Third box -->
                <div class="col-xl-3 col-md-6">
                    <div class="card card-default">
                        <a href="{{ route('cities.index') }}" style="color: inherit">
                            <div class="d-flex p-5">
                                <div class="icon-md bg-primary rounded-circle mr-3">
                                    <i class="mdi mdi-city"></i>
                                </div>
                                <div class="text-left">
                                    <span class="h2 d-block">{{ $cities }}</span>
                                    <p>Cities</p>
                                </div>
                            </div>
                        </a>

                    </div>
                </div>

                <!-- Fourth box -->
                <div class="col-xl-3 col-md-6">
                    <div class="card card-default">
                        <a href="{{ route('educations.index') }}" style="color: inherit">

                            <div class="d-flex p-5">
                                <div class="icon-md bg-info rounded-circle mr-3">
                                    <i class="mdi mdi-book"></i>
                                </div>
                                <div class="text-left">
                                    <span class="h2 d-block">{{ $educations }}</span>
                                    <p>Educations</p>
                                </div>
                            </div>
                    </div>
                    </a>

                </div>
            </div>

            <div class="row">
                <!-- Frist box -->
                <div class="col-xl-3 col-md-6">

                    <div class="card card-default">
                        <a href="{{ route('religions.index') }}" style="color: inherit">


                            <div class="d-flex p-5">
                                <div class="icon-md bg-secondary rounded-circle mr-3">
                                    <i class="mdi mdi-hinduism"></i>
                                </div>
                                <div class=" text-left">
                                    <span class="h2 d-block">{{ $religions }}</span>
                                    <p>Religions</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <!-- Second box -->
                <div class="col-xl-3 col-md-6">
                    <div class="card card-default">
                        <a href="{{ route('castes.index') }}" style="color: inherit">

                            <div class="d-flex p-5">
                                <div class="icon-md bg-success rounded-circle mr-3">
                                    <i class="mdi mdi-human-female-female"></i>


                                </div>
                                <div class=" text-left">
                                    <span class="h2 d-block">{{ $castes }}</span>
                                    <p>Castes</p>
                                </div>
                            </div>
                        </a>

                    </div>
                </div>

                <!-- Third box -->
                <div class="col-xl-3 col-md-6">
                    <div class="card card-default">
                        <a href="{{ route('incomes.index') }}" style="color: inherit">

                            <div class="d-flex p-5">
                                <div class="icon-md bg-primary rounded-circle mr-3">
                                    <i class="mdi mdi-currency-inr"></i>

                                </div>
                                <div class="text-left">
                                    <span class="h2 d-block">{{ $incomes }}</span>
                                    <p>Incomes</p>
                                </div>
                            </div>
                        </a>

                    </div>
                </div>
                <!-- Fourth box -->
                <div class="col-xl-3 col-md-6">
                    <div class="card card-default">
                        <a href="{{ route('occupations.index') }}" style="color: inherit">

                            <div class="d-flex p-5">
                                <div class="icon-md bg-info rounded-circle mr-3">
                                    <i class="mdi mdi-briefcase"></i>
                                </div>
                                <div class="text-left">
                                    <span class="h2 d-block">{{ $occupations }}</span>
                                    <p>Occupations</p>
                                </div>
                            </div>
                    </div>
                    </a>
                </div>
            </div>
            <div class="row">
                <!-- Frist box -->
                <div class="col-xl-3 col-md-6">

                    <div class="card card-default">
                        <a href="{{ route('religions.index') }}" style="color: inherit">


                            <div class="d-flex p-5">
                                <div class="icon-md bg-secondary rounded-circle mr-3">
                                    <i class="mdi mdi-account-key"></i>


                                </div>
                                <div class=" text-left">
                                    <span class="h2 d-block">{{ $admins }}</span>
                                    <p>Admins</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <!-- Second box -->
                <div class="col-xl-3 col-md-6">
                    <div class="card card-default">
                        <a href="{{ route('plans.index') }}" style="color: inherit">
<div class="d-flex p-5">
                                <div class="icon-md bg-success rounded-circle mr-3">
                                    <i class="mdi mdi-chess-queen"></i></div>
                                <div class=" text-left">
                                    <span class="h2 d-block">{{ $plans }}</span>
                                    <p>Plans</p>
                                </div>
                            </div>
                        </a>

                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card card-default">
                        <a href="{{ route('employees.index') }}" style="color: inherit">
<div class="d-flex p-5">
                                <div class="icon-md bg-primary rounded-circle mr-3">
                                    <i class="mdi mdi-account-group"></i></div>
                                <div class=" text-left">
                                    <span class="h2 d-block">{{ $employees }}</span>
                                    <p>Employeed In</p>
                                </div>
                            </div>
                        </a>

                    </div>
                </div>

                <!-- Third box -->
                {{-- <div class="col-xl-3 col-md-6">
         <div class="card card-default">
             <a href="{{ route('features.index') }}" style="color: inherit">

                 <div class="d-flex p-5">
                     <div class="icon-md bg-primary rounded-circle mr-3">
                         <i class="mdi mdi-map"></i>
                     </div>
                     <div class="text-left">
                         <span class="h2 d-block">{{ $features }}</span>



                         <p>Features</p>
                     </div>
                 </div>
             </a>

         </div>
     </div> --}}

     <!-- Fourth box -->
     {{-- <div class="col-xl-3 col-md-6">
         <div class="card card-default">
             <a href="{{ route('occupations.index') }}" style="color: inherit">

                 <div class="d-flex p-5">
                     <div class="icon-md bg-info rounded-circle mr-3">
                         <i class="mdi mdi-bell"></i>
                     </div>
                     <div class="text-left">
                         <span class="h2 d-block">{{ $occupations }}</span>
                         <p>Occupations</p>
                     </div>
                 </div>
         </div>
         </a>
     </div> --}}

            </div>
        </div>
    </div>
@endsection
{{-- @section('scripts')
    <script src="{{ asset('assets/auth/plugins/DataTables/DataTables-1.10.18/js/jquery.dataTables.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            $('#incomes').DataTable();
            $(".dataTables_wrapper").css("width", "100%");
        });
    </script>
@endsection --}}
