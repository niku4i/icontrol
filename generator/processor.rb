#!/usr/bin/ruby
require 'fileutils'

require File.dirname(__FILE__) + '/ast_tree'
DEST_DIR=ARGV[0]

root = Marshal.load(File.open("Todo.dat").read)

new_root = ModuleDeclaration.new

#FileUtils.remove_dir(DEST_DIR,true)
#Dir.mkdir(DEST_DIR)
Dir.chdir(DEST_DIR)

new_root.properties[:name] = "IControl"
new_root.children = root.children
new_root.children.each { |i| i.parent = new_root }

new_root.parent = nil
new_root.compile