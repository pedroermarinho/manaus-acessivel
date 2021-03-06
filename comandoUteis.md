Comandos e Informações Úteis
============================

## Instalando o slidy
```
pub global activate slidy
```
## Criando a estrutura com o slidy
```
slidy start
```
## Instalando depedencias com o slidy
* firebase_core
* google_sign_in
* image_picker
* firebase_auth
* firebase_storage
* cloud_firestore
* font_awesome_flutter
* geolocator
* google_maps_flutter
* rxdart
* dio
* flutter_mobx
* mobx
* flutter_modular
* package_info
* url_launcher

```
slidy install <nome da depedencia>
```
## Simplificando comandos com o slidy
Camando
```
flutter pub run build_runner watch --delete-conflicting-outputs
```
Simplificado
```
slidy run mobx
```
## Crindo Modules com o slidy
* home
* information
* login
* marcador
* register
* settings

Caminho padrão para modulos
```
modules/<nome do modulo>
```
Comando para criar modulo
```
slidy generate module <caminho>/<nome do modulo>
```
Comando para criar modulo com controller e page
```
slidy generate module <caminho>/<nome do modulo> -c
```
## Criando Pages com o slidy
* splash_screen
* about

Caminho padrão para pages
```
pages/<nome da page>
```
Comando para criar paginas
```
slidy generate page <caminho>/<nome da pagina>
```
## Criando Controller com o slidy
Comando para criar controller
```
slidy generate controller <caminho>/<nome do controller>
```
## Criando Repository com o slidy
* marker
* type_marker
* user
Caminho padrão para pages
```
repositories/<nome do repository>/repository/<nome do repository>
```
Comando para criar repository
```
slidy generate repository <caminho>/<nome da repository>
```
## Criando Widgets com o slidy
Caminho padrão para widgets
```
modules/<nome do modulo>/components/<nome do widget>
```
Comando para criar widget
```
slidy generate widget <caminho>/<nome do widget> 
```

## Arvore do projeto
```
lib/
├── app
│   ├── app_controller.dart
│   ├── app_controller.g.dart
│   ├── app_module.dart
│   ├── app_widget.dart
│   ├── components
│   │   ├── google_map_custom
│   │   │   ├── google_map_custom_controller.dart
│   │   │   ├── google_map_custom_controller.g.dart
│   │   │   └── google_map_custom_widget.dart
│   │   └── text_field_custom
│   │       ├── text_field_custom_controller.dart
│   │       ├── text_field_custom_controller.g.dart
│   │       └── text_field_custom_widget.dart
│   ├── models
│   │   ├── marker.dart
│   │   ├── type_marker.dart
│   │   └── user.dart
│   ├── modules
│   │   ├── home
│   │   │   ├── components
│   │   │   ├── home_controller.dart
│   │   │   ├── home_controller.g.dart
│   │   │   ├── home_module.dart
│   │   │   └── home_page.dart
│   │   ├── information
│   │   │   ├── components
│   │   │   │   └── marker_icon_detector
│   │   │   │       ├── marker_icon_detector_controller.dart
│   │   │   │       ├── marker_icon_detector_controller.g.dart
│   │   │   │       └── marker_icon_detector_widget.dart
│   │   │   ├── information_controller.dart
│   │   │   ├── information_controller.g.dart
│   │   │   ├── information_module.dart
│   │   │   └── information_page.dart
│   │   ├── login
│   │   │   ├── login_controller.dart
│   │   │   ├── login_controller.g.dart
│   │   │   ├── login_module.dart
│   │   │   └── login_page.dart
│   │   ├── marker
│   │   │   ├── marker_controller.dart
│   │   │   ├── marker_controller.g.dart
│   │   │   ├── marker_module.dart
│   │   │   └── marker_page.dart
│   │   ├── register
│   │   │   ├── register_controller.dart
│   │   │   ├── register_controller.g.dart
│   │   │   ├── register_module.dart
│   │   │   └── register_page.dart
│   │   ├── settings
│   │   │   ├── settings_controller.dart
│   │   │   ├── settings_controller.g.dart
│   │   │   ├── settings_module.dart
│   │   │   └── settings_page.dart
│   │   └── splash_screen
│   │       ├── splash_screen_controller.dart
│   │       ├── splash_screen_controller.g.dart
│   │       ├── splash_screen_module.dart
│   │       └── splash_screen_page.dart
│   ├── pages
│   │   └── about
│   │       ├── about_controller.dart
│   │       ├── about_controller.g.dart
│   │       └── about_page.dart
│   ├── repositories
│   │   ├── marker
│   │   │   ├── marker_repository_controller.dart
│   │   │   ├── marker_repository_controller.g.dart
│   │   │   └── repository
│   │   │       ├── marker_repository.dart
│   │   │       └── marker_repository_interface.dart
│   │   ├── type_marker
│   │   │   ├── repository
│   │   │   │   ├── type_marker_repository.dart
│   │   │   │   └── type_marker_repository_interface.dart
│   │   │   ├── type_marker_repository_controller.dart
│   │   │   └── type_marker_repository_controller.g.dart
│   │   └── user
│   │       ├── repository
│   │       │   ├── user_repository.dart
│   │       │   └── user_repository_interface.dart
│   │       ├── user_repository_controller.dart
│   │       └── user_repository_controller.g.dart
│   └── shared
│       ├── auth
│       │   ├── auth_controller.dart
│       │   ├── auth_controller.g.dart
│       │   └── repository
│       │       ├── auth_repository.dart
│       │       └── auth_repository_interface.dart
│       └── utils
│           ├── type_user.dart
│           └── user_util.dart
└── main.dart
```
