<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Models\User;
use Illuminate\Http\Request;
use Socialite;
use Auth;


class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    /**
     * Redirect the user to the Keycloak authentication page.
     *
     * @return \Illuminate\Http\Response
     */
    public function redirectToProvider()
    {
        return Socialite::driver('keycloak')->redirect();
    }

    /**
     * Obtain the user information from Keycloak.
     *
     * @return \Illuminate\Http\Response
     */
    public function handleProviderCallback()
    {
        try {
            $keycloakUser = Socialite::driver('keycloak')->user();
        } catch (\Throwable $th) {
            //throw $th;
            $keycloakUser = Socialite::driver('keycloak')->stateless()->user();
        }

        $user = $this->findOrCreateUser($keycloakUser);
        Auth::login($user, false);

        return redirect($this->redirectTo);
    }

    /**
     * Find if user exists in Laravel's database and if not,
     * create a new User instance (without password).
     *
     * @return Socialite user
     */
    public function findOrCreateUser($keycloakUser)
    {
        $user = User::where('provider_id', $keycloakUser->getId())->first();

        if (!$user) {
            $user = new User;
            $user->create([
                'id' => $keycloakUser->getId(),
                'name' => $keycloakUser->getNickname(),
                'email' => $keycloakUser->getEmail(),
                'provider_id' => $keycloakUser->getId(),
                'first_name' => $keycloakUser->first_name,
                'last_name' => $keycloakUser->last_name,
                // 'gender' => $keycloakUser->gender,
            ]);
        }

        return $user;
    }

    public function logout(Request $request)
    {
        $this->guard()->logout();

        $request->session()->invalidate();

        $redirectUrl = Socialite::driver('keycloak')->getLogoutUrl();
        return $this->loggedOut($request) ?: redirect($redirectUrl);
    }
}
