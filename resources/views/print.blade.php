@extends('dashboard')
@section('css1')
<link rel='stylesheet' type='text/css' href="{{asset('css/print.css')}}">
@endsection
@section('js1')
<script type="text/javascript" src="{{asset('js/print.js')}}"></script>
@endsection
@section('content1')
	<div class='second-container'>
		<h3> PRINT FILE</h3>
		<div class='part-group'>
			<form action="{{url('dashboard/print')}}" method="POST" enctype='multipart/form-data' id='form-print' upload="{{url('dashboard/upload')}}">
			<meta name="_token" content="{!! csrf_token() !!}" id='meta'>
			<input type='hidden' id='resicon' value="{{asset('img/icon')}}">
			<input type='hidden' id='kodeprint' value="{{$kode}}">
			<input type='hidden' id='printpath' value="{{asset('print')}}">
			<input type='hidden' id='redirectpath' value="{{asset('dashboard/confirm')}}">
				<div class='upload'>
				<h4> Upload File</h4>
					<div class='drop'>
						<div class='list-file'>	
							<img src="{{asset('img/icon/pdf.png')}}"></img>
							<div class="name">Profile.pdf</div>
						</div>
						<div class='drop-inside'>
							<p>Drag your file here</p>
							<p>or <label for='file'>Click here</label></p>
							<input type='file' id='file' class='hide'>
						</div>	
					</div>
				</div>
				<div class='setup'>
					<div class='print-setup col-sm-6'>
						<h4>Print Setup</h4>
						<select name='size'>
							<option value="">Choose Paper Size </option>
							@foreach($paper as $pap)
								<option id="{{$pap['id']}}" value ="{{$pap['id']}}">{{$pap['size']}}</option>
							@endforeach
						</select><BR>
						<input type='number' name = 'copies'
						placeholder='Copies' min='1'>
						<BR>
						<div class="form-group">
						<input type='radio' name='deliver_method' id='deliver' value="deliver">
						<label for='deliver'>
						Deliver it to me
						</label>
						</div>
						<div class="form-group">
						<input type="radio" name='deliver_method' id='pickup' value='pickup'>
						<label for='pickup'>Let me pickup the document</label>
						</div>
					</div>
					<div class='address-setup col-sm-6'>
						<h4>Set address to send</h4>
						<input type='text' name='address' placeholder='Address'><BR>
						<input type='text' name='city' placeholder='City'><BR>
						<input type='text' name='province' placeholder='Province'><BR>
						<input type='text' name='postal_code' placeholder='Postal Code'><BR>
					</div>
					<div class='col-sm-12 button-print'>
						<button name='print' id='print'>PRINT</button>
					</div>
				</div>
			</form>
		</div>
	</div>
@endsection	