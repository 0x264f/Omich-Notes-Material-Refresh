.class Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$2;
.super Ljava/lang/Object;
.source "AbstractActivityContentProvider.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->onCreate()Z
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
    .line 84
    iput-object p1, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$2;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-static {}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$2;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-virtual {v0, p1}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->onActivityCreated(Landroid/app/Activity;)V

    .line 91
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 133
    invoke-static {}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityDestroyed; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$2;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-virtual {v0, p1}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 136
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 113
    invoke-static {}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityPaused; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$2;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-virtual {v0, p1}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->onActivityPaused(Landroid/app/Activity;)V

    .line 117
    iget-object v0, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$2;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-static {v0}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->access$000(Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 102
    invoke-static {}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResumed; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$2;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-virtual {v0, p1}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->onActivityResumed(Landroid/app/Activity;)V

    .line 106
    iget-object v0, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$2;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-static {v0}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->access$000(Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$2;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-static {v0}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->access$200(Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$2;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-static {v0}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->access$200(Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$2;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-static {v1}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->access$300(Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 95
    invoke-static {}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStarted; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$2;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-virtual {v0, p1}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->onActivityStarted(Landroid/app/Activity;)V

    .line 98
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 122
    invoke-static {}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStopped; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$2;->this$0:Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-virtual {v0, p1}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->onActivityStopped(Landroid/app/Activity;)V

    .line 125
    return-void
.end method
