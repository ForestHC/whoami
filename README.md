whoami
======

Simple HTTP docker service that prints it's container ID

    $ docker run -d -p 8000:8000 --name whoami -t foresthc/whoami
    768c26532ff96ac8999990250ab0301908f259272a826e699dcf8f300f0047fb

    $ curl $(hostname --all-ip-addresses | awk '{print $1}'):8000
    I'm 768c26532ff9
