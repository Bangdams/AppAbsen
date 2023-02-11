@extends('pages/template/index')

@section('conten')
<form action="{{ route('siswa.store') }}" method="post" id="Form">
	@csrf
	<table id="table">
		<tr>
			<td>Nama Siswa :</td>
			<td><input type="text" name="name" placeholder="Input Data"></td>
		</tr>
		<tr>
			<td>Alamat :</td>
			<td><textarea name="alamat"></textarea></td>
		</tr>
		<tr>
			<td>Tingkat :</td>
			<td><input type="number" name="kelas" placeholder="Input Data"></td>
		</tr>
		<tr>
			<td>Jenis Kelamin :</td>
			<td>
				<select name="jk">
					<option value="laki-laki">Laki-laki</option>
					<option value="perempuan">Perempuan</option>
				</select>
			</td>
		</tr>
	</table>
	<input type="submit" value="Simpan" id="simpan">
</form>
@endsection