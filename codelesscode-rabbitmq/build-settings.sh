defineEnvVar PARENT_IMAGE_TAG "The tag of the RabbitMQ image" "0.11";
defineEnvVar RABBITMQ_ULIMIT_N "The ulimit -n value to use when launching RabbitMQ" "50000";
overrideEnvVar TAG 'latest';
defineEnvVar DEFAULT_SKIP_BOOTSTRAP "Whether to skip the bootstrap process, by default" "false";
defineEnvVar DEFAULT_BOOTSTRAP_FAIL_FAST "Whether to fail fast the bootstrap process, by default" "false";
defineEnvVar DEFAULT_FORCE_BOOTSTRAP "Whether to force the bootstrap process, by default" "true";
defineEnvVar RABBITMQ_USER "The RabbitMQ user" "rabbitmq";
defineEnvVar RABBITMQ_PASSWORD "The RabbitMQ password" "secret" "${RANDOM_PASSWORD}";
defineEnvVar RABBITMQ_EXCHANGE "The RabbitMQ exchange" '${NAMESPACE}';
defineEnvVar RABBITMQ_VIRTUALHOST "The RabbitMQ virtual host" '${NAMESPACE}';
defineEnvVar RABBITMQ_QUEUE "The queue in RabbitMQ" "exchange@queue";
defineEnvVar RABBITMQ_ROUTING_KEY "The RabbitMQ routing queue" "#";
defineEnvVar RABBITMQ_ULIMIT_N "The ulimit -n value to use when launching RabbitMQ" "50000";
defineEnvVar SERVICE_USER "The service user" '${RABBITMQ_USER}';
defineEnvVar SERVICE_GROUP "The service group" '${SERVICE_USER}';
defineEnvVar SERVICE_USER_HOME "The home of the service user" '/home/${SERVICE_USER}';
defineEnvVar SERVICE_USER_SHELL "The shell of the service user" '/bin/bash';
#
