### Started with NVChad and configured from there.

Plugins
1. Find files (Space + f + f)
2. Global find phrase (Space + f + w)
3. File Tree
4. NVChad keybindings and themes
5. Copilot (CMP Version)
6. Copilot chat

Language Supports
1. Javascript/Typescript
2. Python
3. Go
4. Vue
5. html/css
6. Docker
7. lua


*vue-language-server bug fix*
1. cd /Users/{user}/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server/lib/
2. nvim initialize.js
3. comment out the fileWatcher logic on line 46
