# Laboratorio End-to-End - Semana 3

## Estructura

```text
modules
├── rg.bicep
├── network.bicep
├── compute.bicep
├── storage.bicep
├── keyvault.bicep
└── monitor.bicep
```

## Nota sobre rg.bicep

El módulo `rg.bicep` se mantiene separado de `main.bicep`.

La razón es que crea un Resource Group utilizando:

```bicep
targetScope = 'subscription'
```

mientras que los demás módulos despliegan recursos dentro de un Resource Group.

### Nivel Subscription

```text
Subscription
│
└── Resource Group
```

Archivo:

```text
rg.bicep
```

### Nivel Resource Group

```text
Resource Group
│
├── Network
├── Compute
├── Storage
├── Key Vault
└── Monitor
```

Archivo:

```text
main.bicep
```

Para este laboratorio se mantuvieron separados con fines de aprendizaje para comprender la diferencia entre Subscription Scope y Resource Group Scope.