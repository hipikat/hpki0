
from importlib.util import spec_from_file_location, module_from_spec
import os
from os.path import dirname, join as join_paths

from django.conf import settings
from django.core.management.base import BaseCommand


PROJECT_DIR = dirname(dirname(settings.BASE_DIR))

class Command(BaseCommand):
    help = 'Print a random SECRET_KEY string'

    def handle(self, *args, **options):
        script_path = join_paths(PROJECT_DIR, 'scripts', 'generate_secret_key.py')
        spec = spec_from_file_location("ext_utils.generate_secret_key", script_path)
        key_module = module_from_spec(spec)
        spec.loader.exec_module(key_module)
        print(key_module.secret_key())
