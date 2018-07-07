<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use View;
use App\Contact;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $contacts = Contact::limit(1)->get();
        View::share(compact('contacts'));
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
