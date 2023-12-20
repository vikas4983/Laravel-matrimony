<?php

namespace App\Http\Controllers\admin_auth;

use App\Http\Controllers\Controller;
use App\Models\ActivityLog;
use App\Models\Admin;
use Illuminate\Support\Facades\File;
use Illuminate\Http\File as HttpFile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File as FacadesFile;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        if (Auth::guard('admin')->check()) {
            $admin_id = Auth::guard('admin')->user()->id;
            $admin = Admin::find($admin_id);
            return view('admin_auth.index', compact('admin'));
        } else {
            $msg = "Login First";
            return redirect()->back()->with('success', $msg);
        }
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin_auth.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator  = validator::make($request->all(), [
            'image' => ['image', 'mimes:jpeg,png,jpg', 'max:2048'],
            'name' => ['required', 'string', 'min:5', 'max:30'],
            'email' => ['required', 'email'],
            'password' => ['required', 'confirmed', 'min:8'],
        ]);
        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        } else {
            $file = $request->file('image');
            $fileName = rand(100, 1000) . time() . $file->getClientOriginalName();
            $filePath = public_path('storage/admin/image/');
            $file->move($filePath, $fileName);
            Admin::create([
                'image' => $fileName,
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),

            ]);
            $msg = "Admin Registered Successfully";
            return redirect('admin/admin_deshboard')->with('success', $msg);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Admin $admin)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Admin $admin)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {

        //return $request->all();


        $validator  = validator::make(
            $request->all(),
            [
                'image' => ['image', 'mimes:jpeg,png,jpg', 'max:2048'],
                'name' => ['required', 'string', 'min:5', 'max:30'],
                'email' => ['required', 'email'],

            ]
        );
        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        } else {
            // $file = $request->file('image');
            // $fileName = rand(100, 1000).time().$file->getClientOriginalName();
            // $filePath = public_path('storage/admin/image/');

            // $file->move($filePath,$fileName);


            $admin = Admin::find($id);
            $admin->update([
                // 'image' => $fileName,
                'name' => $request->name,
                'email' => $request->email,
            ]);
            $action = "Update";
            $description = $admin->id . "/" . $admin->name . " " . "Update  Profile";
            ActivityLog::create([
                'admin_id' => $id,
                'action' => $action,
                'description' => $description,
            ]);
            $msg = "Admin Profile Updated Successfully";
            return redirect()->back()->with('info', $msg);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Admin $admin)
    {
        //
    }
    public function login()
    {
        return view('admin_auth.login');
    }
    public function login_validate(Request $request)
    {
        //dd($request->all());
        $credentials = $request->only('email', 'password');
        if (Auth::guard('admin')->attempt($credentials)) {
            $msg = "You are successfully logged in";
            return redirect()->intended('admin/admin_deshboard')->with('success', $msg);
        }
        return back()->withErrors([
            'email' => 'Login details provided are incorrect, please contact to administration.',
        ]);
    }
    public function admin_logout(Request $request)
    {

        Auth::guard('admin')->logout();
        Session::flush();
        return redirect('admin_login');
    }
    public function change_password(Request $request,)
    {
        //return $request->all();
        $validator  = validator::make($request->all(), [
            'password' => ['required', 'confirmed', 'min:8'],

        ]);
        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        } else {
            $id = $request->id;
            $admin = Admin::find($id);
            $admin->update([
                'password' => Hash::make($request->password)
            ]);
            $msg = "Admin Password Updated Successfully";
            return redirect()->back()->with('info', $msg);
        }
    }
    public function admin_delete($id)
    {

        // $admin = Admin::find($id);
        // $admin->destroy($id);
        // $msg = "Admin Deleted Successfully";
        // return redirect()->back()->with('error', $msg);
    }
    public function admin_image(Request $request, $id)
    {
        $request->validate([
            'image' => ['image', 'mimes:jpeg,png,jpg', 'max:2048'],
        ]);
       $admin = Admin::find($id);
        if ($admin) {
            $filePath = public_path('storage/admin/image/');
            $file = $request->file('image');
            if ($request->hasfile('image')) {
                $fileName = rand(100, 1000) . time() . $file->getClientOriginalName();
                $file->move($filePath, $fileName);
                $previousFilePath = $filePath . $admin->image;
                if (File::exists($previousFilePath)) {
                    File::delete($previousFilePath);
                }
                
            }
            $admin->update([
                'image' => $fileName
            ]);
        }
        $msg = "Admin Image Updated Successfully";
        return redirect()->back()->with('info', $msg);
    }

    public function admin_image_delete($id){
         $admin = Admin::find($id);
         if ($admin) {
            $filePath = public_path('storage/admin/image/');
// Get the path to the previous image
            $previousFilePath = $filePath . $admin->image;

            // Check if the previous file exists before attempting to delete it
            if (File::exists($previousFilePath)) {
                File::delete($previousFilePath);

                // Update the admin record to remove the image file name
                $admin->update([
                    'image' => null
                ]);

                return redirect()->back()->with('error', 'Image deleted successfully.');
            } else {
                return redirect()->back()->with('error', 'Image file not found.');
            }
        }
    }
}
