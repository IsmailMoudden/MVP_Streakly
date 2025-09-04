# Data Models

## Challenge (`lib/models/challenge.dart`)
The `Challenge` model represents a challenge or habit tracked by the user.

### Main fields:
- **id**: Unique identifier for the challenge
- **title**: Challenge title
- **description**: Challenge description
- **startDate**: Start date
- **endDate**: End date (optional)
- **isCompleted**: Completion status

### Role
- Serves as the base structure for managing challenges in the app.
- Used for displaying, creating, editing, and tracking challenges.

### Possible evolutions
- Add fields for recurrence, reminders, progress, etc.
- Link with statistics or rewards. 