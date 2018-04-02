<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Slider extends Model
{
    public static function slider()
    {
        $sliders = static::all();

        return $sliders;
    }
}
