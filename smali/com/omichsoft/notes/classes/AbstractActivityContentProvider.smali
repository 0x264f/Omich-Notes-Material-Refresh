.class public abstract Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;
.super Lcom/omichsoft/notes/classes/AbstractContentProvider;
.source "AbstractActivityContentProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/omichsoft/notes/classes/AbstractContentProvider;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->mActivities:Ljava/util/Set;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->mHandler:Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$1;

    invoke-direct {v0, p0}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$1;-><init>(Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;)V

    iput-object v0, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->mActivities:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected getActivityTimerDelayMillis()I
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0xbb8

    return v0
.end method

.method protected getRootView(Landroid/app/Activity;)Landroid/view/View;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    return-void
.end method

.method protected onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    return-void
.end method

.method protected onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    return-void
.end method

.method protected onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    return-void
.end method

.method protected onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    return-void
.end method

.method protected onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 72
    return-void
.end method

.method protected onActivityTimer(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/omichsoft/notes/classes/Utils;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 81
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, v0}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;->onInit(Landroid/app/Application;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$2;

    invoke-direct {v1, p0}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider$2;-><init>(Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 141
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onInit(Landroid/app/Application;)Z
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method
