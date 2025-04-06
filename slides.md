% Self Hosting in 2025: A practical approach
% giacomo
% @@DATE@@

# Ma soprattuto, perché?

* Non è una questione di soldi 💸, ne di privacy 🥸
* Sostanzialmente una questione di controllo

::: notes
un po' anche un hobby
ognuno lo fa al livello che si sente
:::

# Disclaimer:

* Praticità vs privacy
* Opinionato

::: notes
Sicuramente il mio non è un approccio "puro"
sicuramente vi deluderò 😆 ↓
L'idea e offrire un esempio e spunti
:::

# Goals

* ✅ Funzionale.
* 🙈 Usabile dai non addetti ai lavori.
* 💆 Sempre accessibile.
* 🔒 Sicuro.
* 😌 Semplice (da mantenere)

::: notes
se i servizi di google sono meglio, uso google
Deve funzionare sempre anche se sono in un tubo di metallo a 10k metri
non c'e privacy senza security
relativamente semplice
odio i backup
:::

# Setup

![](images/network.png){ width=60% }

::: notes
:::

# Setup - home

![](images/network_rpi_highlight.svg){ width=50% }

🏠 RPI5 con PoE hat e NVME pci-ex bottom (1x1Tb)

* distro: ubuntu 24.04 - snap + flatpack
* 💻 bazzite su workstation, bluefin su laptop

# Setup - cloud

![](images/network_cloud_highlight.svg){ width=50% }

* ☁️  calculon: server da oneprovider (2x5Tb)
* rocky9 (!!!) con kernel da EPEL per btrfs

::: notes
rocky era l'unica opzione del provider
:::

# Networking

![](images/network.png){ width=40% }

* Tutti gli indirizzi routabili
    * 🏠 172.25.2.0/24 | fd05:f439:6000:ffff::0/64
    * ☁️  172.25.25.0/24 | fd05:f439:6192:ffff::0/64
* Internal DNS via pihole + tailscale, external DNS su cloudflare

::: notes
:::

# Apps

* files (syncthing) 🏠 rpi, ☁️ server
* passwords (keepass) 🏠, ☁️ , 💻
* vpn (tailscale) 🏠, ☁️ , 💻
* vpi infra (headscale) ☁️
* DNS resolvers (pihole) 🏠, ☁️
* unifi controller 🏠
* \*arr 🤫 - ☁️
* IRC client (thelounge) ☁️

::: notes
:::

# Cosa non-hosto

* DNS pubblico (cloudflare)
* email (protonmail)
* photos (gphotos)

::: notes
:::

# Have fun!
