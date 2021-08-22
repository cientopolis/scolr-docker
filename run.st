| smtp adminEmail |
smtp := OSEnvironment current at: 'SMTP_SERVER' ifAbsent: 'localhost'.
adminEmail := OSEnvironment current at: 'ADMIN_EMAIL' ifAbsent: 'scolr@localhost'.
ReviewnatorDeployer prepareForDeploymentOnPort: 8080 adminEmail: adminEmail smtp: smtp.
WAAdmin defaultDispatcher defaultName: 'scolr'.
Transcript show: 'Scolr has started'; cr.


