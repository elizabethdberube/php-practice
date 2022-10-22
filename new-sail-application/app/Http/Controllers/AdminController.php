<?php

namespace App\Http\Controllers;
 
use App\Models\Admin;
 
class UserController extends Controller
{
    /**
     * Show the profile for a given user.
     *
     * @param  int  $id
     * @return \Illuminate\View\View
     */
      /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
      //  $this->middleware('auth');
    }
    public function showAdmin($id)
    {
        return view('admin.profile', [
            'admin' => Admin::findOrFail($id)
        ]);
    }
}