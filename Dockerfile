# Use the official ERPNext image which has everything pre-installed
FROM frappe/erpnext:version-15

USER frappe

# We will overwrite the base hrms app with our branded local version
# Instead of just the code, we copy the whole app directory
COPY --chown=frappe:frappe . /home/frappe/frappe-bench/apps/hrms/

# Tell Python to recognize our changed app code
RUN pip install --user -e /home/frappe/frappe-bench/apps/hrms
