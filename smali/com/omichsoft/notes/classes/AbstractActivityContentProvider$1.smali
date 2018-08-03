.class Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$1;
.super Ljava/lang/Object;
.source "AbstractActivityContentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;


# direct methods
.method constructor <init>(Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$1;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$1;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-static {v2}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->access$000(Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$1;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-static {v2}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->access$000(Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    .local v0, "activity":Landroid/app/Activity;
    :try_start_1
    iget-object v3, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$1;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-virtual {v3, v0}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->onActivityTimer(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 42
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 43
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 40
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$1;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-static {v2}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->access$200(Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$1;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-virtual {v3}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->getActivityTimerDelayMillis()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
