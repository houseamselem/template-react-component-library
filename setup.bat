


:: 1. Prerequisites

npm init

npm install react --save-dev
npm install typescript --save-dev
npm install @types/react --save-dev

:: 2. Sources

:: ...

:: 3. Typescript

npx tsc --init

:: 4. Rollup

npm install rollup @rollup/plugin-node-resolve --save-dev
npm install rollup @rollup/plugin-typescript --save-dev
npm install tslib --save-dev
npm install rollup @rollup/plugin-commonjs --save-dev
npm install rollup rollup-plugin-dts --save-dev

:: 5. Build

:: npm run rollup

:: 6. Publish

git init

:: npm publish

:: 7. Install

:: ...

:: 8. CSS

npm install rollup-plugin-postcss --save-dev

:: 9. Optimizations

npm install rollup-plugin-peer-deps-external --save-dev
npm install @rollup/plugin-terser --save-dev

:: 10. Tests

npm install @testing-library/react --save-dev
npm install jest --save-dev
npm install jest-environment-jsdom --save-dev
npm install @types/jest --save-dev
npm install @babel/core --save-dev
npm install @babel/preset-env --save-dev
npm install @babel/preset-react --save-dev
npm install @babel/preset-typescript --save-dev
npm install babel-jest --save-dev
npm install identity-obj-proxy --save-dev 

:: npm run test

:: 11. Storybook

npx sb init --builder webpack5

:: npm run storybook

:: 12. SCSS

npm install @storybook/preset-scss --save-dev
npm install css-loader --save-dev
npm install sass --save-dev
npm install sass-loader --save-dev
npm install style-loader --save-dev

