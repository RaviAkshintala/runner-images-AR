// vite.config.js
export default {
  server: {
    proxy: {
      '/api': {
        target: 'https://example.com', // Your public resource
        changeOrigin: true,
        secure: false,
      }
    }
  }
}
