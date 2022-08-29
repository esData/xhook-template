# xHook Template

This repository serves as a template for creating new xHook component repository to be uses in xHook workflow. xHookCotrol can be implemented either in workflow mode or setHook on accounts. account setHook will only carry out actions introduce thru webAseembily and exclude operational workflow runtime, mainly include setHook condition steps.

## Directory structure

```text
.
├── metadata.yaml       # metadata describing the xhook component
├── LICENSE             # defaults to Apache, replace if that doesn't suit
├── images              # include a svg icon for your components
├── README.md           # this the files
├── steps               # subdirectory for execution steps
│  └── template           # rename this to your own step's name
|     ├── README.md       # detail about how to use this step
│     ├── main.c.erb      # language template
│     ├── step.sh         # entrypoint script (plus any additional files)
│     └── step.yaml       # step metadata 
├── triggers            # subdirectory for triggers
│  └── template           # rename this to your trigger's name
|     ├── README.md       # detail about how to use this trigger
│     ├── Dockerfile      # ... 
│     ├── handler.py      # Entrypoint webhook handler script
│     └── trigger.yaml    # trigger metadata
├── templates           # mustache templating for WebAssembly creation
│  └── template           # rename this to your trigger's name
|  ├── README.md          # detail about how to use this trigger
│  ├── example1.mustache  # ... 
│  └── example2.mustache  # trigger metadata
├── accounts            # inline accounts
│  └── sg_backlists.csv   # accounts uses in workflows or templating
└── workflows           # subdirectory for example workflows
   └── example1           # an example workflow
      ├── README.md          # how to use this workflow
      ├── example1.png       # picture of workflow graph from app
      └── example1.yaml      # the workflow itself
```

## Metadata definition

## Naming conventions

Hooks namespace should start with unique name with `workflow step`

```text
hookname-{step|trigger}-descriptor
```

This follows from the directory structure, where `hookname` is the top-level directory and the `steps` and `triggers` (pluralized names of the type of container) have a subdirectory named `descriptor` for each action that's available.

--------

## Foobar hook for xHookControl

This generate allows you to connect Foobar to XRPL. Foobar is a ...

## Steps

| Name | Description |
|------|-------------|
| [foobar-step-notify](steps/foobar-step-notify) | This steps sends a notification to Foobar |

## Triggers

| Name | Description |
|------|-------------|
| [foobar-trigger-receive](triggers/foobar-trigger-receive) | Trigger to handle a webhook event from Foobar |

## Workflows

| Name | Description |
|------|-------------|
| [example1.yaml](workflows/example1/) | This workflow shows you how to link the Foobar steps and triggers together |

## Contributing

### Issues

Feel free to submit issues and enhancement requests.

### Contributing Code

In general, we follow the "fork-and-pull" Git workflow.

 1. **Fork** the repo on GitHub
 2. **Clone** the project to your own machine
 3. **Commit** changes to your own branch
 4. **Push** your work back up to your fork
 5. Submit a **Pull request** so that we can review your changes

NOTE: Be sure to merge the latest from "upstream" before making a pull request!

### License

As indicated by the repository, this project is licensed under Apache 2.0.
