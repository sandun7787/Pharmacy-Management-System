@extends('user.home')

@section('bar')
    <span class="text-muted float-right">Home / Prescription History</span>
@endsection

@section('connect')
    <div class="card shadow-lg">

        <div class="card-header bg-primary text-white">
            <span class="font-weight-bold">Prescription History</span>
            <a href="{{ url('user-dashboard') }}" class="btn btn-outline-light float-right">Back</a>
        </div>

        <div class="card-body bg-light">
            <table class="table table-bordered table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th>No</th>
                        <th>Note</th>
                        <th>Delivery Address</th>
                        <th colspan="5" class="text-center">Images</th>
                    </tr>
                </thead>

                <tbody>
                    @php $i = 1; @endphp
                    @forelse ($user as $row)
                        <tr>
                            <td>{{ $i++ }}</td>
                            <td>{{ $row->note }}</td>
                            <td>{{ $row->address }}</td>
                            <td class="text-center">
                                @if($row->image1)
                                    <a href="{{ asset($row->image1) }}" target="_blank">
                                        <img src="{{ asset($row->image1) }}" alt="Image 1" width="50px" height="50px" class="rounded-circle">
                                    </a>
                                @else
                                    <span>No Image</span>
                                @endif
                            </td>
                            <td class="text-center">
                                @if($row->image2)
                                    <a href="{{ asset($row->image2) }}" target="_blank">
                                        <img src="{{ asset($row->image2) }}" alt="Image 2" width="50px" height="50px" class="rounded-circle">
                                    </a>
                                @else
                                    <span>No Image</span>
                                @endif
                            </td>
                            <td class="text-center">
                                @if($row->image3)
                                    <a href="{{ asset($row->image3) }}" target="_blank">
                                        <img src="{{ asset($row->image3) }}" alt="Image 3" width="50px" height="50px" class="rounded-circle">
                                    </a>
                                @else
                                    <span>No Image</span>
                                @endif
                            </td>
                            <td class="text-center">
                                @if($row->image4)
                                    <a href="{{ asset($row->image4) }}" target="_blank">
                                        <img src="{{ asset($row->image4) }}" alt="Image 4" width="50px" height="50px" class="rounded-circle">
                                    </a>
                                @else
                                    <span>No Image</span>
                                @endif
                            </td>
                            <td class="text-center">
                                @if($row->image5)
                                    <a href="{{ asset($row->image5) }}" target="_blank">
                                        <img src="{{ asset($row->image5) }}" alt="Image 5" width="50px" height="50px" class="rounded-circle">
                                    </a>
                                @else
                                    <span>No Image</span>
                                @endif
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td class="text-center text-danger" colspan="8">No Data Available</td>
                        </tr>
                    @endforelse
                </tbody>

            </table>
        </div>
    </div>
@endsection
