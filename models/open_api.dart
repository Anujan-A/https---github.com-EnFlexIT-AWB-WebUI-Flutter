//Wird genutzt zur generierung der API SDK

import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  additionalProperties:
      AdditionalProperties(pubName: 'AWb_api', pubAuthor: 'Anujan Arulnesan'),
  inputSpecFile: 'models/openapi.json',
  generatorName: Generator.dio,
  outputDirectory: 'api',
)
class Login extends OpenapiGeneratorConfig {}
