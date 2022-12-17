Access controls: Security features that control how users and systems communicate and interact with one another.
Access: Flow of information
Subject: An active entity.
Object: Resources to which access needs to be controlled
Components:
- Identification
- Authentication
- Authorization
- Accountability

Models:
- Mandatory Access Control
    - Based on comparing security labels with clearance.
    - Labels composed of a security level and zero or more security categories. Security category defines the category or group to which the information belongs. Users can access only the information in a resource to which their security labels entitle them.
- Discretionary Access Control
    - Based on identity of the requestor and on access rules.
    - Owner determines object access privileges.
    - This model is managed through an access control list (ACL) which includes a list of users with their access level.
    - Adv: Conceptual simplicity, responsivness to business needs.
    - Dis: Limited control, compromised security.
- Role-Based Access Control
    - Based on the roles and their accesses.
    - System admins must assign based on organizational roles. The idea is that an individual only has access to what is needed to do their job and nothing more.
    - Adv: flexibility, ease of maintenance, centralized, non-descretionary policies.
    - Dis: Complex deployment, Balancing security, layered security.
- Privileged Access Management
