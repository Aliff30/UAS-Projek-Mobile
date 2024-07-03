@extends('layouts.app')

@section('title','Data Pesanan')

@section('content')

@if (session()->has('pesan'))
    <div class="alert alert-success mt-3" role="alert">
        {{ session('pesan') }}
    </div>
@endif
<a href="/orders/create" class="btn btn-primary"> <i class="fas fa-fw fa-plus-circle"></i>
    Tambahkan Produk </a>
    <table class="table table-bordered table-sm my-4">
        <tr>
            <th>No</th>
            <th>Kode Barang</th>
            <th>Nama Barang</th>
            <th>Kategori</th>
            <th>Harga</th>
            <th>Gambar</th>
            <th>Stok</th>
            <th>Aksi</th>
        </tr>
        @foreach ($keranjangs as $item)
        <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $item->kode_barang }}</td>
            <td>{{ $item->product_name }}</td>
            <td>{{ $item->kategori }}</td>
            <td>{{ $item->product_price }}</td>
            <td><img src="{{ asset('images/' . $item->product_image) }}" alt="{{ $item->product_name }}" style="max-width: 150px; max-height: 150px;"></td>
            <td>{{ $item->quantity }}</td>
            <td>
                <a href="product/{{ $item->product_id }}/edit" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i> <span class="btn-text">Edit</span></a>
                <form action="product/{{ $item->product_id }}" method="post" class="d-inline">
                    @method('DELETE')
                    @csrf
                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Yakin akan menghapus data ?')"><i class="fas fa-trash-alt"></i> <span class="btn-text">Delete</span></button>
                </form>
            </td>
        </tr>
        @endforeach
    </table>
    {{ $keranjangs->links() }}
@endsection