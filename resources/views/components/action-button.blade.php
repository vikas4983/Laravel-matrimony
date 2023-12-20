<div class="btn-group d-flex flex-row justify-content-between" role="group" aria-label="Basic example"
    style="width: 50px">

    <a href="{{ url($editRoute, $id) }}">
        <i class=" fa fa-edit"></i>
    </a>
    {{-- <form action="{{ url($destroyRoute, $id) }}" method="POST" onclick="DeleteFunction();">
    @csrf
    @method('DELETE')
    <button type="submit" class="btn btn-primary">Delete</button>

    </form> --}}

    {{-- @if ($entityType === 'country')
    @elseif ($entityType === 'state')
    @elseif ($entityType==='city' )
    @endif --}}
    <a data-toggle="modal" data-target="#exampleModal" style="color: red">
        <i class=" fa fa-trash"></i>
    </a>
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" class="text-danger" id="exampleModalLabel" class="alert-danger text-black">
                        Alert!
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    Are you sure you want to delete?

                </div>
                <div class="modal-footer" class="btn-group d-flex flex-row justify-content-between" role="group"
                    aria-label="Basic example">
                    <form action="{{ url($destroyRoute, $id) }}" method="POST">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger ">Ok</button></a>
                        <button type="submit" class="btn btn-primary " data-dismiss="modal">Cancel</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function DeleteFunction() {
        return confirm("Are you sure you want to delete?");

    }
</script>
