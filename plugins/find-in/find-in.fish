# The MIT License
#
# Copyright (c) Simon Lees <http://simotek.net/> and contributors
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

function find-in -d "Find a string in a file"
    switch (count $argv)
        case 2
            find $argv[2] -type f -exec grep -Hns --color=auto $argv[1] '{}' \;
        case 3
            find $argv[3] -type f -exec grep -Hns --color=auto $argv[1] $argv[2] '{}' \;
        case '*'
            echo "find-in finds occurances of a Pattern in a text File"
            echo "Usage: find-in [OPTION] PATTERN FILES"
            echo "    Where [OPTION] is a Regexp selection as defined by grep --help"
    end
end