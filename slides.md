% Self Hosting in 2025: A practical approach
% giacomo
% @@DATE@@

# Ma soprattuto, perché?

* Non è una question di soldi, ne (solo) di privacy
* Sostanzialmente una questione di controllo
* Soprattutto, sicuramente vi deluderò :) ⤵

## Disclaimer

* Un approccio molto ibrido tra il funzionale e il privato
* Sopratutto molto opinionato (ovviamente)
* L'idea è solo di offrire spunti
* Per questo farò esempi usando il mio setup :)

# Goals

* Funzionale. Se è peggio di google, uso google
  * non devo fare hosting di tutto per forza
* Usabile da non tecnici.
* Sempre accessibile.
* Sicuro.

# Setup

![](images/network.png){ width=50% }

* RPI5 con PoE hat e NVME pci-ex (1Tb)
* calculon: server da oneprovider
* distro:
  * ubuntu sui RPI5, rocky9 (!!!) su calculon
  * bazzite su workstation, bluefin su laptop

## Apps

* files (syncthing)
* passwords (keepass)
* vpn (headscale)
* DNS resolvers (pihole)
* unifi controller
* \*arr :)
* IRC client (thelounge)

## Cosa non-hosto

* DNS (cloudflare)
* email (protonmail)
* photos (gphotos)
*


# Have fun!
