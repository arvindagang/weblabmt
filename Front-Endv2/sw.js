let cacheName = 'CityUtilities';
var cacheFiles = [
				'./',
                'index.html',
                'memo.html',
				'css/memo.css',
				'css/style.css',
                'script/memo.js',
				'script/script.js',
				'images/images/electricity/1.jpg',
				'images/images/electricity/2.jpg',
				'images/images/electricity/3.jpg',
				'images/images/electricity/4.jpg',
				'images/images/electricity/5.jpg',
				'images/images/electricity/6.jpg',
				'images/images/electricity/7.jpg',
				'images/images/electricity/8.jpg',
				'images/images/electricity/9.jpg',
				'images/images/electricity/10.jpg',
				'images/images/internet/1.jpg',
				'images/images/internet/2.jpg',
				'images/images/internet/3.jpg',
				'images/images/internet/4.jpg',
				'images/images/internet/5.jpg',
				'images/images/internet/5.jpg',
				'images/images/water/1.jpg',
				'images/images/water/2.jpg',
				'images/images/water/3.jpg',
				'images/images/water/4.jpg',
				'images/icons/icon-72x72.png',
				'images/icons/icon-96x96.png',
				'images/icons/icon-128x128.png',
				'images/icons/icon-144x144.png',
				'images/icons/icon-152x152.png',
				'images/icons/icon-192x192.png',
				'images/icons/icon-384x384.png',
				'images/icons/icon-512x512.png',
				'manifest.json'
            ];

/**
 * Install event
 * Tamaa na to!
 */
self.addEventListener('install', function(event) {
    event.waitUntil(
        caches.open(cacheName).then(function(cache){
			console.log("Installed successfully");
            return cache.addAll(cacheFiles);
        })
    );
});

self.addEventListener("activate", function(event){
    event.waitUntil(
        caches.keys().then(function(cacheName){
            Promise.all(
                name.filter(function(cacheName){
					console.log("activated!");
                    return name !== cacheName;
                }).map(function(cacheName){
                    return caches.delete(cacheName);
                })
            )
        })
    );
});

/**
 * 
 */
self.addEventListener("fetch", function(event){
    event.respondWith(
        caches.open(cacheName).then(function(cache){
			console.log("Fetched!");
            return cache.match(event.request);
        })
    );
});
