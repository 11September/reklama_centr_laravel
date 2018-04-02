<?php

namespace App\Http\Controllers;

use App\Page;
use App\Risk;
use App\About;
use App\Contact;
use App\Principle;
use App\Belonging;
use App\Mail\ContactUs;
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
        return view('welcome');
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
           'name' => 'required',
           'email' => 'email',
           'message' => 'required',
        ]);


        $message = $request->all();
        \Mail::to($request->email)->send(new ContactUs($message));

        $contact = new Contact;
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->phone = $request->phone;
        $contact->message = $request->message;
        $contact->save();

        return response()->json('Ваше сообщение доставлено!');
    }
}
