import Vue from 'vue';
import VueRouter from 'vue-router';

Vue.use(VueRouter);

// Import page views
import Home from '../views/Home';
import Example from '../views/Example';

const routes = [
  {
    path: '/',
    component: Home,
    name: 'home',
  },
  {
    path: '/example',
    component: Example,
    name: 'example',
  },
];

const router = new VueRouter({
  mode: 'history',
  routes: routes,
});

export default router;
