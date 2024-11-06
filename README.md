# EzFitApp

An easy-to-use dashboard app for Flutter.

## Utilities

The `isCompactScreen` function can be used to check if the screen is in compact size.

```dart
final isCompact = ref.isCompactScreen;
```

## Environment Variables

Ensure that you have set the following environment variables for Supabase:

```sh
export SUPABASE_URL='your-supabase-url'
export SUPABASE_ANON_KEY='your-supabase-anon-key'
```

These variables are used to configure the Supabase client in your project.

## Generating Icons

To generate app icons, use the `flutter_launcher_icons` package. Ensure you have a `flutter_launcher_icons.yaml` file configured with your desired icon paths and settings. Then, run the following command in your terminal:

```sh
dart run flutter_launcher_icons
```

This will create the necessary icons for your app based on the configuration specified in `flutter_launcher_icons.yaml`.