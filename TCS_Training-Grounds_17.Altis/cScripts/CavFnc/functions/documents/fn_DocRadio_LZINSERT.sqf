/*
 * Author: CPL.Brostrom.A and SGT.Argus.J
 * This create a diary record subject called by initDocuments.
 *
 * Arguments:
 *
 * Example:
 * call cScripts_fnc_DocRadio_LZINSERT;
 */

player createDiaryRecord["Chklists",
    ["HELO INSERTION CHECKLISTS",
        "
<font color='#ffc61a' size='20'>                        INSERTION CHECKLISTS<br/>
-----------------------------------------------------------------</font><br/><br/>
<font color='#ffc61a'>ADMIN CHECKLIST</font><br/><br/>
<img image='cScripts\Data\Images\insertion-admin-checklist.paa' width='367' height='260'/><br/><br/>
<font color='#ffc61a'>INSERT CHECKLIST</font><br/><br/>
<img image='cScripts\Data\Images\insertion-insert-checklist.paa' width='367' height='264'/>
        "
    ]
];
