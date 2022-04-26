" Maintainer:     Ryan Young
" Last Modified:  Feb 10, 2022
"
" This is a function to cycle through the files in a directory
"
function! OpenNextFile(direction)
  let current_dir = expand('%:p:h')
  let current_file = expand('%:p')
  let current_dir_files = globpath(current_dir, '*', 0, 1)
  let current_file_index = index(current_dir_files, current_file)
  let next_file_index = current_file_index + a:direction

  while next_file_index != current_file_index
    if next_file_index == len(current_dir_files)
      let next_file_index = 0
    endif

    if filereadable(current_dir_files[next_file_index])
      exe 'edit ' . current_dir_files[next_file_index]
      break
    endif

    let next_file_index += a:direction
  endwhile
endfunction
