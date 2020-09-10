#!/bin/bash
var=$(date +"-%Y-%m-%d-%H-%M-%S")
tar -czvf ~/domains/dev.wp.eestec.pl/backups/backup-uploads$var.tar.gz ~/domains/dev.wp.eestec.pl/public_html/wp-content/uploads 

