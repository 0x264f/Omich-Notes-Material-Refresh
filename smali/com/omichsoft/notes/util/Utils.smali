.class public final Lcom/omichsoft/notes/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final METHOD_SET_SHOW_AS_ACTION:Ljava/lang/String; = "setShowAsAction"

.field public static final preference_child_padding_side:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 10
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "preference_child_padding_side"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/omichsoft/notes/util/Utils;->preference_child_padding_side:I

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getListPadding()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 16
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/omichsoft/notes/util/Utils;->preference_child_padding_side:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 20
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 18
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 20
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 40
    .local v2, "methods":[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_0

    .line 57
    :goto_1
    return-void

    .line 40
    :cond_0
    aget-object v4, v2, v1

    if-eqz v4, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .local v3, "params":[Ljava/lang/Class;
    if-eqz v3, :cond_1

    array-length v4, v3

    array-length v5, p2

    if-ne v4, v5, :cond_1

    .line 45
    :try_start_0
    aget-object v4, v2, v1

    invoke-virtual {v4, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 48
    :catch_0
    move-exception v4

    .line 40
    .end local v3    # "params":[Ljava/lang/Class;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .restart local v3    # "params":[Ljava/lang/Class;
    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public static resetListPadding(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-static {}, Lcom/omichsoft/notes/util/Utils;->getListPadding()I

    move-result v0

    .line 27
    .local v0, "padding":I
    if-lez v0, :cond_0

    .line 29
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 30
    const/high16 v1, 0x2000000

    invoke-virtual {p0, v1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 32
    :cond_0
    return-void
.end method
