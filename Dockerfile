ARG FRAPPE_VERSION=version-15

# Backend Image (Python logic)
FROM frappe/erpnext:${FRAPPE_VERSION} AS backend
USER frappe
# Clone and install the Miraiyug HRMS branded app
RUN bench get-app hrms https://github.com/dipakshimpi/miraiyug-hrms.git --branch main
