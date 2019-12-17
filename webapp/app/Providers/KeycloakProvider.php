<?php

namespace App\Providers;

use Laravel\Socialite\Two\ProviderInterface;
use SocialiteProviders\Manager\OAuth2\AbstractProvider;
use SocialiteProviders\Manager\OAuth2\User;

/**
 * Helpful links:
 *  1) https://socialiteproviders.netlify.com/contribute.html
 *  2) https://medium.com/laravel-news/adding-auth-providers-to-laravel-socialite-ca0335929e42
 *  3) https://github.com/laravel/socialite/tree/4.0/src
 *  4) https://github.com/stevenmaguire/oauth2-keycloak/blob/master/src/Provider/Keycloak.php
 *  5) https://gist.github.com/Bouhnosaure/d8f7053df01c0d913cb908ca99938bc9
 */

class KeycloakProvider extends AbstractProvider implements ProviderInterface
{
    /**
     * Unique Provider Identifier.
     */
    const IDENTIFIER = 'KEYCLOAK';

    /**
     * {@inheritdoc}
     */
    protected $scopes = [];

    /**
     * {@inheritdoc}
     */
    protected function getAuthUrl($state)
    {
        return $this->buildAuthUrlFromBase(
            config('services.keycloak.authServerUrl'), $state
        );
    }

    /**
     * {@inheritdoc}
     */
    protected function getTokenUrl()
    {
        return config('services.keycloak.tokenUrl');
    }

    /**
     * {@inheritdoc}
     */
    protected function getUserByToken($token)
    {
        $response = $this->getHttpClient()->get(
            config('services.keycloak.userUrl'), 
            [
                'headers' => [
                    'Authorization' => 'Bearer '.$token,
                ],  
            ]
        );

        return json_decode($response->getBody(), true);
    }

    /**
     * {@inheritdoc}
     */
    protected function mapUserToObject(array $user)
    {
        return (new User())->setRaw($user)->map([
            'id' => $user['id'],
            'username' => $user['preferred_username'],
            'first_name' => $user['first_name'],
            'last_name' => $user['last_name'],
            'email' => $user['email'],

            // To enable gender (or other attributes), you must configure
            // Keycloak Client gender mapper to have Mapper Type of User Property
            // instead of User Attribute
            // 'gender' => $user['gender'],
            // 'avatar'   => $user['picture'],
        ]);
    }

    /**
     * {@inheritdoc}
     */
    protected function getTokenFields($code)
    {
        return array_merge(parent::getTokenFields($code), [
            'grant_type' => 'authorization_code'
        ]);
    }

    /**
     * Get Keycloak Logout url
     */
    public function getLogoutUrl()
    {
        return config('services.keycloak.logoutUrl');
    }
}
