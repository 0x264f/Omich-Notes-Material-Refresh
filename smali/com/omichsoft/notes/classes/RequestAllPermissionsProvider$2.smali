.class Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider$2;
.super Ljava/lang/Object;
.source "RequestAllPermissionsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->onActivityCreated(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$requestPermissions:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;Ljava/util/List;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider$2;->this$0:Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;

    iput-object p2, p0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider$2;->val$requestPermissions:Ljava/util/List;

    iput-object p3, p0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run; requestPermissions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider$2;->val$requestPermissions:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider$2;->val$requestPermissions:Ljava/util/List;

    iget-object v3, p0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider$2;->val$requestPermissions:Ljava/util/List;

    .line 69
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 68
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const v3, 0x3b2ff9ef

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
