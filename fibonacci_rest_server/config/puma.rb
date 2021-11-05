require('json')
require('logger')
require_relative('settings')

port(Config::Settings::REDESIGNED_BARNACLE_PORT)
threads(Config::Settings::REDESIGNED_BARNACLE_MIN_THREADS, Config::Settings::REDESIGNED_BARNACLE_MAX_THREADS)
workers(Config::Settings::REDESIGNED_BARNACLE_MAX_WORKERS)