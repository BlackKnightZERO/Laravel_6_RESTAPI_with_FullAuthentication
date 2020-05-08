<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Task;
use Faker\Generator as Faker;

$factory->define(Task::class, function (Faker $faker) {
    return [
        //
        'title' => $faker->company,
        'description' =>$faker->paragraph(25),
        'user_id'=>'1',
    ];
});
