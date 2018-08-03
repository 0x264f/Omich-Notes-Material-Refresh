.class Lcom/omichsoft/notes/Main$2;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/omichsoft/notes/Main;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/omichsoft/notes/Main;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/omichsoft/notes/Main;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/omichsoft/notes/Main$2;->this$0:Lcom/omichsoft/notes/Main;

    iput p2, p0, Lcom/omichsoft/notes/Main$2;->val$position:I

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 289
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/omichsoft/notes/Main;->getDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/omichsoft/notes/Main$2;->this$0:Lcom/omichsoft/notes/Main;

    invoke-static {v0}, Lcom/omichsoft/notes/Main;->access$3(Lcom/omichsoft/notes/Main;)Ljava/util/ArrayList;

    move-result-object v0

    iget v3, p0, Lcom/omichsoft/notes/Main$2;->val$position:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/omichsoft/notes/Main$ListItem;

    iget-object v0, v0, Lcom/omichsoft/notes/Main$ListItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 290
    iget-object v0, p0, Lcom/omichsoft/notes/Main$2;->this$0:Lcom/omichsoft/notes/Main;

    invoke-static {v0}, Lcom/omichsoft/notes/Main;->access$4(Lcom/omichsoft/notes/Main;)V

    .line 291
    return-void
.end method
