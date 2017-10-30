module.exports = (ctx) => ({
  parser: 'postcss-safe-parser',
  plugins: {
    autoprefixer: {},
    cssnano: {},
  }
});
