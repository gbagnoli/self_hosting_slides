% Self Hosting in 2025: A practical approach
% giacomo
% @@DATE@@

# Ma soprattuto, perché?

* Non è una questione di soldi 💸, ne di privacy 🥸
* Sostanzialmente una questione di controllo
* Soprattutto, sicuramente vi deluderò 😆 ↓

::: notes
un po' anche un hobby
ognuno lo fa al livello che si sente
:::

## Disclaimer:

* Praticità vs privacy
* Opinionato

::: notes
L'idea e offrire un esempio e spunti
:::

# Goals

* ✅ Funzionale. Se è peggio di google, uso google
* 🙈 Usabile da non tecnici.
* 💆 Sempre accessibile.
* 🔒 Sicuro.
* 😌 Semplice (da mantenere)

::: notes
Deve funzionare sempre anche se sono in un tubo di metallo a 10k metri
non c'e privacy senza security
relativamente semplice
odio i backup
:::

# Setup

![](images/network.png){ width=40% }

* 🏠 RPI5 con PoE hat e NVME pci-ex (1x1Tb)
* ☁️  calculon: server da oneprovider (2x5Tb)
* distro:
  - ubuntu sui RPI5, rocky9 (!!!) su calculon
  - 💻 bazzite su workstation, bluefin su laptop

## Networking

![](images/network.png){ width=40% }

* Tutti gli indirizzi routabili
    * 🏠 172.25.2.0/24 | fd05:f439:6000:ffff::0/64
    * ☁️  172.25.25.0/24 | fd05:f439:6192:ffff::0/64
* Internal DNS via pihole + tailscale
* External DNS su cloudflare

# Apps

* files (syncthing) 🏠 rpi, ☁️ server
* passwords (keepass) 🏠, ☁️ , 💻
* vpn (tailscale) 🏠, ☁️ , 💻
* vpi infra (headscale) ☁️
* DNS resolvers (pihole) 🏠, ☁️
* unifi controller 🏠
* \*arr 🤫 - ☁️
* IRC client (thelounge) ☁️

## Cosa non-hosto

* DNS pubblico (cloudflare)
* email (protonmail)
* photos (gphotos)

# Have fun!
