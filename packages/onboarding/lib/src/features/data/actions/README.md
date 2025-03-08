# Action Handling System

This module provides a robust, extensible system for handling dynamic actions in forms.

## Overview

The action handling system allows form fields to trigger various actions (API calls, redirects, etc.) in response to user interactions such as field changes or form submissions.

## Key Components

### Models

- `ActionConfig`: Defines what action to execute and when to execute it
- `HttpRequestParams`: Parameters for HTTP requests
- `ActionResponse`: Response from an action execution

### Factories

- `ActionConfigFactory`: Creates and executes the appropriate action based on configuration
- `HttpApiCallStrategyFactory`: Creates HTTP request strategies based on method and content type

### Strategies

- `HttpRequestStrategy`: Interface for different HTTP request strategies (GET, POST, etc.)
- `BaseHttpRequestStrategy`: Base implementation with common functionality

### Handlers

- `ActionHandler`: Coordinates action execution and response processing

### Helpers

- `ActionBuilder`: Simplifies building action parameters from field values
- `FieldActionExtensions`: Convenient extension methods for field actions

## Usage Examples

### In UI Components

```dart
// Handle actions on field change
if (cubit is ActionMixin && field.hasActionsFor(ActionEvent.onChange)) {
  cubit.handleFieldActions(
    field: field,
    event: ActionEvent.onChange,
    value: text,
  );
}

// Handle file upload actions
await cubit.handleFileUpload(
  field: field,
  file: bytes,
  additionalParams: {'timestamp': DateTime.now().toIso8601String()},
);
```

### Building Actions Manually

```dart
final actions = field.buildActionsFor(
  event: ActionEvent.onApply,
  value: fieldValue,
  additionalParams: {'extraParam': 'value'},
);

cubit.handleActions(actions);
```

## Benefits

- **Separation of Concerns**: Each component has a single responsibility
- **Type Safety**: Strong typing throughout the system
- **Extensibility**: Easy to add new action types and response handlers
- **Maintainability**: Well-documented code with clear, consistent naming
- **Error Handling**: Robust error handling at each level

## Common Patterns

1. **Action Triggering**: Actions are typically triggered by user interactions (onChange, onApply)
2. **Response Processing**: Responses update fields, show messages, or trigger additional actions
3. **Loading States**: The system handles loading states automatically during action execution

## Best Practices

1. Use the `ActionBuilder` for consistent parameter building
2. Leverage field extensions for simpler UI code
3. Handle errors appropriately with meaningful user feedback
4. Add proper logging for debugging
5. Use the static factory methods for creating responses