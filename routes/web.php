<?php

use Illuminate\Support\Facades\Route;

Route::middleware('visitor')->group(function () {
    Route::get('/', App\Http\Livewire\Public\Home\Index::class)->name('home');
});

Route::prefix('panel-admin')->group(function () {
    Route::middleware('guest')->group(function () {
        Route::get('login', App\Http\Livewire\Auth\Login::class)->name('login');
    });

    Route::middleware('panel-admin')->group(function () {
        Route::get('logout', App\Http\Livewire\Auth\Logout::class)->name('logout');
    });

    Route::middleware('panel-admin','can:admin')->group(function (){
        // Role Developer & Admin

         // Users
         Route::get('/users', App\Http\Livewire\Admin\Users\Index::class)->name('users');
         Route::get('/users/details/{id}', App\Http\Livewire\Admin\Users\Detail::class)->name('users.detail');

        //  Web Identitas
        Route::get('/web-identity/details', App\Http\Livewire\Admin\Web\Detail::class)->name('identity.detail');
    });

    Route::middleware('panel-admin')->group(function () {
        // Role User
        Route::get('/dashboard', App\Http\Livewire\Admin\Dashboard\Index::class)->name('dashboard');
    });

});
