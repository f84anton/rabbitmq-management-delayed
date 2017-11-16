FROM rabbitmq:3.6-management

ADD https://dl.bintray.com/rabbitmq/community-plugins/rabbitmq_delayed_message_exchange-0.0.1.ez /plugins/
RUN chmod g+r,o+r /plugins/*.ez
RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange

