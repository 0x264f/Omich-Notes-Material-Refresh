.class Lcom/omichsoft/notes/Main$ListItem;
.super Ljava/lang/Object;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/omichsoft/notes/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListItem"
.end annotation


# instance fields
.field public date:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/omichsoft/notes/Main$ListItem;->name:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/omichsoft/notes/Main$ListItem;->date:Ljava/lang/String;

    .line 59
    return-void
.end method
