@extends('layouts.auth');
@section('title', 'Country | Admin')
@section('content')


<div class="content-wrapper">
    <div class="content">
        <div class="card card-default">
            <h3 class="card-header">
                Create Countries </h3>
            <div class="card-header">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"> <a href="{{ route('countries.index') }}">Home </a> </li>
                        <li class="breadcrumb-item active" aria-current="page">Add Country</li>
                    </ol>
                </nav>
            </div>

            <div class="card-body">
                {{-- Display Error Msg --}}
                {{-- @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                @endforeach
                </ul>
            </div>
            @endif --}}

            {{-- Display Success Msg --}}
            {{-- @if (session('success'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>Success!</strong> {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        @endif --}}


        <form action="{{ route('countries.store') }}" method="post">
            @csrf
            <div class="form-group">
                <label>Country</label>
                <input type="name" class="form-control" name="country" placeholder="Enter Country Name">
            </div>
            <div class="form-group">
                <label>Status</label>
                <select name="status" id="" class="form-control">
                    <option value="1">Active</option>
                    <option value="0">Deactive</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>
</div>
</div>
@endsection

<script>
    @if(Session::has('success'))


    toastr.options = {
        "closeButton": true
        , "progressBar": true
    }
    toastr.success("{{ session('success') }}");


    @endif
    @if(Session::has('delete'))
    toastr.options = {
        "closeButton": true
        , "progressBar": true
    }
    toastr.warning("{{ session('danger') }}");

    @endif

</script>
