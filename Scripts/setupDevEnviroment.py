#!/usr/bin/env python3

import sys, os
import argparse

__version__ = 1.0

# set projecty path
scriptPath = os.path.realpath(__file__)
scriptDir = os.path.dirname(scriptPath)
rootDir = os.path.dirname(os.path.dirname(scriptPath))
os.chdir(rootDir)

def main():
    # Handle argumets
    parser = argparse.ArgumentParser(
        prog='setupDevEnviroment',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        description='',
        epilog=''
    )
    parser.add_argument('path',
        help='Define the fullpath to the cScripts directory.'
    )
    parser.add_argument('--version', action='version', version='Author: Andreas Broström <andreas.brostrom.ce@gmail.com>\nScript version: {}'.format(__version__))

    args = parser.parse_args()

    # setting up linking
    print('Setting up development enviroment...')

    # Check if cscripts exist in side of given directory
    print('Checking cScripts location \'{}\''.format(args.path))

    cScriptsControllFiles = [
        '\\cScripts',
        '\\cScripts\\script_component.hpp',
        '\\cScripts\\CavFnc\\cScripts_postInit.sqf',
        '\\cScripts\\CavFnc\\functions\\script_component.hpp',
        '\\description.ext',
        '\\initServer.sqf'
    ]
    for c in cScriptsControllFiles:
        if not os.path.exists('{}{}'.format(args.path,c)):
            sys.exit('Error: No cScript could be detected within the given directory.')
    print('cScripts location is valid...')

    # Fetch files and aply blacklist
    mission_list = os.listdir(rootDir)
    blacklist_files = [
        '.git',
        '.github',
        'Compositions',
        'doc',
        'release',
        'resourses',
        'tools',
        '.editorconfig',
        '.gitattributes',
        '.gitignore',
        '.gitmodules',
        'LICENSE',
        'README.md',
        'Scripts',
        'mission.sqm'
    ]
    for f in blacklist_files:
        try:
            mission_list.remove(f)
        except:
            pass
    
    # fetch cScript files and remove blacklisted
    content = os.listdir(args.path)
    for f in blacklist_files:
        try:
            content.remove(f)
        except:
            pass

    for mission in mission_list:
        print('\nSetting up dev links for {}'.format(mission))

        # Check if its a mission
        if not os.path.exists('{}\\{}\\mission.sqm'.format(rootDir,mission)):
            print('{} is not a mission skipping...'.format(mission))
            continue

        #check if mission already have cScripts
        if os.path.exists('{}\\{}\\cScripts'.format(rootDir,mission)):
            print('cScripts already installed in this mission skipping...')
            continue
        if os.path.exists('{}\\{}\\description.ext'.format(rootDir,mission)):
            print('description.ext already setup in this mission skipping...')
            continue
        if os.path.exists('{}\\{}\\init.sqf'.format(rootDir,mission)):
            print('init.sqf already setup in this mission skipping...')
            continue

        for obj in content:
            try:
                os.symlink('{}\\{}'.format(args.path,obj), '{}\\{}\\{}'.format(rootDir,mission,obj))
                print('Linking', '{}\\{}'.format(args.path,obj).ljust(62), '<===>'.ljust(8), '{}\\{}\\{}'.format(rootDir,mission,obj))
                continue
            except:
                print('Warning: {} already exist for {} skipping...'.format(obj, mission))



    #os.symlink(src, dst)

if __name__ == "__main__":
    sys.exit(main())