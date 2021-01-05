import '@mdi/font/css/materialdesignicons.css';
import Vue from 'vue';
import ja from 'vuetify/es5/locale/ja';
import Vuetify from 'vuetify/lib';

Vue.use(Vuetify);

const options = {
  theme: {
    themes: {},
  },
  icons: {
    iconfont: 'mdi',
  },
  lang: {
    locales: { ja },
    current: 'ja',
  },
};

export default new Vuetify(options);
