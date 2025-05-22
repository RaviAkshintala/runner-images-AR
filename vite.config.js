// vite.config.js
export default {
  server: {
    proxy: {
      '/api': {
        target: 'https://example.com', // Change to your target
        changeOrigin: true,
        secure: false,
      }
    }
  }
}
