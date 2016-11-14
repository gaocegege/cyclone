#!/bin/sh

curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{
  "name": "test",
  "description": "test",
  "ip": "127.0.0.1",
  "docker_host": "0.0.0.0:2375",
  "type": "system",
  "total_resource": {
    "memory": 5368709120,
    "cpu": 1024
  }
}' 'http://localhost:7099/api/v0.1/system_worker_nodes'
