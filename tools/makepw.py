#!/usr/bin/env python

# Generates a pbkdf2_sha1 hash suitable for creating credential in lup1 database

from hashlib import pbkdf2_hmac
from base64 import b64decode
import os
import sys

rounds = 10000
salt_size = 24

salt = os.urandom(salt_size)
hashed = pbkdf2_hmac('sha1', sys.argv[1].encode(), salt, rounds)

print("{}:{}:{}".format(rounds, salt.hex(), hashed.hex()))
