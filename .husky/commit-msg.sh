# Conventional commit types allowed
ALLOWED_TYPES="feat|fix|chore|style"

# Get the commit message
COMMIT_MSG_FILE=$1
COMMIT_MSG=$(cat "$COMMIT_MSG_FILE")

echo $COMMIT_MSG

# Regex pattern for Conventional commits
PATTERN="^(${ALLOWED_TYPES}): .{1,50}$"

if ! echo "$COMMIT_MSG" | grep -qE "$PATTERN"; then
  echo "Error: Commit message does not follow conventional commits format."
  echo ""
  echo "Please use one of the following types: feat, fix, chore, style."
  echo "Format: <type>: <description>"
  echo "Example: feat: add user authentication"
  exit 1
fi
