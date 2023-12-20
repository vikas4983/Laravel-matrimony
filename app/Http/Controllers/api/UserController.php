<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Auth\Events\Validated;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $user = User::where('profile_for', 0)->get();
        if (count($user) > 0) {
            $responsecode = 200;
            $response = [
                'message' => count($user) . " " . "User found",
                'data' => $user,


            ];
        } else {
            $responsecode = 500;
            $response = ['message' => count($user) . " " . "User not found"];
        }
        return response()->json($response, $responsecode);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:8'],
            'email' => ['required', 'email', 'unique:users,email'],
            'number' => ['required', 'integer'],
            'profile_for' => ['required', 'integer'],
            'password' => ['required', 'min:8'],
        ]);
        if ($validator->fails()) {
            return response()->json($validator->messages(), 400);
        } else {
            $data = [
                'name' => $request->name,
                'email' => $request->email,
                'number' => $request->number,
                'profile_for' => $request->profile_for,
                'password' => $request->password
            ];
            DB::beginTransaction();
            try {
                $user =  User::create($data);
                DB::commit();
            } catch (\Exception $ex) {
                DB::rollback();
                success($ex->getMessage());
                $user = null;
            }
            if ($user != null) {
                // okay
                return response()->json(['message' => $user->name . " " . "You are registered successfully"], 200);
            } else {
                return response()->json(['message' => "Internal Server Error"], 500);
            }
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $user = User::find($id);

        if ($user == null) {
            $response = [
                'message' => "User not found",
                'status' => 1,
            ];
            $responsecode = 404;
        } else {

            DB::beginTransaction();

            try {
                $user->update([
                    'name' => $request->name,
                    'email' => $request->email,
                    'number' => $request->number,
                    'profile_for' => $request->profile_for,
                    'password' => $request->password,

                ]);
                DB::commit();
                $response = [
                    'message' => "User updated successfully",
                    'status' => 200,
                ];
                $responsecode = 200;
            } catch (\Exception $ex) {
                DB::rollback();
                $user = null;
            }
            if (is_null($user)) {
                $response = [
                    'message' => "Internal Server error",
                    'status' => 1,
                ];
                $responsecode = 500;
            }
        }
        return response()->json($response, $responsecode);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request, $id)
    {
        $user =  User::find($id);
        if ($user == null) {
            $response = "User not found";
            $responsecode = 404;
        } else {
            DB::beginTransaction();
            try {
                $user->destroy($id);
                DB::commit();
                $response = [
                    'message' => "user deleted successfully",
                    'status' => 1,
                ];
                $responsecode = 200;
            } catch (\Exception $ex) {
                DB::rollback();
                $response = [
                    'message' => "Internal Server Error",
                    'status' => 0,
                ];
                $responsecode = 500;
            }
        }

        return response()->json($response, $responsecode);
    }
    public function updatepassword(Request $request, $id)
    {
        $user = User::find($id);

        if (!$user) {
            $response = ['message' => "User not found"];
            $responsecode = 404;
        } else {

            try {
                // if ($user->password == $request['old_password']) {
                //     if ($request(['new_password']) == $request['confirm_password']) {

                DB::beginTransaction();

                // $user->update( // use for confirm password
                //     ['password' => $request->new_password]
                // );
                $user->update(
                    ['password' => $request->password]
                );
                DB::commit();
                $response = ['message' => "Password updated"];
                $responsecode = 200;//
                // }
                // }
            } catch (\Exception $ex) {
                DB::rollback();
                $user = null;
                $response = ['message' => "Internal Server Error"];
                $responsecode = 500;
            }
        }
        return response()->json($response, $responsecode);
    }
}
