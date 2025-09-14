.class public final Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;
.super Landroid/widget/ImageView;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public canvas:Landroid/graphics/Canvas;

.field public listener:Lcom/android/server/power/shutdown/PlayerInterface$ViewSizeListener;


# virtual methods
.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/power/shutdown/ShutdownAnimatedImageView;->listener:Lcom/android/server/power/shutdown/PlayerInterface$ViewSizeListener;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/power/shutdown/PlayerInterface$ViewSizeListener;->onSizeChanged(IIII)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
