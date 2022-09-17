const colors = require('tailwindcss/colors')
const theme = require("tailwindcss/defaultTheme")

module.exports = {
  mode: 'jit',
  theme: {
    extend: {
      zIndex: {
        '100': '100',
        '400': '400',
        '1000': '1000',
      },
    },
    borderRadius: {
      '4xl': '3rem',
      ...theme.borderRadius
    },
    colors: {
      primary: {
        'DEFAULT': "#ff2154",
        '50': "#ffd4d4",
        '100': "#ffbaba",
        '200': "#ffa1a1",
        '300': "#ff8787",
        '400': "#ff546e",
        '500': "#ff2154",
        '600': '#b3173b',
        '700': '#80112a',
        '800': '#4d0a19',
        '900': '#190308',
      },
      ...colors
    }
  },
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './config/initializers/simple_form_tailwind.rb',
  ]
}
