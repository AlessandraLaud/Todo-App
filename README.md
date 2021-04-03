<p align="center">
  <a href="https://flutter.io/">
    <img src="https://diegolaballos.com/files/images/flutter-icon.jpg" alt="Logo" width=72 height=72>
  </a>

  <h3 align="center">Todo App</h3>

  <p align="center">
    A Flutter todo application
</p>


## Libraries & Tools Used

* [Provider](https://github.com/rrousselGit/provider)
* [Cuperetino Icons](https://github.com/flutter/cupertino_icons)

## Folder structure

```bash
.
└── lib
    ├── src
    │    ├── models     # Contains the apps models (represents app data)
    │    ├── pages      # Contains the apps pages/views
         ├── providers  # Contains the apps providers (Changes data and provides data)
         ├── repository # Provides the abstraction of data
         ├── widgets    # Contains the apps widgets
         ├── app.dart   # The app's first view on start
    │    └── theme.dart # app theme/style
    └── main.dart       # app start
```