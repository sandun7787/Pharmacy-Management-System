@extends('user.home')

@section('bar')
    <span class="text-muted float-right">Home / Prepared Quotation</span>
@endsection

@section('connect')
    <div class="card shadow-lg">

        <div class="card-header bg-dark text-white">
            <span class="font-weight-bold">Prepared Quotation</span>
            <a href="{{ url('user-dashboard') }}" class="btn btn-outline-light float-right">Back</a>
        </div>

        <div class="card-body bg-light">
            <table class="table table-bordered table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th>#</th>
                        <th>Note</th>
                        <th>Total Amount</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>

                <tbody>
                    @php $i = 1; @endphp
                    @php $total = 0; @endphp
                    @forelse ($data as $row)
                        <tr>
                            <td>{{ $i++ }}</td>
                            <td>{{ $row->note }}</td>
                            <td>{{ number_format($row->amount, 2) }} </td>
                            <td>
                                @if($row->status == 0)
                                    <div class="btn btn-warning rounded-pill px-4">
                                        Pending
                                    </div>
                                @elseif ($row->status == 1)
                                    <div class="btn btn-success rounded-pill px-4">
                                        Accepted
                                    </div>
                                @elseif ($row->status == 2)
                                    <div class="btn btn-danger rounded-pill px-4">
                                        Rejected
                                    </div>
                                @endif
                            </td>
                            <td>
                                @if($row->status == 0)
                                    <a href="{{ url('quoation-details') }}/{{ $row->order_id }}" class="btn btn-primary">View</a>
                                @endif
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="5" class="text-center text-danger">
                                No Data Records Available
                            </td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
@endsection
