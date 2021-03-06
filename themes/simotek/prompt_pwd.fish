# simotek prompt theme, by Simon Lees <http://github.com/simotek/>
function prompt_pwd --description 'Print the current working directory, shortened only in minor ways to fit the prompt'
     set -l __formated_path (echo $PWD|sed -e 's|/private||' -e "s|^$HOME|~|" -e "s|home:simotek:branches|h:s:b|" -e "s|OBS_Maintained|Maint|")
     
     printf "%s" $__formated_path
end
