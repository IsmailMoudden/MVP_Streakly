# Contributing to Streakly 🔥

Thank you for your interest in contributing to Streakly! This document provides guidelines and information for contributors.

## 🤝 How to Contribute

### 🐛 Reporting Bugs

Before creating bug reports, please check the existing issues to avoid duplicates. When creating a bug report, include:

- **Clear and descriptive title**
- **Detailed description of the problem**
- **Steps to reproduce the issue**
- **Expected behavior**
- **Actual behavior**
- **Screenshots or videos** (if applicable)
- **Device information** (OS, Flutter version, etc.)
- **Error logs** (if any)

### 💡 Suggesting Enhancements

We welcome feature requests! When suggesting enhancements:

- **Describe the use case** and why it would be useful
- **Explain the expected behavior**
- **Consider the impact** on existing features
- **Provide mockups or examples** if possible

### 🔧 Code Contributions

#### Prerequisites

- Flutter SDK (3.0 or higher)
- Dart SDK (3.0 or higher)
- Git
- A GitHub account

#### Development Setup

1. **Fork the repository**
   ```bash
   git clone https://github.com/YOUR_USERNAME/MVP_Streakly.git
   cd MVP_Streakly
   ```

2. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Install dependencies**
   ```bash
   cd streakly_app
   flutter pub get
   ```

4. **Make your changes** following the coding standards below

5. **Test your changes**
   ```bash
   flutter test
   flutter analyze
   ```

6. **Commit your changes**
   ```bash
   git add .
   git commit -m "feat: add your feature description"
   ```

7. **Push to your fork**
   ```bash
   git push origin feature/your-feature-name
   ```

8. **Create a Pull Request**

## 📝 Coding Standards

### Dart/Flutter Standards

- Follow the [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)
- Use meaningful variable and function names
- Add comments for complex logic
- Keep functions small and focused
- Use proper error handling

### Code Formatting

```bash
# Format your code
dart format lib/

# Analyze your code
flutter analyze

# Run tests
flutter test
```

### Commit Message Convention

We use [Conventional Commits](https://www.conventionalcommits.org/):

- `feat:` - New features
- `fix:` - Bug fixes
- `docs:` - Documentation changes
- `style:` - Code style changes (formatting, etc.)
- `refactor:` - Code refactoring
- `test:` - Adding or updating tests
- `chore:` - Maintenance tasks

Example:
```
feat: add dark mode support to home screen
fix: resolve navigation issue in challenge screen
docs: update README with new screenshots
```

### Pull Request Guidelines

1. **Title**: Use a clear, descriptive title
2. **Description**: Explain what changes you made and why
3. **Screenshots**: Include screenshots for UI changes
4. **Tests**: Ensure all tests pass
5. **Documentation**: Update documentation if needed

## 🏗️ Project Structure

### Key Directories

- `streakly_app/lib/models/` - Data models
- `streakly_app/lib/screens/` - UI screens
- `streakly_app/lib/widgets/` - Reusable widgets
- `streakly_app/assets/` - Images and resources
- `doc/` - Technical documentation

### Adding New Features

1. **Create the feature** in the appropriate directory
2. **Add tests** for your feature
3. **Update documentation** in the `doc/` folder
4. **Update README** if necessary

## 🧪 Testing

### Running Tests

```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/widget_test.dart

# Run with coverage
flutter test --coverage
```

### Writing Tests

- Write tests for all new features
- Test both success and error cases
- Use descriptive test names
- Follow the AAA pattern (Arrange, Act, Assert)

## 📚 Documentation

### Code Documentation

- Add comments for complex logic
- Document public APIs
- Use clear and concise language
- Include examples when helpful

### Technical Documentation

- Update `doc/` files when adding new features
- Keep documentation up-to-date
- Include diagrams or screenshots when helpful

## 🚀 Release Process

### Version Numbers

We follow [Semantic Versioning](https://semver.org/):

- **MAJOR** version for incompatible API changes
- **MINOR** version for backwards-compatible functionality
- **PATCH** version for backwards-compatible bug fixes

### Release Checklist

- [ ] All tests pass
- [ ] Documentation is updated
- [ ] CHANGELOG is updated
- [ ] Version number is updated
- [ ] Release notes are written

## 🐛 Issue Templates

### Bug Report Template

```markdown
## Bug Description
[Describe the bug clearly and concisely]

## Steps to Reproduce
1. Go to '...'
2. Click on '....'
3. Scroll down to '....'
4. See error

## Expected Behavior
[What you expected to happen]

## Actual Behavior
[What actually happened]

## Environment
- OS: [e.g. iOS 15.0, Android 12]
- Flutter Version: [e.g. 3.10.0]
- Device: [e.g. iPhone 13, Samsung Galaxy S21]

## Additional Information
[Screenshots, logs, or any other relevant information]
```

### Feature Request Template

```markdown
## Feature Description
[Describe the feature you'd like to see]

## Use Case
[Explain why this feature would be useful]

## Proposed Solution
[If you have ideas for implementation]

## Alternatives Considered
[Any alternative solutions you've considered]

## Additional Information
[Screenshots, mockups, or examples]
```

## 📞 Getting Help

- **Documentation**: Check the `doc/` folder
- **Issues**: Use GitHub Issues for bugs and feature requests
- **Discussions**: Use GitHub Discussions for general questions
- **Code of Conduct**: Be respectful and inclusive

## 🎉 Recognition

Contributors will be recognized in:
- The project README
- Release notes
- GitHub contributors page

Thank you for contributing to Streakly! 🚀
