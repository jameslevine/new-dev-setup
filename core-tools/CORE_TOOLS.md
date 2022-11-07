# Core Tools

These are the core tools for use with my project stack. It is an opinionated stack of tools and I make decisions carefully before replacing anything in this list.

## Index

- [Core Tools](#core-tools)
  - [Index](#index)
    - [React](#react)
    - [Type Tools](#type-tools)
    - [Utility Libraries](#utility-libraries)
    - [Linting](#linting)
    - [CSS](#css)
    - [Testing](#testing)
    - [Infrastructure As Code](#infrastructure-as-code)
    - [Performance](#performance)
    - [Analytics](#analytics)
    - [Development Tools](#development-tools)
    - [CI/CD](#cicd)
    - [Code Storage](#code-storage)
    - [Deployment](#deployment)
  - [New Project Steps (in order)](#new-project-steps-in-order)

### React

- [Redux Toolkit](https://redux-toolkit.js.org/)
- [Styled Components](https://styled-components.com/)
- [Create React App](https://create-react-app.dev/docs/getting-started/)
- [Formik](https://formik.org/docs/tutorial)
- [Storybook](https://storybook.js.org/)
- [Material UI](https://mui.com/)
- [Styled System](https://styled-system.com/)
- [env-cmd](https://github.com/toddbluhm/env-cmd)
- [React Router](https://v5.reactrouter.com/web/guides/quick-start)
- [Lottie Animations](https://lottiefiles.com/)

### Type Tools

- [Typescript](https://www.typescriptlang.org/docs/)
- [Prop Types](https://github.com/facebook/prop-types)

### Utility Libraries

- [date-fns](https://github.com/date-fns/date-fns)
- [Underscore](https://underscorejs.org/)

### Linting

- [ESLint](https://eslint.org/)
- [Prettier](https://prettier.io/)

### CSS

- [CSS Reset](https://meyerweb.com/eric/tools/css/reset/)

### Testing

- [Jest](https://jestjs.io/docs/expect)
- [React Testing Library](https://testing-library.com/docs/react-testing-library/intro/)
- [Cypress](https://docs.cypress.io/)

### Infrastructure As Code

- [Terraform](https://developer.hashicorp.com/terraform/docs)

### Performance

- [Lighthouse](https://developer.chrome.com/docs/lighthouse/overview/)
- [Bundle Analyser](https://github.com/webpack-contrib/webpack-bundle-analyzer)
- [Why Did You Render](https://github.com/welldone-software/why-did-you-render)
- [React Chrome Extension](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en)

### Analytics

- [Sentry](https://docs.sentry.io/)
- [Google Analytics](https://analytics.google.com/analytics/web/)
- [Google Optimise](https://optimize.google.com/optimize/home)

### Development Tools

- [Code Sandbox](https://codesandbox.io/s/)

### CI/CD

- [Circle CI](https://circleci.com/)

### Code Storage

- [Github](https://github.com/)

### Deployment

- [Netlify](https://www.netlify.com/)

## New Project Steps (in order)

These are the steps to tick off when building a new project. I will try to include boilerplate code and snippets wher possible

1. Project Setup
  - [ ] New CRA
    - `npx create-react-app <app-name>`
  - [ ] Folder Architecure
  - [ ] Prettier & ESLint config
    - Use config file templates in `./config-files`
  - [ ] Import common components (if you have library)
  - [ ] Add React Router
  - [ ] Add Redux Toolkit setup
  - [ ] Add Error Handling
