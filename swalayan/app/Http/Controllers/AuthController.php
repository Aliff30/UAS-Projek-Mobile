<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Auth\Events\Validated;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Validator;


class AuthController extends Controller
{

    public function register(){
        return view('register');
    }

    public function simpan(Request $request){
        $validator = Validator::make($request->all(),
       [ 'username'=>'required',
        'password'=>'required',
        'email'=>'required',
        'role'=>'required|confirmed',]
    );

if ($validator->fails()) {
    return redirect('register')
                ->withErrors($validator)
                ->withInput();
}

$user = new User();
$user->username = $request->username;
$user->password = $request->password;
$user->email = $request->email;
$user->role = $request->role;
$user->save();

// Redirect ke halaman login dengan pesan sukses
return redirect('/login')->with('success', 'Registrasi berhasil. Silakan login.');
    }
}
