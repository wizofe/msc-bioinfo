# How to SSH from your computer to Birkbeck Crystallography 

## A quick intro to `ssh`

`SSH` stands for Secure Shell, a cryptographic protocol used to connect devices over a potentially unsecured network connection. It has been in use since the late 1990s primarily as a way to access remote servers requiring user authentication, which is exactly what we are trying to do by connecting remotely to the `hope` server.

Using `SSH` successfully does not require advanced knowledge of network security or mathematical encryption. However, it does involve navigating a UNIX-like command-line interface. This tutorial will take you through all the basics you need to know to get started with the command line on your operating system and connect to `hope` with minimum struggle.

## A (very) brief introduction to command-line interfaces

The Command Line Interface (or CLI) originated in mid-1960s computer terminals like the IBM machine in the image below. These were modelled on typewriters and did not always include display monitors, instead featuring just a keyboard and printer. Technological limitations forced the adoption of a text-based system for navigating filing systems.

![an old terminal](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/IBM2741.JPG/1280px-IBM2741.JPG)

Today, it is the norm and not the exception for a computer to include a display. The advent of graphical user interfaces revolutionised the way computers were used and extended their appeal beyond secretarial and accounting departments. Command-line interfaces are still packaged with every UNIX-based system (e.g., OSX, Linux) and can be emulated in Windows, but given the demands they place on our memory and concentration, why should we bother?

I don't think graphical user interfaces really improved on the tasks that computers were first used for. Yes, you can effortlessly browse Facebook on a MacBook Pro, but how quickly could you list the contents of your hard drive? Where would you go to find out your IP address? The tasks that computing professionals typically do require the command line. Hopefully you will see that is an elegant solution to many common problems in bioinformatics.

Command-line interfaces respond to commands. These are short words which may sometimes be followed by a file path or optional characters to specify additional details. Here are a few of the most popular and useful command-line commands:

- `whoami`
No, this isn't a philosophy lesson. This command simply returns the username you are currently using to access the system. This can be useful to check you have logged in correctly.

- `pwd` (Print Working Directory)
In other words, where am I? This command tells you which directory (or folder) you are currently operating in.

- `ls` (LiSt the contents of the current directory)
Third question, what is there? (In philosophy this is called ontology!) This command gives you a list of all the files and folders located in your current working directory. This is very useful for navigating around your file system. Use it whenever you forget the name of the file you want to open.

- `cd` (Change Directory)
Let's get moving! `cd foo` will move you to the directory specified by `foo`. Note that `foo` is just a [placeholder](https://tools.ietf.org/html/rfc3092) for a real directory, in practice you would use the command like `cd ~/bioinformatics/coursework` instead.

- `mkdir foo` (MaKe a new DIRectory)
Another verb, this time creating a new folder `foo` in your working directory.

- `nano foo`
This command creates or opens the file `foo` in a basic text editor. Make sure to specify the file extension when running this command, such as `nano foo.py` for creating a Python script.

Are you ready to wave goodbye to graphical user interfaces forever? Ready to access any computer around the world with just a few keystrokes? I hope so, because in the next section I'll explain how to get started with the command-line interface and `SSH` on your operating system.

## Linux/OSX (Unix-based systems)

If you use a Unix-based system such as OSX or a distribution of Linux then you will have a terminal included with your system. Mac users can press `⌘ + Space` to open the Spotlight search bar and type `terminal`. In Linux, how you you access the terminal will depend to some extent on your particular distribution, but in several user-friendly distributions you can simply right-click on the desktop and find it in the drop-down menu.

The `SSH` process is started from the terminal so make sure you have opened a new window. It does not matter what working directory you are in. 

The first step is to create a secure connection between your machine and the host, which in this case is `user@ssh.cryst.bbk.ac.uk`. The command we are using is `ssh foo` where `foo` is the host address.

```
ssh user@ssh.cryst.bbk.ac.uk
```

Note that when typing in the command, you should replace `user` with the username provided to you by the deparment. You will be immediately prompted to enter a password which is again the one provided to by the deparment.

Congratulations! If you did everything correctly, you should now be connected to the command-line interface of `hope`. Everything you do now is taking place on that server so bear in mind the rules regarding fair and proper use of departmental hardware.

## Windows

Windows users can download and install [SmarTTY](http://smartty.sysprogs.com/) which is similar to the terminal software that comes bundled with Unix-based systems. Advanced users may seek out alternatives which give them additional benefits such as syntax highlighting, but the fundamental utility of any terminal software for `SSH` and command-line commands is the same.

After installing the client of your choice, you can follow the instructions for Linux/OSX users above to `SSH` to `hope`. Note that command-line commands are generally independent of the operating system they run on.

## Further reading

- One of the first things you will want to do is transfer files between your personal computer and the server. Read about the `scp` command which [securely copies files and directories between remote hosts](https://kb.iu.edu/d/agye).

- There are many other introductions to command-line interfaces available on the internet which give more detail about the underlying Unix philosophy. If you're interested, try these from [DigitalOcean](https://www.digitalocean.com/community/tutorials/an-introduction-to-the-linux-terminal) and [Cambridge University](https://help.uis.cam.ac.uk/help-support/training/downloads/course-files/programming-student-files/unix-cli).

- If you want to learn more about `SSH` and encryption, the tutorial on [DigitalOcean](https://www.digitalocean.com/community/tutorials/understanding-the-ssh-encryption-and-connection-process) is an excellent place to start.

## Contribute

If you notice any mistakes in content or formatting, please send a pull request with your correction.

## Copyright
This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.<br />
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a>
