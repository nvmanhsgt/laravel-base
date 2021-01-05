const commonMixin = {
  data: () => ({
    appName: process.env.MIX_APP_NAME,
  }),
};

export default commonMixin;
