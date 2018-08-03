.class public Lcom/omichsoft/notes/Main;
.super Landroid/app/Activity;
.source "Main.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/omichsoft/notes/util/RenameDialog$Callback;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/omichsoft/notes/Main$ListItem;,
        Lcom/omichsoft/notes/Main$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/omichsoft/notes/util/RenameDialog$Callback;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTEXT_MENU_DELETE:I = 0x2

.field private static final CONTEXT_MENU_RENAME:I = 0x0

.field private static final CONTEXT_MENU_SHARE:I = 0x1

.field public static final EXTRA_FILENAME:Ljava/lang/String; = "filename"

.field public static final EXTRA_NEWFILE:Ljava/lang/String; = "newfile"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "text"


# instance fields
.field private mBaseAdapter:Landroid/widget/BaseAdapter;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutResourceId:I

.field private final mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/omichsoft/notes/Main$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private final mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/omichsoft/notes/Main;->mListData:Ljava/util/ArrayList;

    .line 305
    const/4 v0, 0x2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/omichsoft/notes/Main;->mTimeFormat:Ljava/text/DateFormat;

    .line 42
    return-void
.end method

.method static synthetic access$1(Lcom/omichsoft/notes/Main;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/omichsoft/notes/Main;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$2(Lcom/omichsoft/notes/Main;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/omichsoft/notes/Main;->mLayoutResourceId:I

    return v0
.end method

.method static synthetic access$3(Lcom/omichsoft/notes/Main;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/omichsoft/notes/Main;->mListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/omichsoft/notes/Main;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/omichsoft/notes/Main;->updateList()V

    return-void
.end method

.method public static getDataPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/omichsoft/notes/Main;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateList()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 309
    iget-object v6, p0, Lcom/omichsoft/notes/Main;->mDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v6, :cond_0

    .line 311
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v3

    .line 312
    .local v3, "format":[C
    const-string v4, ""

    .line 313
    .local v4, "formatted":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-lt v5, v6, :cond_3

    .line 329
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v6, p0, Lcom/omichsoft/notes/Main;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 331
    .end local v3    # "format":[C
    .end local v4    # "formatted":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 333
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/omichsoft/notes/Main;->getDataPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 335
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 336
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    new-array v2, v13, [Ljava/io/File;

    .line 337
    :cond_1
    invoke-static {v2, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 338
    iget-object v6, p0, Lcom/omichsoft/notes/Main;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 339
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    array-length v6, v2

    if-lt v5, v6, :cond_6

    .line 341
    iget-object v6, p0, Lcom/omichsoft/notes/Main;->mBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 343
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v5    # "i":I
    :cond_2
    return-void

    .line 316
    .restart local v3    # "format":[C
    .restart local v4    # "formatted":Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_3
    aget-char v6, v3, v5

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 321
    const-string v0, ""

    .line 323
    .local v0, "current":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 325
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 326
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 313
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 318
    .end local v0    # "current":Ljava/lang/String;
    :sswitch_0
    const-string v0, "d"

    .restart local v0    # "current":Ljava/lang/String;
    goto :goto_2

    .line 319
    .end local v0    # "current":Ljava/lang/String;
    :sswitch_1
    const-string v0, "MMM"

    .restart local v0    # "current":Ljava/lang/String;
    goto :goto_2

    .line 320
    .end local v0    # "current":Ljava/lang/String;
    :sswitch_2
    const-string v0, "y"

    .restart local v0    # "current":Ljava/lang/String;
    goto :goto_2

    .line 339
    .end local v0    # "current":Ljava/lang/String;
    .end local v3    # "format":[C
    .end local v4    # "formatted":Ljava/lang/String;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v2    # "files":[Ljava/io/File;
    :cond_6
    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/omichsoft/notes/Main;->mListData:Ljava/util/ArrayList;

    new-instance v7, Lcom/omichsoft/notes/Main$ListItem;

    aget-object v8, v2, v5

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v2, v5

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 340
    new-instance v9, Ljava/lang/StringBuilder;

    const v10, 0x7f030009

    invoke-virtual {p0, v10}, Lcom/omichsoft/notes/Main;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/omichsoft/notes/Main;->mDateFormat:Ljava/text/SimpleDateFormat;

    aget-object v11, v2, v5

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/omichsoft/notes/Main;->mTimeFormat:Ljava/text/DateFormat;

    aget-object v11, v2, v5

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/omichsoft/notes/Main$ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 316
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6d -> :sswitch_1
        0x79 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 3
    .param p1, "lhs"    # Ljava/io/File;
    .param p2, "rhs"    # Ljava/io/File;

    .prologue
    .line 301
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/omichsoft/notes/Main;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 170
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    .line 172
    const-string v7, "filename"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "filename":Ljava/lang/String;
    const-string v7, "newfile"

    invoke-virtual {p3, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 174
    .local v4, "newfile":Z
    const-string v7, "text"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "text":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/omichsoft/notes/Main;->getDataPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "file":Ljava/io/File;
    if-eqz v4, :cond_2

    .line 180
    const/4 v3, 0x0

    .line 181
    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 184
    .end local v3    # "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 185
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 186
    .local v6, "writer":Ljava/io/FileWriter;
    const-string v7, "\n"

    const-string v8, "\r\n"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-virtual {v6, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V

    .line 189
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v1    # "file":Ljava/io/File;
    .end local v6    # "writer":Ljava/io/FileWriter;
    :goto_2
    invoke-direct {p0}, Lcom/omichsoft/notes/Main;->updateList()V

    .line 197
    .end local v2    # "filename":Ljava/lang/String;
    .end local v4    # "newfile":Z
    .end local v5    # "text":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 198
    return-void

    .line 181
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "newfile":Z
    .restart local v5    # "text":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/omichsoft/notes/Main;->getDataPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ").txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 183
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 191
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/omichsoft/notes/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03000b

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 254
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/omichsoft/notes/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f03000d

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 295
    :cond_0
    :goto_0
    return v8

    .line 259
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v3, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 260
    .local v3, "position":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    if-nez v4, :cond_2

    .line 262
    new-instance v5, Lcom/omichsoft/notes/util/RenameDialog;

    iget-object v4, p0, Lcom/omichsoft/notes/Main;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/omichsoft/notes/Main$ListItem;

    iget-object v4, v4, Lcom/omichsoft/notes/Main$ListItem;->name:Ljava/lang/String;

    invoke-direct {v5, p0, v4, p0}, Lcom/omichsoft/notes/util/RenameDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/omichsoft/notes/util/RenameDialog$Callback;)V

    goto :goto_0

    .line 264
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 266
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 267
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v4, "text/html"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v5, "android.intent.extra.STREAM"

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/omichsoft/notes/Main;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/omichsoft/notes/Main;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/omichsoft/notes/Main$ListItem;

    iget-object v4, v4, Lcom/omichsoft/notes/Main$ListItem;->name:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".txt"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 272
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/omichsoft/notes/Main;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/omichsoft/notes/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f03000c

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 279
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 281
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/omichsoft/notes/Main;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/omichsoft/notes/Main$ListItem;

    iget-object v4, v4, Lcom/omichsoft/notes/Main$ListItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 283
    const v4, 0x7f03000e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 284
    const v4, 0x7f030011

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    const v4, 0x7f030010

    new-instance v5, Lcom/omichsoft/notes/Main$2;

    invoke-direct {v5, p0, v3}, Lcom/omichsoft/notes/Main$2;-><init>(Lcom/omichsoft/notes/Main;I)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4}, Lcom/omichsoft/notes/Main;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v4, Landroid/widget/ListView;

    invoke-direct {v4, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/omichsoft/notes/Main;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v4, p0, Lcom/omichsoft/notes/Main;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 85
    iget-object v4, p0, Lcom/omichsoft/notes/Main;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v4}, Lcom/omichsoft/notes/Main;->registerForContextMenu(Landroid/view/View;)V

    .line 86
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lcom/omichsoft/notes/Main;->mListView:Landroid/widget/ListView;

    invoke-static {v4}, Lcom/omichsoft/notes/util/Utils;->resetListPadding(Landroid/view/View;)V

    .line 87
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v2, "textView":Landroid/widget/TextView;
    const v4, 0x1020004

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setId(I)V

    .line 89
    const/4 v4, 0x2

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 90
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 91
    const v4, 0x7f030008

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 92
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v4, p0, Lcom/omichsoft/notes/Main;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 94
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/omichsoft/notes/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/omichsoft/notes/Main;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 95
    const/4 v1, 0x0

    .line 98
    .local v1, "resId":I
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x101008e

    aput v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/omichsoft/notes/Main;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 99
    .local v3, "typedArray":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 100
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x10100f2

    aput v6, v4, v5

    invoke-virtual {p0, v1, v4}, Lcom/omichsoft/notes/Main;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 102
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 103
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v3    # "typedArray":Landroid/content/res/TypedArray;
    :goto_0
    if-nez v1, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "preference"

    const-string v6, "layout"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 110
    :cond_1
    iput v1, p0, Lcom/omichsoft/notes/Main;->mLayoutResourceId:I

    .line 111
    iget-object v4, p0, Lcom/omichsoft/notes/Main;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/omichsoft/notes/Main$1;

    invoke-direct {v5, p0}, Lcom/omichsoft/notes/Main$1;-><init>(Lcom/omichsoft/notes/Main;)V

    iput-object v5, p0, Lcom/omichsoft/notes/Main;->mBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    invoke-direct {p0}, Lcom/omichsoft/notes/Main;->updateList()V

    .line 157
    return-void

    .line 105
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v3, 0x0

    .line 244
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 245
    .local v0, "position":I
    iget-object v1, p0, Lcom/omichsoft/notes/Main;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/omichsoft/notes/Main$ListItem;

    iget-object v1, v1, Lcom/omichsoft/notes/Main$ListItem;->name:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 246
    const v1, 0x7f030005

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 247
    const/4 v1, 0x1

    const v2, 0x7f030006

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 248
    const/4 v1, 0x2

    const v2, 0x7f030007

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 249
    return-void
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

    .line 204
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/omichsoft/notes/Main;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v4, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    const/high16 v0, 0x7f020000

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 205
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

    .line 206
    :cond_0
    return v5

    .line 204
    :cond_1
    const v0, 0x1080033

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/omichsoft/notes/Editor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "filename"

    iget-object v1, p0, Lcom/omichsoft/notes/Main;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/omichsoft/notes/Main$ListItem;

    iget-object v1, v1, Lcom/omichsoft/notes/Main$ListItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/omichsoft/notes/Main;->startActivityForResult(Landroid/content/Intent;I)V

    .line 165
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/omichsoft/notes/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03000d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 221
    :cond_0
    :goto_0
    return v3

    .line 217
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/omichsoft/notes/Editor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/omichsoft/notes/Main;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onRename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "oldFileName"    # Ljava/lang/String;
    .param p2, "newFileName"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 229
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/omichsoft/notes/Main;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, "newFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 231
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 232
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/omichsoft/notes/Main;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 233
    invoke-direct {p0}, Lcom/omichsoft/notes/Main;->updateList()V

    .line 235
    .end local v0    # "i":I
    .end local v1    # "newFile":Ljava/io/File;
    :cond_0
    return-void

    .line 231
    .restart local v0    # "i":I
    .restart local v1    # "newFile":Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/io/File;

    .end local v1    # "newFile":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/omichsoft/notes/Main;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ").txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v1    # "newFile":Ljava/io/File;
    goto :goto_0
.end method
