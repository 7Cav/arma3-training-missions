#!/usr/bin/env python3

import sys, os, shutil
import argparse

__version__ = 1.0

# set projecty path
scriptPath = os.path.realpath(__file__)
scriptDir = os.path.dirname(scriptPath)
rootDir = os.path.dirname(os.path.dirname(scriptPath))
os.chdir(rootDir)

def request_action(text='Continue?'):
    Continue_Count = 0
    while(True):
        yes_no = input('{} (Yes or No)\n> '.format(text))
        yes_no = yes_no.lower()
        if (yes_no == 'yes' or yes_no == 'y'):
            return True
        elif (yes_no == 'no' or yes_no == 'n'):
            return False
        else:
            pass
        Continue_Count += 1
        if Continue_Count >= 3:
            sys.exit()
        print('Write yes (y) or no (n)')


def checkForcScripts(path=''):
    cScriptsControllFiles = [
        '\\cScripts',
        '\\cScripts\\script_component.hpp',
        '\\cScripts\\CavFnc\\cScripts_postInit.sqf',
        '\\cScripts\\CavFnc\\functions\\script_component.hpp',
        '\\description.ext',
        '\\initServer.sqf'
    ]
    for c in cScriptsControllFiles:
        if not os.path.exists('{}{}'.format(path,c)):
            sys.exit('Error: cScripts could be detected within the given directory.')
    print('cScripts location is valid...')


def checkIfFileExist(path='',force=False):
    filelist = [
        'cScripts',
        'description.ext',
        'init.sqf',
        'initServer.sqf',
        'cba_settings.sqf'
    ]
    remove = False
    for i in filelist:
        if os.path.exists('{}\\{}'.format(path,i)):
            if not force:
                print('{} already exist...'.format(i))
                if os.path.exists('{}\\setup.json'.format(path)):
                    remove = request_action('Do you whant to replace the file and continue?')
                else:
                    remove = request_action('WARNING: \'setup.json\' does not exist and have not been setup. Continuing may have consiquenses on mission preformence and setup.\nDo you whant to replace the file and continue?')
            if remove or force:
                try:
                    os.remove('{}\\{}'.format(path,i))
                except:
                    shutil.rmtree(('{}\\{}'.format(path,i)))
    else:
        return False


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
    parser.add_argument('mission',
        help='Define mission specific use * for all.'
    )

    parser.add_argument('--force', '-f',
        help='Force this will overwrite and ignore all warnings. WARNING: \'setup.json\' does not exist and have not been setup. Continuing may have consiquenses on mission preformence and setup.',
        action='store_true'
    )

    parser.add_argument('--version', action='version', version='Author: Andreas Broström <andreas.brostrom.ce@gmail.com>\nScript version: {}'.format(__version__))

    args = parser.parse_args()

    # setting up linking
    print('Setting up development enviroment...')

    # Check if cscripts exist in side of given directory
    print('Looking for cScripts in given location \'{}\''.format(args.path))
    checkForcScripts(args.path)

    # Fetch files and apply blacklist
    mission_list = os.listdir(rootDir)
    if not args.mission == "*":
        if args.mission in mission_list:
            mission_list = [args.mission]
        else:
            sys.exit('There are no mission by that name...')

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
    
    # fetch cScripts files and remove blacklisted
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
            continue

        #check if mission already have cScripts
        if checkIfFileExist('{}\\{}'.format(rootDir,mission),args.force):
            continue

        for obj in content:
            try:
                os.symlink('{}\\{}'.format(args.path,obj), '{}\\{}\\{}'.format(rootDir,mission,obj))
                print('Linking', '{}\\{}'.format(args.path,obj).ljust(62), '<===>'.ljust(8), '{}\\{}\\{}'.format(rootDir,mission,obj))
                continue
            except:
                pass



    #os.symlink(src, dst)

if __name__ == "__main__":
    sys.exit(main())