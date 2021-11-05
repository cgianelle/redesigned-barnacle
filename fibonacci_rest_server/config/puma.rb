require('json')
require('logger')
require_relative('settings')

port(Config::Settings::REDESIGNED_BARNACLE_PORT)
threads(Config::Settings::REDESIGNED_BARNACLE_MIN_WORKERS, Config::Settings::REDESIGNED_BARNACLE_MAX_WORKERS)