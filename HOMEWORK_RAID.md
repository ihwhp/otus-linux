# Домашняя работа по RAID

Добавляем диск в Vagrant file:

```
 :sata5 => {
                        :dfile => './sata5.vdi',
                        :size => 250, # Megabytes
                        :port => 5
                },
```
