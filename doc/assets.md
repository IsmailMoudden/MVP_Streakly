# Asset Management

Assets include all static resources used in the app: images, icons, etc.

## Structure
- `assets/images/`: Images used in the app (e.g., logo)
- `assets/icons/`: Custom icons

## Declaration
Assets are declared in the `pubspec.yaml` file under the `flutter/assets:` section.

## Usage
- Load via `Image.asset('assets/images/name.png')` in Dart code.
- Icons can be used in widgets or for the UI.

### Best practices
- Organize assets by type or usage.
- Optimize image sizes for better performance.

### Possible evolutions
- Add assets for new features (e.g., badges, illustrations, etc.) 