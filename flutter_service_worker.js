'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/63/71526abf5ed2f7ed19273baf7d052b346dee7e": "c7c513ee105f99f182402c90a9f5471b",
".git/objects/cc/cb9ec448ff8208b74db811de2ec8d27b4031a3": "0b3c565330736bd3caeb933b50f65839",
".git/objects/cc/64e362c8424372245754173b629fce61ec7da6": "33d6db1af29778b457da9baf229e9800",
".git/objects/7f/fdce3e6e37f4f037c134cb90f771e074288d70": "a4b061bdcc172a62ea1e92cd11adef2f",
".git/objects/87/e3b8d76bb0e378991a727ad928f6138d498199": "9f688e40a5dbb1b8ff2d45b0d8c1b3b0",
".git/objects/b5/fd26b3978753e012f74bbff2c8efa572d3affb": "1addba643b7805d05dfd5c802bc200b7",
".git/objects/f7/b3d6a89add1279039e5c290f66fe253ada2291": "ca71a443c9e1fc969fad87dfe029719d",
".git/objects/d2/91d3d738d72d0172623e5a6dec621828b268a0": "3bc00262ba46bc33d917186678f3ed5a",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/a5/3f0b1da23cdf5162bb210685bdc9690077d747": "35ac00ae5e468895453200b17ba202f6",
".git/objects/12/13653b92cc2bfb626c54390cf150c4c0725414": "75756a56ed649b0337ee5c59e53c99c2",
".git/objects/12/7dee6ef942d506d7a68d8d03acb1d6bb0d7bdb": "7299aaf0bed03ca429b59c7f2b822dcd",
".git/objects/a8/8c9340e408fca6e68e2d6cd8363dccc2bd8642": "11e9d76ebfeb0c92c8dff256819c0796",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/b0/a183b245a52bd06dac80fe48c89711a01dd7e5": "8642ef04c1ebc30d287cdef5d21293bf",
".git/objects/d7/7cfefdbe249b8bf90ce8244ed8fc1732fe8f73": "9c0876641083076714600718b0dab097",
".git/objects/38/ba79f98295ddb961251083d552330b1c926c52": "21f5257d4ba8c71142794e9010b60468",
".git/objects/a1/28b6e0ebef54b2135f3fbe5f18e9182cf176a7": "6705d7e85e029f615be5c4ab648519d4",
".git/objects/a1/247efd7bd776cc556a1a69eddea52558e4b120": "fd9af193884986ff26105bbce6777a68",
".git/objects/4e/81eb2acaf0e101f2758c0080288c503334fe36": "86be1851f4d2bc04b20b75289d162b23",
".git/objects/6f/6c05d89d755efe8cfda77f62e6f4fa07dfadb0": "8cb89c187273745258b4467979ba341a",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/3e/8c881ecc410172f2a127f2d5cb426bf127b860": "2471d27af9a4203a79f401c316954578",
".git/objects/3e/d0ddd7136a48520910e7e4bf665362facd60d4": "c8322669a78b5f07c75b1decdc05718d",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "e68f5265f0bb82d792ff536dcb99d803",
".git/objects/f9/fb461655c3dd32fbae92495b4ad62dfe4b0fe6": "9c142257371c8accf44f3926e410b620",
".git/objects/71/de0dc93b6d50d5eebeabe9e41531cecd492afc": "354f3959e56cd925c8974508f2e551d4",
".git/objects/57/7946daf6467a3f0a883583abfb8f1e57c86b54": "846aff8094feabe0db132052fd10f62a",
".git/objects/df/a09ff02c059658347532fa3fbfeec0b8ff9563": "294518de91f888b9599d7d6520ab1d6e",
".git/objects/db/e9d7f72016d22b51a6561549a900691f58b8fe": "84d357d3406f2421f9f8fd0aa04b9800",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "85896cd5fba127825eb58df13dfac82b",
".git/objects/e7/99bf0c960619a21c866d599fd3ff37d096223b": "88edd7a79eab90ef6a85b49a8c21ec82",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/cd/91fabdc1cbcf7513b3d1d6d4c9dd2733d2943c": "b8ceb0232e83708a7d1f3a8d42b8cd7b",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/5e/f2b9f2d180771505d3672b75376ee010b9a076": "661e39e07510444f37a7c4f69cb14aa6",
".git/objects/d1/2e46e5062357f5eb33920ef0cd9462e14bd9ba": "60b83171d2639b89c0e51bb146cd8b37",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "2eed33506ed70a5848a0b06f5b754f2c",
".git/objects/a4/dd40ca569a8f3cc245d1aa855b2efe5021291f": "b4e1e8a5baf801657a00b2541d2cfb92",
".git/objects/0d/11f35bbe8d466d2201047a0f6935d9cc5ba903": "d4196f620f2896f4fef2d23898739289",
".git/objects/aa/efddd89341eca34cc9d7ecedccc646b4863f44": "bf76a171b1d8d45b8b2f471c4f10b868",
".git/objects/36/762ab05e96a25288cd0a0c84222504a5f889a6": "3e742b090cd559b65e11203c6b936967",
".git/objects/9a/7b0bef4397f2da8da132d9f1df7f6b9cbdcc29": "a1257e3a1aa99fedfebb2b4f5503c4fa",
".git/objects/17/e43c2a6aa55de51e1dee1a29ab2e61d0b19692": "7e3d17ff3a165be84c07a699656f22f9",
".git/objects/79/cb69955e7bbd0608f2a22289ac14fe4e629c6d": "40f944bf2011c596edf088a3d66f749c",
".git/objects/6e/351f0839339dfd76ea490959da082c9bb61275": "b03d9944ef86816a11ba5ad211a776dd",
".git/objects/cb/6b7a6137f8e01d986294349a6bc2fadc6d1849": "9df7d09456db8013ef6b3c4b23309f7a",
".git/objects/8a/a92afeb0a1ff7ffb2f7e0ee7fb74953c3390f9": "7154a6d6af59d80b106956ee38f19696",
".git/objects/8a/51a9b155d31c44b148d7e287fc2872e0cafd42": "9f785032380d7569e69b3d17172f64e8",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8e/d62831dbc2a5538f9720d47d5b740d6e778928": "d957396c75c32b3d70837499e17eb806",
".git/objects/5f/d8ae22270a44d3039d5bb89018e40915617af5": "48e801f1de1f6a74bc972ac5e7d8fd85",
".git/objects/0b/bc515f307608fd925809c36a995337e01bc6a7": "db91973877c26df5938720faf126c02f",
".git/logs/HEAD": "46ae2575b330f09e997187aee401fab2",
".git/logs/refs/heads/main": "e4bc71dc71fdfc05852b82217fa40819",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/index": "2331bb269912e0679bd0fb22c713f08b",
".git/COMMIT_EDITMSG": "31604558c170f37d0a62b3043cd9207a",
".git/config": "c972ccadd4e28fdc0b57516b0a34b711",
".git/refs/heads/main": "32f0bd6bc65aa430d0f3c513e7d042fa",
"version.json": "fb8d4678888024cd5f83d8522bb3a722",
"index.html": "207d80b8ad8c3663e78a988c72307377",
"/": "207d80b8ad8c3663e78a988c72307377",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"flutter_bootstrap.js": "8a505c5b5ceb3eb3cf952e1eabc987bd",
"manifest.json": "56128fc6ec7568b99d6fc24cfa34a218",
"main.dart.js": "e83b93a7ba183678415c74348de45a9e",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"assets/AssetManifest.json": "945f70ed0a387c09cef80ff3ec774318",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin.json": "2e8a150bfd681688a32a2719d80f7658",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/assets/cx.png": "10d6a910c6a4edc96fbcb6eae048b932",
"assets/assets/AssetManifest.json": "ee13c5df92d6dc3484b16d9799011b12",
"assets/assets/bx.png": "751fb4a0d238d28be8dccbd93f0dccc8",
"assets/assets/classarch.png": "04475e9e47bd1a52b61d5babc00c8b8d",
"assets/assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/assets/ambassador.png": "1d21b99ce7d9288f675996754929f64d",
"assets/assets/kia.png": "97dbf1348477dcfe5d6a46ff4cd9ef9d",
"assets/assets/AssetManifest.bin.json": "92e13481ff75fea8767928b585dd89ac",
"assets/assets/dinguniv.jpg": "4705f85b21e75275e2561e679c17e2ad",
"assets/assets/profile.jpg": "266be7d71fd097b4e7ac147b7b624c42",
"assets/assets/dx.png": "2e48965368ca2dff08f470c80cd1c9b2",
"assets/assets/email_button.png": "570ed02e1d63b3a8ac44ed66ecf9c1b8",
"assets/assets/phone_button.png": "b3b574e7bea56a4c482b5be051e9bff2",
"assets/assets/NOTICES": "b83970d5e1f831cb122eabd5fa53dfa9",
"assets/assets/AssetManifest.bin": "2fd6ecf1c329912acd2976d4544428eb",
"assets/assets/global.jpg": "eec81637779ebeb1985f981d423feceb",
"assets/NOTICES": "b83970d5e1f831cb122eabd5fa53dfa9",
"assets/AssetManifest.bin": "1e5e0235786395a76f674ed842d872e4",
"canvaskit/canvaskit.wasm": "2e9895626fe95683569ed951214f1eb8",
"canvaskit/canvaskit.js": "de27f912e40a372c22a069c1c7244d9b",
"canvaskit/canvaskit.js.symbols": "ff204c6b77c9e5969d85d9bfbaa0c843",
"canvaskit/skwasm.js.symbols": "c7cf698f802bc5e9e8e791f762ebdfe9",
"canvaskit/skwasm_st.js.symbols": "a564f5dfbd90292f0f45611470170fe1",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.wasm": "c528f7ba97a317e25e547ea47c8a66d8",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.wasm": "3179a61ea4768a679dbbe30750d75214",
"canvaskit/chromium/canvaskit.wasm": "86233631b867ce8f74c2020077650d11",
"canvaskit/chromium/canvaskit.js": "73343b0c5d471d1114d7f02e06c1fdb2",
"canvaskit/chromium/canvaskit.js.symbols": "85275e659470daa080e014ffe17a1a59"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
