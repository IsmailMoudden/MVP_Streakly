# Security Policy

## Supported Versions

Use this section to tell people about which versions of your project are
currently being supported with security updates.

| Version | Supported          |
| ------- | ------------------ |
| 1.0.x   | :white_check_mark: |
| < 1.0   | :x:                |

## Reporting a Vulnerability

We take the security of Streakly seriously. If you believe you have found a security vulnerability, please report it to us as described below.

### Reporting Process

1. **Do not create a public GitHub issue** for the vulnerability
2. **Email us directly** at ismail.moudden1@gmail.com with the subject line: `[SECURITY] Vulnerability Report - Streakly`
3. **Include detailed information** about the vulnerability:
   - Description of the vulnerability
   - Steps to reproduce the issue
   - Potential impact
   - Suggested fix (if any)
   - Your contact information

### What to Include in Your Report

Please provide as much information as possible:

- **Vulnerability Type**: (e.g., SQL injection, XSS, authentication bypass, etc.)
- **Affected Component**: (e.g., authentication system, data storage, API endpoints, etc.)
- **Severity**: (Low, Medium, High, Critical)
- **Proof of Concept**: Code or steps to reproduce
- **Environment**: OS, Flutter version, device type, etc.
- **Timeline**: When you discovered the issue

### Response Timeline

- **Initial Response**: Within 48 hours
- **Status Update**: Within 7 days
- **Resolution**: Depends on severity and complexity

### Responsible Disclosure

We follow responsible disclosure practices:

1. **Confidentiality**: Your report will be kept confidential
2. **Acknowledgement**: You will receive an acknowledgment of your report
3. **Updates**: We'll keep you informed of our progress
4. **Credit**: We'll credit you in our security advisories (if you wish)
5. **No Legal Action**: We won't take legal action against security researchers

### Security Best Practices

When using Streakly, please follow these security best practices:

#### For Users
- Keep your device and operating system updated
- Use strong, unique passwords
- Enable two-factor authentication when available
- Be cautious with personal information
- Report suspicious activity

#### For Developers
- Follow secure coding practices
- Validate all user inputs
- Use HTTPS for all network communications
- Implement proper authentication and authorization
- Keep dependencies updated
- Follow the principle of least privilege

### Security Features

Streakly implements several security measures:

- **Data Validation**: All user inputs are validated
- **Secure Storage**: Sensitive data is encrypted
- **Network Security**: HTTPS for all communications
- **Authentication**: Secure user authentication
- **Privacy**: User data privacy protection

### Known Issues

Currently, there are no known security vulnerabilities in Streakly.

### Security Updates

Security updates will be released as patch versions (e.g., 1.0.1, 1.0.2) and will be clearly marked in the changelog.

### Contact Information

- **Security Email**: ismail.moudden1@gmail.com
- **Response Time**: 48 hours for initial response

### Acknowledgments

We thank all security researchers who responsibly report vulnerabilities to us. Your contributions help make Streakly more secure for everyone.

---

**Note**: This security policy is based on the [GitHub Security Policy template](https://github.com/github/securitylab/blob/main/docs/SECURITY.md) and adapted for Flutter applications.
