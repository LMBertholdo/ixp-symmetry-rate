# On the Asymmetry of Internet eXchange Points
### This is part of PAADDoS project (https://paaddos.nl) -- This work is funded by the Netherlands Organisation for Scientific Research(628.001.029) and CONCORDIA(830927).

In this repository we provide the tools and datasets we used to measure the symmetry rate of five internet exchanges: 
AMS-IX, IX.br/SP, IX.br/RS, LINX, and SIX.

The symmetry rate reflects the willingness of all IXP participants to deliver traffic traffic to other participants 
using the IXP infrastructure instead their transit providers. We found a mean symmetry rate of 85% for this five IXPs.

Our method and results are described in the paper **"On the Asymmetry of Internet eXchange Points"** (in peer review process)
In this repository you can find three folders:
* Analize: contains python notebook data analize and graphs we used in the paper
* Classifier: Software we used to process datasets and generate intermediary files for data-analyze
* Dataset: datasets collected using measurement process descripted in the paper.

You can download our colected datasets IN (https://github.com/LMBertholdo/ixp-symmetry-rate/tree/main/datasets). Each day have 1GB size.

# The following file list represent the files types of one measurement day in our dataset:

<pre>
2022-05-08
├── 2022-05-08_hitlist_ixroute.csv.gz
├── 2022-05-08_peerinfo_au-syd_auix.csv.gz
├── 2022-05-08_peerinfo_br-gru_spoixbr.csv.gz
├── 2022-05-08_peerinfo_br-poa_poaixbr.csv.gz
├── 2022-05-08_peerinfo_de-fra_decix.csv.gz
├── 2022-05-08_peerinfo_nl-ams_amsix.csv.gz
├── 2022-05-08_peerinfo_uk-lnd_linx.csv.gz
├── 2022-05-08_peerinfo_us-sea_six.csv.gz
├── IXP-Asymmetry-23_SITE-br-gru_PINGER-br-gru_DRAIN-nl-ens#ipv4,ens,gru_2022-05-08-06h05m.csv.gz
├── IXP-Asymmetry-23_SITE-br-gru_PINGER-br-gru_DRAIN-nl-ens#ipv4,ens,gru_2022-05-08-06h05m.meta
├── IXP-Asymmetry-23_SITE-br-gru_PINGER-br-gru_DRAIN-nl-ens#ipv4,ens,gru_2022-05-08-06h05m.meta-convert
├── IXP-Asymmetry-23_SITE-br-gru_PINGER-br-gru_DRAIN-nl-ens#ipv4,ens,gru_2022-05-08-06h05m.routing
├── IXP-Asymmetry-23_SITE-br-gru_PINGER-br-gru_DRAIN-nl-ens#ipv4,ens,gru_2022-05-08-06h05m.stats
├── IXP-Asymmetry-23_SITE-br-poa_PINGER-br-poa_DRAIN-nl-ens#ipv4,poa,ens_2022-05-08-06h30m.csv.gz
├── IXP-Asymmetry-23_SITE-br-poa_PINGER-br-poa_DRAIN-nl-ens#ipv4,poa,ens_2022-05-08-06h30m.meta
├── IXP-Asymmetry-23_SITE-br-poa_PINGER-br-poa_DRAIN-nl-ens#ipv4,poa,ens_2022-05-08-06h30m.meta-convert
├── IXP-Asymmetry-23_SITE-br-poa_PINGER-br-poa_DRAIN-nl-ens#ipv4,poa,ens_2022-05-08-06h30m.routing
├── IXP-Asymmetry-23_SITE-br-poa_PINGER-br-poa_DRAIN-nl-ens#ipv4,poa,ens_2022-05-08-06h30m.stats
</pre>

## hitlist_ixroute: 
This file represent how it was the routing table for each IXP/day related to each destination network we measure.
If the IXP have a route to the destination we indicate the route we used. If not is marked as default route
This is the format:
<pre>
IP,ipnum,ipgeoref,ASN,amsix,auix,linx,poaixbr,six,spoixbr
1.0.0.254,16777470,1.0.0.0/24,13335,0.0.0.0/0,1.0.0.0/24,0.0.0.0/0,0.0.0.0/0,0.0.0.0/0,0.0.0.0/0
</pre>

## peerinfo files:
Report the status on each neighbor BGP session at the time we started to measure.
Using this information we mapped our ingress-only neighbors:
<pre>
testbed@leandro-spark:~/tmp/2022-05-08$ zcat 2022-05-08_peerinfo_nl-ams_amsix.csv.gz | head
ASN,address,organization,policy,state,details.connection,details.state_changed
42,80.249.208.250,Packet Clearing House,Open,Up,Established,2022-05-08 00:00:00
112,80.249.208.39,Ripe NCC,,Up,Established,2022-05-08 00:00:00
</pre>

## Verfploter files:
This set of tools provided here is part of the Tangled anycast testbed
(https://anycast-testbed.nl).

Each measurement is identifyed by filename. Here we just listed one file to exemplify.

#### IXP-Asymmetry-23_SITE-br-gru_PINGER-br-gru_DRAIN-nl-ens#ipv4,ens,gru_2022-05-08-06h05m.csv.gz

#### In the name we indicate the prefix size test(24/23).
Which one was the ixp this measuremente reffers (SITE-NODE).
Where we originate the packets (<b>PINGER</b>), and the used <b>DRAIN-NODE</b>.
On <b>.ROUTING</b> files you can check details of BGP configuration applied on each site.
On <b>.STATS</b> you have statistics about how much percent of global traffic was received in each site.

We produced more than a hundred measurement files everyday. All of them are in CSV file to make it
easy to load. Follow and example of verfploter file. Refers to Verfploter documentation to see internal format details.
<pre>
testbed@leandro-spark:~/tmp/2022-05-08$ zcat IXP-Coverage-Exclusive-24_SITE-us-sea_PINGER-us-sea_DRAIN-none#ipv4,sea_2022-05-08-03h29m.csv.gz | head
task_id,client_id,transmit_time,receive_time,send_receive_time_diff,source_address,destination_address,meta_source_address,meta_destination_address,ttl,source_address_country,source_address_asn
7,us-sea-anycast01,1651980646535371326,1651980646536871758,1.500432,1.0.0.254,145.100.119.1,145.100.119.1,1.0.0.254,59,AU,13335
7,us-sea-anycast01,1651980646539996455,1651980646540928119,0.931664,1.1.1.254,145.100.119.1,145.100.119.1,1.1.1.254,59,AU,13335
7,us-sea-anycast01,1651980646562006942,1651980646725618821,163.611879,1.11.92.65,145.100.119.1,145.100.119.1,1.11.92.65,244,KR,45996
</pre>





