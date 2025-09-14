.class public abstract Lcom/android/server/wm/utils/InsetUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 2
    .line 3
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 7
    .line 8
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 9
    .line 10
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    iget v0, p0, Landroid/graphics/Rect;->right:I

    .line 16
    .line 17
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 18
    .line 19
    add-int/2addr v0, v1

    .line 20
    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 21
    .line 22
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 23
    .line 24
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 25
    .line 26
    add-int/2addr v0, p1

    .line 27
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 28
    .line 29
    return-void
.end method
