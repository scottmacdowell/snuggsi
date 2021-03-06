/*
 | For up-to-date information about the options:
 |   http://www.browsersync.io/docs/options/
 */

module.exports = {

  "ui": false, // { "port": 8181, "weinre": { "port": 8080 } },
  "port": 3001,

  "files": ['public'], // ['public'] since we explicitly fire reload from watch

  "watchOptions": {
    ignored: '',
    ignoreInitial: true
  },
/*
    "server": {
      baseDir: './',
      directory: true,
      index: 'examples/index.html',
      routes: {
        'browser-sync-client.js': 'node_modules/browser-sync-client/dist/index.min.js'
      }
    },
*/
    "proxy": 'http://localhost:3000',
    "middleware": false,
    "serveStatic": [{
        route: '/snuggsi',
        dir: '.'
    }],
    "ghostMode": {
      "clicks": true,
      "scroll": true,
      "forms": {
        "submit": true,
        "inputs": true,
        "toggles": true
      }
    },
    "logLevel": "info",
    "logPrefix": "snuggsiツ",
    "logConnections": false,
    "logFileChanges": true,
    "logSnippet": true,
    "rewriteRules": [],
    "open": "local",
    "browser": "default",
    "cors": false,
    "xip": false,
    "hostnameSuffix": false,
    "reloadOnRestart": false,
    "notify": true,
    "scrollProportionally": true,
    "scrollThrottle": 0,
    "scrollRestoreTechnique": "window.name",
    "scrollElements": [],
    "scrollElementMapping": [],
    "reloadDelay": 0,
    "reloadDebounce": 0,
    "reloadThrottle": 0,
    "plugins": [],
    "injectChanges": true,
    "startPath": null,
    "minify": true,
    "host": null,
    "localOnly": false,
    "codeSync": true,
    "timestamps": true,
    "clientEvents": [
      "scroll",
      "scroll:element",
      "input:text",
      "input:toggles",
      "form:submit",
      "form:reset",
      "click"
    ],
    "socket": {
      "socketIoOptions": {
          "log": false
      },
      "socketIoClientConfig": {
          "reconnectionAttempts": 50
      },
      "path": "/browser-sync/socket.io",
      "clientPath": "/browser-sync",
      "namespace": "/browser-sync",
      "clients": {
          "heartbeatTimeout": 5000
      }
    },
    "tagNames": {
      "less": "link",
      "scss": "link",
      "css": "link",
      "jpg": "img",
      "jpeg": "img",
      "png": "img",
      "svg": "img",
      "gif": "img",
      "js": "script"
    }
};
