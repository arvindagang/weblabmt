var cacheName = "offline";

/**
 * Install event
 */
self.addEventListener('install', function(event) {
    event.waitUntil(
        caches.open(cacheName).then(function(cache){
            return cache.addAll([
                "/index.html",
                "/navbar.css",
                "/navbar.js",
                "/memo.css",
                "/memo.html",
                "/memo.js"
            ]);
        })
    )
})

self.addEventListener("activate", function(event){
    event.waitUntil(
        caches.keys().then(function(names){
            Promise.all(
                name.filter(function(names){
                    return name !== cacheName;
                }).map(function(name){
                    return caches.delete(name);
                })
            )
        })
    )
});

/**
 * 
 */
self.addEventListener("fecth", function(event){
    event.respondWith(
        caches.open(cacheName).then(function(cache){
            return cache.match(event.request);
        })
    );
});
