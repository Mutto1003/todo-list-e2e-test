*** Variables ***

${titleText}         //android.view.View[@content-desc="Todo List"]
${btnAddItem}        //android.widget.FrameLayout[@resource-id="android:id/content"]/*/*/*/*/*/android.widget.Button
${editText}          //android.widget.EditText[@class='android.widget.EditText']
${btnDeleteItem}     android.widget.Button
${chkseleceItem}     android.widget.CheckBox
${listText}          //android.view.View[@content-desc="item1"]
${allListItem}       //android.view.View[@content-desc and not(@content-desc="Todo List")]