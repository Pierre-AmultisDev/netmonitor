import sys
import os

# Add install dir to path
sys.path.insert(0, os.environ.get('INSTALL_DIR', '/opt/netmonitor'))
sys.path.insert(0, os.environ.get('SCRIPT_DIR'))

try:
    from database import DatabaseManager
    from config_loader import load_config

    print("Loading config.yaml...")
    config = load_config('config.yaml')

    if 'database' not in config or 'postgresql' not in config['database']:
        print("ERROR: Database configuration not found in config.yaml", file=sys.stderr)
        sys.exit(1)

    db_config = config['database']['postgresql']

    print(f"Connecting to database {db_config['database']} at {db_config['host']}:{db_config['port']}...")

    db = DatabaseManager(
        host=db_config['host'],
        port=db_config['port'],
        database=db_config['database'],
        user=db_config['user'],
        password=db_config['password']
    )

    print("Database schema created successfully")
    sys.exit(0)

except Exception as e:
    print(f"ERROR: Database initialization failed: {e}", file=sys.stderr)
    import traceback
    traceback.print_exc()
    sys.exit(1)
