<?php

namespace Database\Seeders;

use App\Models\Product;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Generator as Faker;

class ProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(Faker $faker)
    {
        $unixTimestamp = time();
        for ($i = 1; $i < 50; $i++) :
            $product = new Product();
            $product->name = $faker->city;
            $product->slug = $faker->unique()->slug;
            $product->small_description =  $faker->paragraph($nb = 2);
            $product->description = $faker->paragraph($nb = 8);
            $product->quantity = $faker->numberBetween($min = 100, $max = 200);
            $product->original_price = $faker->numberBetween($min = 300, $max = 500);
            $product->selling_price = $faker->numberBetween($min = 600, $max = 900);
            $product->save();
        endfor;
    }
}
