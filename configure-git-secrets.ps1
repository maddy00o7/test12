# Install git-secrets
git secrets --install

# Register AWS patterns
git secrets --register-aws

# Add patterns for sensitive information
$patterns = @(
    'password = ',
    'api_key = ',
    'secret_key = ',
    'access_key = ',
    'auth_token = ',
    'oauth_token = ',
    'bearer_token = ',
    'AWS_ACCESS_KEY_ID',
    'AWS_SECRET_ACCESS_KEY',
    'GITHUB_TOKEN',
    'SLACK_TOKEN',
    'DB_PASSWORD',
    'DB_USERNAME',
    'DB_CONNECTION_STRING',
    'connectionString = ',
    '-----BEGIN PRIVATE KEY-----',
    '-----BEGIN PUBLIC KEY-----'
    '^[a-zA-Z0-9/+=]+$'
)

foreach ($pattern in $patterns) {
    git secrets --add $pattern
}

# Verify the patterns
git secrets --list
