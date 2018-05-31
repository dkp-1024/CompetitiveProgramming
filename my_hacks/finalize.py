import sublime
import sublime_plugin
import os
class finalize(sublime_plugin.WindowCommand):
    def run(self, cmd):
        if "$file_name" in cmd:
          view = self.window.active_view()
          cmd = cmd.replace("$file_name",view.file_name())
        if "$file_dir" in cmd:
          view = self.window.active_view()
          cmd = cmd.replace("$file_dir",os.path.split(view.file_name())[0])
        print ('Running custom command:', cmd)
        os.system(cmd + " &")
