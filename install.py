#!/usr/bin/env python2

import os
import subprocess
import sys

force = False

def copy(destname, sourcename):
  if os.path.isfile(destname) and not force:
    while True:
      message = "File '{}' already exists, overwrite? (y/n) ".format(destname)
      ans = raw_input(message).lower()
      if ans == "y":
        break
      if ans == "n":
        return
  cmd = "cp {} {}".format(sourcename, destname)
  subprocess.call(cmd.split(" "))

def filter_name(name):
  if name == os.path.basename(__file__):
    return False
  if name[0] == "." or name[0] == "#":
    return False
  if name[-1] == "~":
    return False
  if name == "README.md":
    return False
  return True

def main():
  global force

  make_dot = lambda name: os.path.expanduser("~/." + name)
  localnames = filter(filter_name, os.listdir("."))
  filenames = map(os.path.abspath, localnames)

  for arg in sys.argv[1:]:
    if arg == "-f":
      force = True
    elif arg in localnames:
      copy(make_dot(arg), os.path.abspath(arg))
      return

  dot_filenames = map(lambda name: os.path.expanduser("~/." + name), localnames)

  for destname,sourcename in zip(dot_filenames, filenames):
    copy(destname, sourcename)

if __name__ == "__main__":
  main()
