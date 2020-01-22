/*
 * Author: CPL.Brostrom.A and SGT.Argus.J
 * This create a diary record subject called by initDocuments.
 *
 * Arguments:
 *
 * Example:
 * call cScripts_fnc_DocRadio_JMTASKS;
 */

player createDiaryRecord["Chklists",
    ["IED CHECKLIST",
        "
<font color='#ffc61a' size='20'>IED CHECKLIST<br/>
-----------------------------------------------------------------</font><br/><br/>
<font color='#ffc61a'>IED CHECKLIST</font><br/><br/>
<img image='Data\ieds.paa' width='367' height='350'/>
        "
    ]
];
