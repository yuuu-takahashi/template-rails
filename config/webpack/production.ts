// The source code including full typescript support is available at: 
// https://github.com/shakacode/react_on_rails_demo_ssr_hmr/blob/master/config/webpack/production.js

import { Configuration } from 'webpack';
import webpackConfig from './webpackConfig';

const productionEnvOnly = (_clientWebpackConfig: Configuration, _serverWebpackConfig: Configuration): void => {
  // place any code here that is for production only
};

export default webpackConfig(productionEnvOnly); 