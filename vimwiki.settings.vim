" Settings for vimwiki
" Lab notebook
let wiki_labnotebook = {}
let wiki_labnotebook.path = '~/Dropbox/vimwiki/lab-notebook'

" Programming
let wiki_programming = {}
let wiki_programming.path = '~/Dropbox/vimwiki/programming'
let wiki_programming.nested_syntaxes = {'python': 'python', 'cpp': 'cpp', 'R': 'R', 'css': 'css', 'bash': 'bash', 'sass': 'sass'}

" Courses
let wiki_climatemodes = {}
let wiki_climatemodes.path = '~/Dropbox/Courses/ES520\ Modes\ of\ Climate\ Variability/wiki'

let wiki_rsseminar = {}
let wiki_rsseminar.path = '~/Dropbox/Courses/GE840\ Topics\ in\ Remote\ Sensing/wiki'

let wiki_forecasting = {}
let wiki_forecasting.path = '~/Dropbox/Courses/GE585\ Ecological\ Forecasting/wiki'


" Set all vimwikis
let g:vimwiki_list = [wiki_labnotebook, wiki_programming, wiki_climatemodes, wiki_rsseminar, wiki_forecasting]
"let g:vimwiki_use_calendar=1

let g:vimwiki_table_mappings = 0

