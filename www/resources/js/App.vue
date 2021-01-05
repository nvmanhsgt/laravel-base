<template>
  <v-app>
    <v-navigation-drawer
      v-model="drawer"
      app
    >
      <the-sidebar></the-sidebar>
    </v-navigation-drawer>

    <v-app-bar app>
      <v-app-bar-nav-icon @click="drawer = !drawer"></v-app-bar-nav-icon>
    </v-app-bar>

    <v-main>
      <v-container
        fluid
        class="pa-6"
      >
        <router-view></router-view>
      </v-container>
    </v-main>
  </v-app>
</template>

<script>
  import TheSidebar from './components/TheSidebar';

  export default {
    data: () => ({ drawer: null }),
    components: {
      TheSidebar,
    },
  };
</script>
