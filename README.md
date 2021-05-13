# redesigned-barnacle
Ruby Fibonacci: Playing with Sinatra, gRPC, and Cloud Deployments (GPC and AWS), and probably docker as well

## Running RSpec tests
~~~~
rspec --format doc
~~~~

## Running the Application
~~~~
ruby server.rb 
~~~~

## Deploying to GPC VM
### Create Firewall Rule
Create a firewall rule to allow ingress traffic to port 4567
~~~~
{
  "allowed": [
    {
      "IPProtocol": "tcp",
      "ports": [
        "4567"
      ]
    }
  ],
  "creationTimestamp": "2021-05-12T19:10:36.558-07:00",
  "description": "",
  "direction": "INGRESS",
  "disabled": false,
  "enableLogging": false,
  "id": "8315974024541844595",
  "kind": "compute#firewall",
  "logConfig": {
    "enable": false
  },
  "name": "barnacle-fibo",
  "network": "projects/beaming-source-302514/global/networks/default",
  "priority": 1000.0,
  "selfLink": "projects/beaming-source-302514/global/firewalls/barnacle-fibo",
  "sourceRanges": [
    "0.0.0.0/0"
  ],
  "targetTags": [
    "barnacle-fibo"
  ]
}
~~~~

### Create the VM
Create a VM with a container image
`cgianelle1976/barnacle_fibo:latest`

For networking, set the network tag to the firewall rule created above, "barnacle-fibo"

