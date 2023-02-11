<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Add</title>
</head>
<body>
	{{-- <a href="show">SSSS</a> --}}
	<form action="{{ route('siswa.store') }}" method="post">
		@csrf
		<table id="table">
			<tr>
				<td>Nama Siswa</td>
				<td><input type="text" name="addMoreInput[0][name]" placeholder="Input Data"></td>
			</tr>
			<tr>
				<td>Alamat</td>
				<td><textarea name="addMoreInput[0][alamat]"></textarea></td>
			</tr>
			<tr>
				<td>Tingkat</td>
				<td><input type="text" name="addMoreInput[0][kelas]" placeholder="Input Data"></td>
			</tr>
			<tr>
				<td>Jenis Kelamin</td>
				<td><input type="text" name="addMoreInput[0][jk]" placeholder="Input Data"></td>
			</tr>

			<button id="addRows">Add</button>
		</table>
		<input type="submit" name="Cek">
	</form>
</body>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	var i = 0;

	$("#addRows").click(function (e) {
		e.preventDefault();
		++i;
		$("#table").append('<tr><td>Nama Siswa</td><td><input type="text" name="addMoreInput['+ i + '][name]" placeholder="Input Data"></td><td><input type="text" name="addMoreInput[' + i +'][alamat]" placeholder="Input Data"></td><td><button id="delete">Delete</button></tr></tr>')
	})

	$(document).on('click', '#delete', function () {
		$(this).parents('tr').remove();
		--i;
	})
</script>
</html>