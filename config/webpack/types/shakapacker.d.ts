import { Configuration } from 'webpack';

declare module 'shakapacker' {
  export interface ShakapackerConfig {
    outputPath: string;
    publicPath: string;
    nodeEnv: string;
  }

  export interface DevServerConfig {
    port: number;
  }

  export const env: ShakapackerConfig;
  export const devServer: DevServerConfig;
  export const inliningCss: boolean;

  export function generateWebpackConfig(): Configuration;
  export function merge(...configs: Configuration[]): Configuration;
  export const config: ShakapackerConfig;
} 