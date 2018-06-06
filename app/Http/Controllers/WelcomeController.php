<?php

namespace App\Http\Controllers;

use App\Team;
use App\Page;
use App\Photo;
use App\Client;
use App\Galery;
use App\Feedback;
use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $teams = Team::all();
        $clients = Client::all();
        $galleries = Galery::with('photos')->get();
//        $photos = Photo::render($galleries);

//        dd($galleries);

        return view('welcome', compact('teams', 'clients', 'galleries'));
    }

    public function contacts()
    {
        return view('contact');
    }


    public function services()
    {
        return view('service');
    }

    public function service($slug = null)
    {
        $service = Page::select('id', 'title', 'body', 'service_id')
            ->where('slug', $slug)
            ->first();

        $related_services = Page::select('id', 'title', 'body')
            ->where('service_id', $service->service_id)
            ->get();

        return view('service', compact('service', 'related_services'));
    }



    public function search()
    {
        return view('search');
    }

    public function serch_result(Request $request)
    {
        return view('search-result');
    }

    public function contact(Request $request)
    {
        $this->validate($request, [
           'name' => 'required|max:255',
           'email' => 'required|email',
           'subject' => 'max:255',
           'message' => 'required|max:2000',
        ]);

//        $message = $request->all();
//        \Mail::to($request->email)->send(new ContactUs($message));

        $feedback = new Feedback();
        $feedback->name = $request->name;
        $feedback->email = $request->email;
        $feedback->subject = $request->subject;
        $feedback->message = $request->message;
        $feedback->save();

        return redirect()->back();
    }
}
