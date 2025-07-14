./scripts/prepdocs.sh #!/bin/sh

. ./scripts/load_python_env.sh

echo 'Running "prepdocs.py"'

additionalArgs=""
if [ $# -gt 0 ]; then
  additionalArgs="$@"
fi

./app/backend/.venv/bin/python ./app/backend/prepdocs.py './data/*' --verbose $additionalArgs
