.class public Lcom/omichsoft/notes/widget/LinedEditText;
.super Landroid/widget/EditText;
.source "LinedEditText.java"


# instance fields
.field private final mDelta:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/omichsoft/notes/widget/LinedEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/omichsoft/notes/widget/LinedEditText;->mRect:Landroid/graphics/Rect;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/omichsoft/notes/widget/LinedEditText;->mPaint:Landroid/graphics/Paint;

    .line 27
    iget-object v0, p0, Lcom/omichsoft/notes/widget/LinedEditText;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    invoke-static {p0}, Lcom/omichsoft/notes/util/Utils;->resetListPadding(Landroid/view/View;)V

    .line 29
    const/4 v0, 0x2

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0, v1}, Lcom/omichsoft/notes/widget/LinedEditText;->setTextSize(IF)V

    .line 30
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/omichsoft/notes/widget/LinedEditText;->setTextColor(I)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/omichsoft/notes/widget/LinedEditText;->setVerticalFadingEdgeEnabled(Z)V

    .line 32
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/omichsoft/notes/widget/LinedEditText;->setGravity(I)V

    .line 33
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Lcom/omichsoft/notes/widget/LinedEditText;->setImeOptions(I)V

    .line 34
    invoke-virtual {p0}, Lcom/omichsoft/notes/widget/LinedEditText;->getLineHeight()I

    move-result v0

    iput v0, p0, Lcom/omichsoft/notes/widget/LinedEditText;->mDelta:I

    .line 35
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 40
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 41
    invoke-virtual {p0}, Lcom/omichsoft/notes/widget/LinedEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    .line 42
    .local v8, "density":F
    invoke-virtual {p0}, Lcom/omichsoft/notes/widget/LinedEditText;->getLineCount()I

    move-result v7

    .local v7, "count":I
    invoke-virtual {p0}, Lcom/omichsoft/notes/widget/LinedEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 43
    .local v9, "height":I
    iget v0, p0, Lcom/omichsoft/notes/widget/LinedEditText;->mDelta:I

    div-int v0, v9, v0

    if-ge v7, v0, :cond_0

    iget v0, p0, Lcom/omichsoft/notes/widget/LinedEditText;->mDelta:I

    div-int v11, v9, v0

    .line 44
    .local v11, "steps":I
    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/omichsoft/notes/widget/LinedEditText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/omichsoft/notes/widget/LinedEditText;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v6

    .line 45
    .local v6, "baseline":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-lt v10, v11, :cond_1

    .line 50
    return-void

    .end local v6    # "baseline":I
    .end local v10    # "i":I
    .end local v11    # "steps":I
    :cond_0
    move v11, v7

    .line 43
    goto :goto_0

    .line 47
    .restart local v6    # "baseline":I
    .restart local v10    # "i":I
    .restart local v11    # "steps":I
    :cond_1
    iget-object v1, p0, Lcom/omichsoft/notes/widget/LinedEditText;->mPaint:Landroid/graphics/Paint;

    if-le v7, v10, :cond_2

    const/high16 v0, 0x1f000000

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/omichsoft/notes/widget/LinedEditText;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p0, Lcom/omichsoft/notes/widget/LinedEditText;->mDelta:I

    mul-int/2addr v0, v10

    add-int/2addr v0, v6

    mul-float v2, v12, v8

    float-to-int v2, v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/omichsoft/notes/widget/LinedEditText;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p0, Lcom/omichsoft/notes/widget/LinedEditText;->mDelta:I

    mul-int/2addr v0, v10

    add-int/2addr v0, v6

    mul-float v4, v12, v8

    float-to-int v4, v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/omichsoft/notes/widget/LinedEditText;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 45
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 47
    :cond_2
    const/high16 v0, 0x8000000

    goto :goto_2
.end method
