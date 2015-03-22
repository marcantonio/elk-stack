1. bundle install

2. knife cookbook upload -o site-cookbooks:cookbooks -a

3. knife role from file roles/*

4. knife bootstrap ddg-cc.local --ssh-user mas --sudo --node-name elk-example

5. knife node edit elk-example

        "run_list": [
            "role[elkstack-all-in-one]"
        ]

6. knife ssh name:elk-example "sudo chef-client" -x mas -a ipaddress

7. http://ddg-cc.local/
