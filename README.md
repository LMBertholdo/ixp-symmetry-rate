# On the Asymmetry of Internet eXchange Points

In this repository we provide the tools and datasets we used to measure the symmetry rate of five internet exchanges: 
AMS-IX, IX.br/SP, IX.br/RS, LINX, and SIX.

The symmetry rate reflects the willingness of all IXP participants to deliver traffic traffic to other participants 
using the IXP infrastructure instead their transit providers. We found a mean symmetry rate of 85% for this five IXPs.

Our method and results are described in the paper 

"On the Asymmetry of Internet eXchange Points - What You See Is Not Always What You Get" (in peer review process)

You can download our colected datasets (Verploter files) for each day we measure using the links below (every file 1GB) :



The following tree represent one measurement day:
hitlist_ixroute: 
This file represent how it was the routing table for each IXP/day related to each destination network we measure.
If the IXP have a route to the destination we indicate the route we used. If not is marked as default route
This is the format:
IP,ipnum,ipgeoref,ASN,amsix,auix,linx,poaixbr,six,spoixbr
1.0.0.254,16777470,1.0.0.0/24,13335,0.0.0.0/0,1.0.0.0/24,0.0.0.0/0,0.0.0.0/0,0.0.0.0/0,0.0.0.0/0

peerinfo files report the status on each neighbor BGP session at the time we started to measure.
Using this information we mapped our ingress-only neighbors:
testbed@leandro-spark:~/tmp/2022-05-08$ zcat 2022-05-08_peerinfo_nl-ams_amsix.csv.gz | head
ASN,address,organization,policy,state,details.connection,details.state_changed
42,80.249.208.250,Packet Clearing House,Open,Up,Established,2022-05-08 00:00:00
112,80.249.208.39,Ripe NCC,,Up,Established,2022-05-08 00:00:00

Verfploter files:
Each measurement we made is named differently. Here we just listed some files to exemplify.
Folow the naming convention we used:

IXP-Asymmetry-23_SITE-br-gru_PINGER-br-gru_DRAIN-nl-ens#ipv4,ens,gru_2022-05-08-06h05m.csv.gz

In the name we indicate the prefix size test(24/23). Where we originate the packets (PINGER).
Which one was the ixp this measuremente reffers (SITE-NODE), and the used DRAIN-NODE.
On .ROUTING files you can check details of BGP configuration applied on each site.
On .STATS you have statistics about how much percent of global traffic was received in each site.


There are more than a hundred files each measurement day. All of them are in CSV file to make it
easy to load. Refers to Verfploter documentation to see internal format details.



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

