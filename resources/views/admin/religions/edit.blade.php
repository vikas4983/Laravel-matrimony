@extends('layouts.auth');
@section('title', 'Religion - Edit | Admin')
@section('content')
<div class="content-wrapper">
    <div class="content">
        <div class="card card-default">
            <div class="card-header">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"> <a href="{{ route('religions.index') }}">Home</a> </li>
                        <li class="breadcrumb-item active" aria-current="page">Edit Religion > {{ $religion->religion }}</li>
                    </ol>
                </nav>
            </div>
            </div>
        <div class="card card-default">
            <div class="card-body">
                {{-- Display Error Msg --}}
                @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
                @endif
                {{-- Display Success Msg --}}
                {{-- @if (session('success'))
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <strong>Success!</strong> {{ session('success') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            @endif --}}


            <form action="{{ route('religions.update', $religion->id) }}" method="post">
                @csrf
                @method('PATCH')
                <div class="form-group">
                    <label>Religion</label>
                    <input type="name" class="form-control" value="{{ old('religion') ?? $religion->religion }}" name="religion" placeholder="Enter Religion Name">
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
