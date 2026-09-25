
## Bash Commands

export - create environment variables
systemctl - Manages Services

### schedule execution
at $date -f myscript - $date can be just the hour(18:00) or $DATE
atq - queue of the at

atrm id - remove schedule

### output redirect

1>dev/null - standard output -> everything printed that's not an error

2>dev/null - standard error -> everything printed that's an error

x> output.txt

### Transversal
cd folderPath
cd /
cd ~- 
cd ~+

ls 
ls -l 
ls -a

### File/Directory Management

sudo - Run command as administrator nano -Edit files touch - Create Files

mkdir - Create Directory rmdir - Delete Directory rm - Delete File or Directories

chmod +x +r +w - Manage File permissions mv file /folder - Move File

### Bash Operations

echo - output text cat - output file content

#### file/dir exist
-f

-d

#### compare values/files
-eq

-gt | -ge

-lt | -le

diff - compare two files

#### Select/Search lines

head - file first lines 

tail - file last lines

find - Search files and directories 
grep - Search text in files 
egrep - Search text patterns in files

### Network
ip - Manage network settings ping - ping another device curl - Transfer data via URL wget - Download files from the web







# QUESTION/SCENARIOS
## 1
Question: How do you check if the 'nginx' service is running? systemctl status nginx systemctl list-units --type=service #list all services systemctl is-enabled nginx # is enabled on boot

## 2
"Where are the logs for the 'docker' service?" systemctl status ssh

View last 50 lines of logs journalctl -u ssh -n 50

Follow logs in real-time journalctl -u ssh -f

## 3
A script at /home/user/backup.sh is not executing. When you run it: ./backup.sh You get: "Permission denied"

What commands would you use to fix this? ls -l /home/user/backup.sh chmod +x /home/user/backup.sh