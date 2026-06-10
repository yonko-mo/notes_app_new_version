# Notes App

A comprehensive note-taking application developed with Flutter, designed to provide a seamless and efficient way to create, edit, and manage personal notes. The application features persistent local storage, cross-platform compatibility, and a clean, modern user interface built with the BLoC architectural pattern.

## Features

- **Create Notes**: Add new notes with customizable title and content
- **Edit Notes**: Modify existing notes with real-time updates
- **Delete Notes**: Remove unwanted notes from the collection
- **Custom Color Organization**: Tag and categorize notes with color assignments
- **Local Data Persistence**: Secure offline storage using Hive database
- **Dark Theme Interface**: Professional dark mode UI with optimized contrast
- **Cross-Platform Support**: Compatible with Android, iOS, Web, Linux, macOS, and Windows

## Demo

[![Watch the demo](https://img.youtube.com/vi/YOUR_VIDEO_ID/0.jpg)](https://www.youtube.com/watch?v=YOUR_VIDEO_ID)

_Or view the demo on [GitHub](link-to-your-video-file)_

## Technology Stack

### Core Technologies

- **Framework**: Flutter 3.12.1+
- **Programming Language**: Dart
- **State Management**: BLoC (flutter_bloc ^9.1.1)
- **Local Database**: Hive ^2.2.3
- **UI/Design**: Flutter Material Design

### Key Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_bloc: ^9.1.1 # State management library
  bloc: ^9.2.1 # Core BLoC library
  hive: ^2.2.3 # Lightweight local database
  hive_flutter: ^1.1.0 # Hive Flutter integration
  font_awesome_flutter: ^11.0.0 # Icon library
  intl: ^0.20.2 # Internationalization
  cupertino_icons: ^1.0.8 # iOS-style icons

dev_dependencies:
  build_runner: ^2.4.13 # Code generation runner
  flutter_lints: ^6.0.0 # Linting rules
  hive_generator: ^2.0.1 # Hive adapter code generation
```

## Project Structure

```
lib/
├── main.dart                    # App entry point
├── constants.dart               # App constants
├── simple_bloc_observer.dart    # BLoC observer for debugging
├── models/
│   ├── note_model.dart          # Note data model
│   └── note_model.g.dart        # Generated Hive adapter
├── cubits/
│   ├── add_note_cubit/          # Cubit for adding notes
│   └── notes_cubit/             # Cubit for managing notes list
├── views/
│   ├── notes_view.dart          # Main notes list view
│   └── edit_note_view.dart      # Edit note view
└── widgets/
    ├── notes_view_body.dart
    ├── edit_note_view_body.dart
    ├── notes_list_view.dart
    ├── note_item.dart
    ├── add_note_bottom_sheet.dart
    ├── add_note_form.dart
    ├── custom_app_bar.dart
    ├── custom_button.dart
    ├── custom_icon.dart
    ├── custom_text_field.dart
    ├── color_item.dart
    ├── colors_list_view.dart
    └── edit_note_colors_list_view.dart
```

## Getting Started

### Prerequisites

Before proceeding with installation, ensure the following requirements are met:

- Flutter SDK (version 3.12.1 or higher)
- Dart SDK (included with Flutter installation)
- Git version control system
- Appropriate IDE (Android Studio, Xcode, or VS Code with Flutter extension)

## Usage

### Creating a Note

1. Launch the application
2. Select the add button (floating action button) in the interface
3. Enter the note title and content in the provided fields
4. Optionally select a color tag for organizational purposes
5. Confirm by selecting the "Add" action

### Editing a Note

1. Select the note to be modified from the notes list
2. Update the title and/or content as needed
3. Optionally modify the color tag
4. Changes are automatically saved to the database

### Deleting a Note

1. Locate the note to be deleted in the list
2. Select the delete option
3. The note is immediately removed from the database

## Architecture

The application implements the **BLoC (Business Logic Component) architectural pattern** for effective state management and separation of concerns:

- **Cubits**: Encapsulate business logic and state transitions
  - `NotesCubit`: Manages the primary notes list and CRUD operations
  - `AddNoteCubit`: Handles note creation workflow

- **Models**: Define application data structures
  - `NoteModel`: Represents individual note entities with associated metadata

- **Views**: Present user interface and consume BLoC state changes
  - Clean separation between presentation and business logic layers
  - Reactive UI updates based on state emissions

- **Widgets**: Reusable UI components
  - Consistent design patterns across the application
  - Modular and composable component structure

## Database

The application utilizes **Hive**, a lightweight and high-performance local database solution for persistent data storage:

- **Offline Functionality**: Complete operation without network connectivity
- **Performance**: Optimized for fast read/write operations
- **Local Storage**: All data remains on the device
- **Data Integrity**: Reliable CRUD operations with transactional support