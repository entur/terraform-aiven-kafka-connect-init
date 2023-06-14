# Init module for Aiven's KafkaConnect modules

Terraform module for initiating Aiven's KafkaConnect modules

## Main init module

A data-only module that fetches information about Aiven infrastructure.
Produces a variety of useful outputs based on few inputs.

[Module](modules/init)

[Example](examples/init/main.tf)

## Getting started

<!-- ci: x-release-please-start-version -->

### Example using the latest release

```terraform
module "init" {
  source = "github.com/entur/terraform-aiven-kafka-connect-init//modules/init?ref=v1.1.5"
  # rest of the parameters to the module to follow here
}
```

<!-- ci: x-release-please-end -->

See the `README.md` under each module's subfolder for a list of supported inputs and outputs. For examples showing how
they're implemented, check the [examples](examples) subfolder.

### Version constraints

You can control the version of a module dependency by adding `?ref=TAG` at the end of the source argument, as shown in
the example above. This is highly recommended. You can find a list of available
versions [here](https://github.com/entur/terraform-aiven-kafka-connect-init/releases).

Dependency automation tools such as Renovate Bot will be able to discover new releases and suggest updates
automatically.
