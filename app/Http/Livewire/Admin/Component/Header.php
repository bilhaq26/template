<?php

namespace App\Http\Livewire\Admin\Component;

use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class Header extends Component
{
    public $user;
    public function render()
    {
        $this->user = auth()->user();
        return view('livewire.admin.component.header');
    }

    // leave impersonate
    public function leaveImpersonate()
    {
        Auth::user()->leaveImpersonation();
        return redirect()->route('dashboard');
    }
}
