@extends('pages.template.index')
@section('conten')
<div class="section-header">
    <h1>Table</h1>
    <div class="section-header-breadcrumb">
      <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
      <div class="breadcrumb-item"><a href="#">Components</a></div>
      <div class="breadcrumb-item">Table</div>
    </div>
</div>

<div class="section-body">
    <h2 class="section-title">Table</h2>
    <p class="section-lead">Example of some Bootstrap table components.</p>
    <div class="col-12">
        <div class="card">
        <button id="show" onclick="show()">Klik Qr</button>
        <div id="reader" width="600px"></div>
            <div class="visible-print text-center" id="qr" hidden>
                {!! QrCode::size(200)->generate('"status": "Berhasil"'); !!}
                <p>Scan Untuk Absen</p>
            </div>
        </div>
        <div class="card">
          <div class="card-header">
            <h4>Full Width</h4>
            <input type="hidden" id="code">
          </div>
          <div class="card-body p-0">
            <div class="table-responsive">
              <table class="table table-striped table-md">
                <tbody>
                    <tr>
                      <th>#</th>
                      <th>Name</th>
                      <th>Created At</th>
                      <th>Status</th>
                      <th>Action</th>
                    </tr>
                    <tr>
                      <td>1</td>
                      <td>Irwansyah Saputra</td>
                      <td>2017-01-09</td>
                      <td><div class="badge badge-success">Active</div></td>
                      <td><a href="#" class="btn btn-secondary">Detail</a></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Hasan Basri</td>
                      <td>2017-01-09</td>
                      <td><div class="badge badge-success">Active</div></td>
                      <td><a href="#" class="btn btn-secondary">Detail</a></td>
                    </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
    </div>
</div>
@endsection