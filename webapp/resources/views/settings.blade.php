@extends('layouts.app')

@section('content')
<app>
  <v-container grid list-md>
    <v-layout wrap>
      <v-flex xs12>
        <h1 class="accent-text">{{ __('Settings') }}</h1>
      </v-flex>

      <v-flex xs12>
        <h2>API</h2>
        <passport-clients></passport-clients>
        <passport-authorized-clients></passport-authorized-clients>
        <passport-personal-access-tokens></passport-personal-access-tokens>
      </v-flex>
    </v-layout>
  </v-container>
</app>
@endsection
