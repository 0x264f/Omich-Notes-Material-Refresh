.class public Lcom/omichsoft/notes/Editor;
.super Landroid/app/Activity;
.source "Editor.java"

# interfaces
.implements Lcom/omichsoft/notes/util/RenameDialog$Callback;


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mLinedEditText:Lcom/omichsoft/notes/widget/LinedEditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x1

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance v6, Lcom/omichsoft/notes/widget/LinedEditText;

    invoke-direct {v6, p0}, Lcom/omichsoft/notes/widget/LinedEditText;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/omichsoft/notes/Editor;->mLinedEditText:Lcom/omichsoft/notes/widget/LinedEditText;

    .line 34
    iget-object v6, p0, Lcom/omichsoft/notes/Editor;->mLinedEditText:Lcom/omichsoft/notes/widget/LinedEditText;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/omichsoft/notes/widget/LinedEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 36
    .local v4, "scroll":Landroid/widget/ScrollView;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v6, p0, Lcom/omichsoft/notes/Editor;->mLinedEditText:Lcom/omichsoft/notes/widget/LinedEditText;

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 38
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 39
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v6}, Lcom/omichsoft/notes/Editor;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-virtual {p0}, Lcom/omichsoft/notes/Editor;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "filename"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/omichsoft/notes/Editor;->mFileName:Ljava/lang/String;

    .line 41
    iget-object v6, p0, Lcom/omichsoft/notes/Editor;->mFileName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 43
    iget-object v6, p0, Lcom/omichsoft/notes/Editor;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/omichsoft/notes/Editor;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/omichsoft/notes/Main;->getDataPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/omichsoft/notes/Editor;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 48
    .local v3, "reader":Ljava/io/BufferedReader;
    const v6, 0x7fffffff

    invoke-virtual {v3, v6}, Ljava/io/BufferedReader;->mark(I)V

    .line 49
    const-string v5, ""

    .line 50
    .local v5, "text":Ljava/lang/String;
    const/4 v2, 0x0

    .line 51
    .local v2, "load":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 56
    invoke-virtual {v3}, Ljava/io/BufferedReader;->reset()V

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/io/BufferedReader;->skip(J)J

    .line 58
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    :cond_0
    iget-object v6, p0, Lcom/omichsoft/notes/Editor;->mLinedEditText:Lcom/omichsoft/notes/widget/LinedEditText;

    invoke-virtual {v6, v5}, Lcom/omichsoft/notes/widget/LinedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 69
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "load":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "text":Ljava/lang/String;
    :goto_1
    return-void

    .line 53
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "load":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 54
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 62
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "load":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/omichsoft/notes/Editor;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f03000a

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 65
    invoke-virtual {p0}, Lcom/omichsoft/notes/Editor;->finish()V

    goto :goto_1

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const v6, 0x7f030002

    invoke-virtual {p0, v6}, Lcom/omichsoft/notes/Editor;->setTitle(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/16 v2, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/omichsoft/notes/Editor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v4, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    const v0, 0x7f020001

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "setShowAsAction"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/omichsoft/notes/util/Utils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_0
    return v5

    .line 75
    :cond_1
    const v0, 0x108004e

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 83
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/omichsoft/notes/Editor;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03000d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    :cond_0
    :goto_0
    return v3

    .line 88
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/omichsoft/notes/Editor;->mFileName:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/omichsoft/notes/Editor;->mLinedEditText:Lcom/omichsoft/notes/widget/LinedEditText;

    invoke-virtual {v0}, Lcom/omichsoft/notes/widget/LinedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lcom/omichsoft/notes/util/RenameDialog;

    invoke-direct {v0, p0, v2, p0}, Lcom/omichsoft/notes/util/RenameDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/omichsoft/notes/util/RenameDialog$Callback;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/omichsoft/notes/Editor;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/omichsoft/notes/Editor;->onRename(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "oldFileName"    # Ljava/lang/String;
    .param p2, "newFileName"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v2, p0, Lcom/omichsoft/notes/Editor;->mFileName:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 99
    .local v1, "newFile":Z
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string p2, "Untitled"

    .line 100
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "filename"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v2, "newfile"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    const-string v2, "text"

    iget-object v3, p0, Lcom/omichsoft/notes/Editor;->mLinedEditText:Lcom/omichsoft/notes/widget/LinedEditText;

    invoke-virtual {v3}, Lcom/omichsoft/notes/widget/LinedEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/omichsoft/notes/Editor;->setResult(ILandroid/content/Intent;)V

    .line 105
    invoke-virtual {p0}, Lcom/omichsoft/notes/Editor;->finish()V

    .line 106
    return-void

    .line 98
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "newFile":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
