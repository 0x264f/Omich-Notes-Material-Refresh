.class public Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;
.super Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;
.source "RequestAllPermissionsProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRequestPermissions:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/omichsoft/notes/classes/AbstractActivityContentProvider;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->mRequestPermissions:Z

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->mRequestPermissions:Z

    return p1
.end method


# virtual methods
.method protected onActivityCreated(Landroid/app/Activity;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v6, 0x17

    const/4 v4, 0x0

    .line 29
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v6, :cond_1

    .line 30
    invoke-static {p1}, Lcom/omichsoft/notes/classes/Utils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v5

    if-lt v5, v6, :cond_1

    .line 32
    iget-boolean v5, p0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->mRequestPermissions:Z

    if-eqz v5, :cond_5

    .line 34
    iget-object v5, p0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 35
    iget-object v5, p0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider$1;

    invoke-direct {v6, p0}, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider$1;-><init>(Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;)V

    const-wide/16 v8, 0x2710

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1000

    .line 44
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 47
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v2, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v1, v5, v4

    .line 49
    .local v1, "permission":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v7, "android.permission."

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 50
    invoke-virtual {p1, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 51
    sget-object v7, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityCreated; permission not granted; permission: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 54
    :cond_0
    sget-object v7, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityCreated; permission granted; permission: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 79
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 80
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v4, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_2
    return-void

    .line 57
    .restart local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v1    # "permission":Ljava/lang/String;
    .restart local v2    # "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    sget-object v7, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityCreated; permission ignored; permission: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 61
    .end local v1    # "permission":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 62
    iget-object v4, p0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider$2;

    invoke-direct {v5, p0, v2, p1}, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider$2;-><init>(Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;Ljava/util/List;Landroid/app/Activity;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 76
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->mRequestPermissions:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 83
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    sget-object v4, Lcom/omichsoft/notes/classes/RequestAllPermissionsProvider;->TAG:Ljava/lang/String;

    const-string v5, "onActivityCreated; not targeting Marshmallow"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
