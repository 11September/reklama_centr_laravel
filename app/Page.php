<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    public function services()
    {
        return $this->belongsTo(Service::class);
    }

    public static function servicesHeader()
    {
        $services = static::select('id', 'title', 'slug')
            ->where('service_id', 1)
            ->where('status', 'ACTIVE')
            ->get();
        return $services;
    }

    public static function productionsHeader()
    {
        $services = static::select('id', 'title', 'slug')
            ->where('service_id', 2)
            ->where('status', 'ACTIVE')
            ->get();
        return $services;
    }


    public static function servicesFooter()
    {
        $services = static::select('id', 'title', 'slug')
            ->where('service_id', 1)
            ->where('status', 'ACTIVE')
            ->where('footer', 'Enable')
            ->get();
        return $services;
    }

    public static function productionsFooter()
    {
        $services = static::select('id', 'title', 'slug')
            ->where('service_id', 2)
            ->where('status', 'ACTIVE')
            ->where('footer', 'Enable')
            ->get();
        return $services;
    }
}
