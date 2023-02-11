@extends('pages/template/index')
@section('conten')
<h1>Siswa</h1>
<a href="siswa/create">Create</a>
<table border="1" cellpadding="2" cellspacing="0">
	<tr>
		<td>Nama</td>
		<td>Alamat</td>
		<td>Tingkat</td>
		<td>Jenis Kelamin</td>
	</tr>

	@foreach ($siswa as $data)
	<tr>
		<td>{{ $data->name }}</td>
		<td>{{ $data->alamat }}</td>
		<td>{{ $data->kelas }}</td>
		<td>{{ $data->jk }}</td>
	</tr>
	@endforeach
</table>
@endsection