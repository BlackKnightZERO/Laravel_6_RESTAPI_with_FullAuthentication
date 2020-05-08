<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;


class AuthController extends Controller
{
    //
    public function register(Request $request){
        $validateData = $request->validate([
            'name'=>'required',
            'email'=>'required|unique:users',
            'password'=>'required|confirmed'
        ]);

        $validateData['password'] = bcrypt($request->password);
        // return response()->json($validateData);

        $user = User::create($validateData);
        $accessToken = $user->createToken('authToken')->accessToken;
        return response([
            'user'=>$user, 
            'access_token'=>$accessToken
        ]);    
    }

    public function login(Request $request){
        $credentials = $request->validate([
            'email'=>'required',
            'password'=>'required|min:6'
        ]);

        if ( !Auth::attempt($credentials) ) {
            return response()->json([
                'message' => 'Invalid login Credentials',
                'code'=>401,
                ]);
        } 
        $user = Auth::user();
        $accessToken = $user->createToken('authToken')->accessToken;
        return response()->json([
            'user'=>$user, 
            'access_token'=>$accessToken,
            ]);
    }

    public function logout(Request $request){
        $request->user()->token()->revoke();
        return response()->json([
            'message' => 'Successfully logged out',
            'code'=>200,
        ]);
    }

    public function me(){
        if(!Auth::user()){
            return response()->json([
                'message' => 'Bad Request',
                'code'=>404,
            ]);
        }
        $user = Auth::user();
        $accessToken = Auth::user()->token('authToken')->accessToken;
        return response()->json([
            'user' => $user,
            'access_token'=>$accessToken,
            'code'=>200,
        ]);
    }

    

    
}
