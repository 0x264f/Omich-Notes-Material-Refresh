.class Lcom/omichsoft/notes/Main$1;
.super Landroid/widget/BaseAdapter;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/omichsoft/notes/Main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/omichsoft/notes/Main;


# direct methods
.method constructor <init>(Lcom/omichsoft/notes/Main;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/omichsoft/notes/Main$1;->this$0:Lcom/omichsoft/notes/Main;

    .line 111
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/omichsoft/notes/Main$1;->this$0:Lcom/omichsoft/notes/Main;

    invoke-static {v0}, Lcom/omichsoft/notes/Main;->access$3(Lcom/omichsoft/notes/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 141
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x1020016

    .line 117
    if-nez p2, :cond_2

    .line 119
    iget-object v4, p0, Lcom/omichsoft/notes/Main$1;->this$0:Lcom/omichsoft/notes/Main;

    invoke-static {v4}, Lcom/omichsoft/notes/Main;->access$1(Lcom/omichsoft/notes/Main;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Lcom/omichsoft/notes/Main$1;->this$0:Lcom/omichsoft/notes/Main;

    invoke-static {v5}, Lcom/omichsoft/notes/Main;->access$2(Lcom/omichsoft/notes/Main;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 120
    new-instance v3, Lcom/omichsoft/notes/Main$ViewHolder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/omichsoft/notes/Main$ViewHolder;-><init>(Lcom/omichsoft/notes/Main$ViewHolder;)V

    .line 121
    .local v3, "viewHolder":Lcom/omichsoft/notes/Main$ViewHolder;
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/omichsoft/notes/Main$ViewHolder;->title:Landroid/widget/TextView;

    .line 122
    const v4, 0x1020010

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/omichsoft/notes/Main$ViewHolder;->summary:Landroid/widget/TextView;

    .line 123
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, p2

    .line 124
    check-cast v0, Landroid/view/ViewGroup;

    .line 125
    .local v0, "convertViewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 126
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_0

    .line 127
    iget-object v4, v3, Lcom/omichsoft/notes/Main$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 128
    iget-object v4, v3, Lcom/omichsoft/notes/Main$ViewHolder;->title:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 129
    iget-object v4, v3, Lcom/omichsoft/notes/Main$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 130
    iget-object v4, v3, Lcom/omichsoft/notes/Main$ViewHolder;->summary:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 133
    .end local v0    # "convertViewGroup":Landroid/view/ViewGroup;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :goto_1
    iget-object v5, v3, Lcom/omichsoft/notes/Main$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/omichsoft/notes/Main$1;->this$0:Lcom/omichsoft/notes/Main;

    invoke-static {v4}, Lcom/omichsoft/notes/Main;->access$3(Lcom/omichsoft/notes/Main;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/omichsoft/notes/Main$ListItem;

    iget-object v4, v4, Lcom/omichsoft/notes/Main$ListItem;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v5, v3, Lcom/omichsoft/notes/Main$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/omichsoft/notes/Main$1;->this$0:Lcom/omichsoft/notes/Main;

    invoke-static {v4}, Lcom/omichsoft/notes/Main;->access$3(Lcom/omichsoft/notes/Main;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/omichsoft/notes/Main$ListItem;

    iget-object v4, v4, Lcom/omichsoft/notes/Main$ListItem;->date:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    return-object p2

    .line 126
    .restart local v0    # "convertViewGroup":Landroid/view/ViewGroup;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 132
    .end local v0    # "convertViewGroup":Landroid/view/ViewGroup;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "viewHolder":Lcom/omichsoft/notes/Main$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/omichsoft/notes/Main$ViewHolder;

    .restart local v3    # "viewHolder":Lcom/omichsoft/notes/Main$ViewHolder;
    goto :goto_1
.end method
