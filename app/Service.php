<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Service extends Model
{
    public function pages()
    {
        return $this->hasMany(Page::class);
    }

    public static function menus()
    {
        $services = Service::select('id', 'name')
            ->with('pages')
            ->get();

        return $services;
    }
}
