Purpose
----

Sample project showing the aws-sdk S3 error:

```
/usr/local/lib/ruby/2.2.0/net/http.rb:879:in `initialize': unable to connect to `mybucket.localstack`; SocketError: getaddrinfo: Name or service not known (Seahorse::Client::NetworkingError)` raised by Aws Seahorse.
```

Containers
-------

- Localstack: a simple [localstack](https://github.com/localstack/localstack) docker container, configured to handle S3 only
- Api: a simple ruby 2.2.5 with a script exposing the problem

Problem
-------

I want to use `aws-sdk` with [localstack](https://github.com/localstack/localstack) for S3 usage, both in their container to ease maintenance.
We can see that api container can reach without a problem the localstack container via the configured link.

For unknown reason, the `aws-sdk-s3` try to reach `BUCKET.localstack` and fail.

Tested
-----

* localstack on the same container that the script: ❌ same results
* adding BUCKET.localstack in /etc/hosts: ❌ same results
