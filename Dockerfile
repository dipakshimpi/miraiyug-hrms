ARG FRAPPE_VERSION=version-15

# Start from the official ERPNext image (already has frappe + erpnext + hrms)
FROM frappe/erpnext:${FRAPPE_VERSION}

USER frappe

# Override the default HRMS app with our MIRAIYUG branded version
# This replaces only the branded files (logo, app name, hooks.py, etc.)
COPY --chown=frappe:frappe hrms/ /home/frappe/frappe-bench/apps/hrms/hrms/
