import os
import sys
import shutil

class DuplicateFile(BaseException):
    def __init__(self, msg):
        self.msg = msg
        pass

if __name__ == '__main__':
    ignore_dir = 'build'
    lst_to_be_copy = ['.tex', '.jpg', '.png']

    start_path = sys.argv[1]
    target_path = sys.argv[2]

    map_filename = {}

    try:
        for root, dirs, files in os.walk(start_path):
            for fn in files:
                src_name = os.path.join(root, fn)

                #check ignore
                if os.path.split(src_name)[0] == os.path.join(start_path, ignore_dir):
                    continue

                #check duplicate file name
                if map_filename.has_key(fn):
                    msg = ''
                    msg = msg + 'duplicate file names:\n'
                    msg = msg + (' prev : %s\n' % map_filename[fn])
                    msg = msg + (' curr : %s\n' % src_name)
                    raise DuplicateFile(msg)

                #copy file
                if os.path.splitext(src_name)[1] in lst_to_be_copy:
                    map_filename[fn] = src_name
                    dst_name = os.path.join(target_path, fn)

                    print 'cp %s %s' % (src_name, dst_name)
                    shutil.copy(src_name, dst_name)
                pass #end of for fn in files:
            pass #end of for root, dirs, files in os.walk(start_path):

        print 'copy %d files' % len(map_filename) 

    except DuplicateFile as e:
        print
        print 'Exception:'
        print e.msg
        sys.exit(-1)

