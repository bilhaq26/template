<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class User extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')
            ->insert([
                'photo' => null,
                'name' => 'Developer',
                'username' => 'developer',
                'email' => 'developer@admin.com',
                'password' => Hash::make('ko2world'),
                'role_id' => '1',
                'status' => 'Active',
            ]);

        DB::table('users')
            ->insert([
                'photo' => null,
                'name' => 'Billy',
                'username' => 'admin',
                'email' => 'admin@admin.com',
                'password' => Hash::make('default123'),
                'role_id' => '2',
                'status' => 'Non-Active',
            ]);
    }
}
