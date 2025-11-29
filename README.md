# Estructura del Proyecto Demo CNCF Latam Summit

Este repositorio implementa una plataforma GitOps completa utilizando un modelo **Hub-Spoke**, gestionando tanto infraestructura (con Crossplane) como aplicaciones (con Argo CD y KCL).

## Descripción de Directorios

### 📂 `dev-consumer/`
**Propósito:** Espacio de trabajo para los equipos de desarrollo (consumidores de la plataforma).
*   Contiene el código fuente de las configuraciones de las aplicaciones definidos en **KCL**.
*   **Ejemplo:** `demo-app/` contiene la definición de una aplicación web (Deployment + Service) usando módulos KCL reutilizables.
*   Aquí es donde los desarrolladores hacen cambios para desplegar sus servicios.

### 📂 `examples_kcl/`
**Propósito:** Biblioteca de módulos y ejemplos de KCL.
*   **`1_modules/`:** Definiciones de módulos KCL para infraestructura (ej. `ec2`, `vpc`) que abstraen la complejidad de Crossplane.
*   **`2_example_basic_k8s/`:** Módulos KCL para aplicaciones Kubernetes estándar (Deployment, Service, Ingress). Es la librería que importa `dev-consumer`.

### 📂 `gitops-bridge/`
**Propósito:** El corazón de la configuración de Argo CD. Define *cómo* y *dónde* se despliegan las cosas.
*   **`one_to_one/`:** Patrón donde una Aplicación de Argo CD gestiona un Cluster específico.
    *   `clusters/spoke-gitops/workloads/`: Define qué apps van específicamente al cluster `spoke-gitops`.
*   **`one_to_many/`:** Patrón donde un **ApplicationSet Maestro** despliega aplicaciones dinámicamente en múltiples clusters a la vez.
    *   `workloads/master-workload.yaml`: El cerebro que escanea `dev-consumer` y crea las aplicaciones en todos los spokes automáticamente.

### 📂 `infra/`
**Propósito:** Definición de Infraestructura como Código (IaC) gestionada por Crossplane y KCL.
*   **`claims/`:** Instancias concretas de infraestructura que se desean crear.
    *   `1_xnetwork/`: Petición para crear una red (VPC, Subnets).
    *   `2_xcluster/`: Petición para crear clusters EKS (el Hub o los Spokes).
*   **`configurations/`:** Paquetes de configuración de Crossplane (Compositions y XRDs). Definen las "APIs" de tu plataforma (ej. "dame un cluster", "dame una red").
*   **`git_modules_kcl/`:** Submódulos o librerías KCL específicas para definir los recursos de infraestructura de AWS (EC2, EKS, IAM).

### 📂 `.github/`
**Propósito:** Automatización CI/CD.
*   Workflows para publicar módulos KCL, validar código o realizar acciones automáticas al hacer push.

---

### Resumen del Flujo GitOps

1.  **Infraestructura:** Se define en `infra/claims` -> Crossplane en el Hub crea los recursos reales en AWS.
2.  **Desarrollo:** El usuario define su app en `dev-consumer/demo-app` usando KCL.
3.  **Despliegue (One-to-Many):** Argo CD (en el Hub) detecta el cambio en `dev-consumer/` gracias al ApplicationSet en `gitops-bridge/one_to_many/`.
4.  **Sincronización:** Argo CD despliega los manifiestos generados por KCL en los clusters Spoke (`spoke-gitops`, `spoke-gitops2`).