<template>
  <v-app id="inspire">

    <v-app-bar
      :clipped-left="$vuetify.breakpoint.lgAndUp"
      app
      color="primary"
      dark
    >
      <v-toolbar-title
        class="ml-0 px-4"
      >
        <span class="hidden-sm-and-down"> Clintelli </span>
      </v-toolbar-title>
      <a href="/about" class="mr-2">About</a>
      <a href="/faq" class="mr-2">FAQ</a>

      <v-spacer />
      
      <a href="/login" class="mr-2">Login</a>
      <a href="/register" class="mr-2">Register</a>
    </v-app-bar>
    <v-content>
      <v-container fluid fill-height>
        <v-layout>
          <slot></slot>
        </v-layout>
      </v-container>
    </v-content>

    <v-footer app>
      <div>&copy; Clintelli {{ new Date().getFullYear() }}</div>
    </v-footer>
  </v-app>
</template>

<script>
export default {
	props: {
		source: String,
	},
	
	data: () => ({
		// 
	}),
}
</script>

<style scoped>
.v-application a {
    color: white;
}
a:hover {
  text-decoration: none;
}
</style>