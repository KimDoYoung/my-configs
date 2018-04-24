VSCODE
======

사용자 키 맵을 정의
1. 모두 저장
2. 모두 닫기
3. 커서 후 모두 지우기

윈도우에서
C:\Users\Administrator\AppData\Roaming\Code\User 
에 keybindings.json에 기술한다.
```json
[
    {
        "key": "ctrl+shift+s",
        "command": "workbench.action.files.saveAll"
     },
     {
        "key": "ctrl+shift+w",
        "command": "workbench.action.closeAllEditors"
      },
      {
        "command": "deleteAllRight",
        "key": "ctrl+shift+Delete",
        "when": "editorTextFocus && !editorReadonly"
      }            
]
```

