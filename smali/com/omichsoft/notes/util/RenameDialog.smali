.class public Lcom/omichsoft/notes/util/RenameDialog;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Landroid/text/InputFilter;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/omichsoft/notes/util/RenameDialog$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/omichsoft/notes/util/RenameDialog$Callback;

.field private final mEditText:Landroid/widget/EditText;

.field private final mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/omichsoft/notes/util/RenameDialog$Callback;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/omichsoft/notes/util/RenameDialog$Callback;

    .prologue
    const/high16 v6, 0x41800000    # 16.0f

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/omichsoft/notes/util/RenameDialog;->mFileName:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/omichsoft/notes/util/RenameDialog;->mCallback:Lcom/omichsoft/notes/util/RenameDialog$Callback;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 31
    .local v1, "density":F
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/omichsoft/notes/util/RenameDialog;->mEditText:Landroid/widget/EditText;

    .line 33
    mul-float v3, v6, v1

    float-to-int v3, v3

    mul-float v4, v6, v1

    float-to-int v4, v4

    mul-float v5, v6, v1

    float-to-int v5, v5

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 34
    iget-object v3, p0, Lcom/omichsoft/notes/util/RenameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object v3, p0, Lcom/omichsoft/notes/util/RenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v3, p0, Lcom/omichsoft/notes/util/RenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    .line 37
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/omichsoft/notes/util/RenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 38
    :cond_0
    iget-object v3, p0, Lcom/omichsoft/notes/util/RenameDialog;->mEditText:Landroid/widget/EditText;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f03000f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 41
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 42
    const v3, 0x104000a

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 43
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 45
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 50
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 52
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 50
    :cond_0
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_1

    .line 51
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x7c

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 50
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/omichsoft/notes/util/RenameDialog;->mCallback:Lcom/omichsoft/notes/util/RenameDialog$Callback;

    iget-object v1, p0, Lcom/omichsoft/notes/util/RenameDialog;->mFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/omichsoft/notes/util/RenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/omichsoft/notes/util/RenameDialog$Callback;->onRename(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method
