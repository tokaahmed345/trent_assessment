<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>

<h1 align="center">📱 Trent Assessment App</h1>

<p align="center">
A modern Flutter application built using MVVM architecture,
focusing on clean code, scalability, and performance.
</p>

<hr>

<h2>📌 Table of Contents</h2>
<ul>
    <li>✨ Features</li>
    <li>🏗️ Architecture</li>
    <li>📱 Screenshots</li>
    <li>🛠️ Tech Stack</li>
    <li>📂 Structure</li>
    <li>🚀 Getting Started</li>
</ul>

<hr>

<h2>✨ Key Features</h2>
<ul>
    <li>🗺️ Interactive Maps using flutter_map</li>
    <li>⚡ State Management with flutter_bloc</li>
    <li>🧭 Navigation using go_router</li>
    <li>💉 Dependency Injection with get_it</li>
    <li>🎨 Smooth UI with cached images</li>
</ul>

<hr>

<h2>🏗️ MVVM Architecture</h2>
<pre>
VIEW → UI (Widgets)
VIEWMODEL → Bloc / Cubit (Logic)
MODEL → Repository / API / Data
</pre>

<hr>

<h2>📱 Screenshots</h2>

<h3>Home Screen</h3>
<img src="screenshots\home.jfif" alt="Home Screen" width="300">

<p>Shows categories, banners, and product listing.</p>

<br>

<h3>Home Screen</h3>
<img src="screenshots\home2.jfif" alt="Home Screen" width="300">

<p>Shows categories, banners, and product listing.</p>

<br>

<h3>Product Details</h3>
<img src="screenshots\product_details.jfif" alt="Details Screen" width="300">

<p>Displays product details, pricing, and actions.</p>

<hr>

<h2>🛠️ Tech Stack</h2>
<table>
<tr>
    <th>Package</th>
    <th>Purpose</th>
</tr>
<tr>
    <td>flutter_bloc</td>
    <td>State Management</td>
</tr>
<tr>
    <td>get_it</td>
    <td>Dependency Injection</td>
</tr>
<tr>
    <td>go_router</td>
    <td>Navigation</td>
</tr>
<tr>
    <td>cached_network_image</td>
    <td>Image Caching</td>
</tr>
</table>

<hr>

<h2>📂 Project Structure</h2>
<pre>
lib/
├── core/
├── features/
│   ├── home/
│   ├── details/
│   └── profile/
└── main.dart
</pre>

<hr>

<h2>🚀 Getting Started</h2>

<ol>
<li>
Clone Repo:
<pre>git clone https://github.com/your-username/trent_assessment.git</pre>
</li>

<li>
Install dependencies:
<pre>flutter pub get</pre>
</li>

<li>
Run app:
<pre>flutter run</pre>
</li>
</ol>

<hr>

<p align="center">Built with ❤️ using Flutter</p>

</body>
</html>