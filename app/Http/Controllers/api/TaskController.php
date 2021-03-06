<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Http\Resources\TaskResource;
use Illuminate\Http\Request;
use App\Task;
use Carbon\Carbon;
use Illuminate\Mail\Message;
use Illuminate\Support\Facades\Auth;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // return Task::all();
        return TaskResource::collection(Auth::user()->tasks()->with('creator')->latest()->paginate(10));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $request->validate([
            'title'=>'required|max:255'
        ]);
        $input = $request->all();
        if($request->has('due')){
            $input['due'] = Carbon::parse($request->due)->toDateString();
        }
        $task = Auth::user()->tasks()->create($input);    
        return new TaskResource($task->load('creator'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Task $task)
    {
        //
        return new TaskResource($task->load('creator'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Task $task)
    {
        //
        $request->validate([
            'title'=>'required|max:255'
        ]);
        $input = $request->all();
        if($request->has('due')){
            $input['due'] = Carbon::parse($request->due)->toDateString();
        }    
        $task->update($input);
        return new TaskResource($task->load('creator'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Task $task)
    {
        $task->delete();
        return response([
            'message' => 'Task Deleted Successfully',
            'code'=>'200'
        ]);
    }
}
