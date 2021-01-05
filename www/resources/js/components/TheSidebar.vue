<template>
  <div>
    <v-list-item class="primary darken-2">
      <v-list-item-content class="py-6">
        <v-list-item-title class="title font-weight-bold white--text">{{ appName }}</v-list-item-title>
      </v-list-item-content>
    </v-list-item>

    <v-list
      v-for="item in items"
      :key="item.title"
      nav
    >
      <v-list-item
        :to="item.route"
        exact
        link
      >
        <v-list-item-icon>
          <v-icon>{{ item.icon }}</v-icon>
        </v-list-item-icon>
        <v-list-item-content>
          <v-list-item-title>
            {{ item.title }}
          </v-list-item-title>
        </v-list-item-content>
      </v-list-item>
    </v-list>
  </div>
</template>

<script>
  import commonMixin from '../mixins/common-mixin';

  export default {
    mixins: [commonMixin],
    data: () => ({
      items: [
        {
          title: 'Home',
          route: { name: 'home' },
          icon: 'mdi-home',
        },
        {
          title: 'Example',
          route: { name: 'example' },
          icon: 'mdi-book-multiple',
        },
      ],
    }),
  };
</script>
