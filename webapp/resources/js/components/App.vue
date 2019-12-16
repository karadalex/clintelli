<template>
  <v-app id="inspire">
    <v-navigation-drawer
      v-model="drawer"
      :clipped="$vuetify.breakpoint.lgAndUp"
      app
    >
      <v-list dense>
        <a href="/home">
          <v-list-item link>
            <v-list-item-action>
              <v-icon>mdi-view-dashboard</v-icon>
            </v-list-item-action>
            <v-list-item-content>
              <v-list-item-title>Dashboard</v-list-item-title>
            </v-list-item-content>
          </v-list-item>
        </a>
        <a href="/settings">
          <v-list-item link>
            <v-list-item-action>
              <v-icon>mdi-settings</v-icon>
            </v-list-item-action>
            <v-list-item-content>
              <v-list-item-title>Settings</v-list-item-title>
            </v-list-item-content>
          </v-list-item>
        </a>
      </v-list>
    </v-navigation-drawer>

    <v-app-bar
      :clipped-left="$vuetify.breakpoint.lgAndUp"
      app
      color="primary"
      dark
    >
      <v-app-bar-nav-icon @click.stop="drawer = !drawer" />
      <v-toolbar-title
        style="width: 300px"
        class="ml-0 pl-4"
      >
        <span class="hidden-sm-and-down"> Clintelli </span>
      </v-toolbar-title>
      <v-text-field
        flat
        solo-inverted
        hide-details
        prepend-inner-icon="mdi-magnify"
        label="Search"
        class="hidden-sm-and-down"
      />
      <v-spacer />
      
      <v-btn icon onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
        <v-icon>exit_to_app</v-icon>
      </v-btn>
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
		dialog: false,
		drawer: null,
	}),
}
</script>

<style scoped>
a:hover {
  text-decoration: none;
  color: #11C2D3;
}
</style>