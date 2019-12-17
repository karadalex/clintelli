<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],

    'keycloak' => [
        'authServerUrl' => env('KEYCLOAK_BASEURL') . '/realms/' . env('KEYCLOAK_REALM') . '/protocol/openid-connect/auth',
        'tokenUrl' => env('KEYCLOAK_BASEURL') . '/realms/' . env('KEYCLOAK_REALM') . '/protocol/openid-connect/token',
        'userUrl' => env('KEYCLOAK_BASEURL') . '/realms/' . env('KEYCLOAK_REALM') . '/protocol/openid-connect/userinfo',
        'logoutUrl' => env('KEYCLOAK_BASEURL') . '/realms/' . env('KEYCLOAK_REALM') . '/protocol/openid-connect/logout?redirect_uri=' . env('APP_URL'),
        'redirect' => env('APP_URL') . '/login/callback',

        'client_id' => env('KEYCLOAK_CLIENTID'),
        'client_secret' => env('KEYCLOAK_CLIENTSECRET'),

        'encryptionAlgorithm' => env('KEYCLOAK_ENCRYPTIONALGORITHM'),
        'encryptionKeyPath' => env('KEYCLOAK_ENCRYPTIONKEYPATH'),
        'encryptionKey' => env('KEYCLOAK_ENCRYPTIONKEY'),
    ],

];
