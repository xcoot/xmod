.class public final Lcom/android/server/wm/StrictModeFlash;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field public mDrawNeeded:Z

.field public mLastDH:I

.field public mLastDW:I

.field public final mSurface:Landroid/view/Surface;

.field public final mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl$Transaction;)V
    .locals 8

    .line 1
    const-string v0, "StrictModeFlash"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, -0x3

    .line 20
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const v2, 0xf6950

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p2, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 43
    .line 44
    .line 45
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 46
    .line 47
    invoke-static {v1, p2, p1, v0}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    move-object v4, v1

    .line 51
    iput-object v4, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 55
    .line 56
    new-instance p1, Landroid/graphics/BLASTBufferQueue;

    .line 57
    .line 58
    const/4 v6, 0x1

    .line 59
    const/4 v7, 0x1

    .line 60
    const-string v3, "StrictModeFlash"

    .line 61
    .line 62
    const/4 v5, 0x1

    .line 63
    move-object v2, p1

    .line 64
    invoke-direct/range {v2 .. v7}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/server/wm/StrictModeFlash;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final setVisibility(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 13
    .line 14
    iget v2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 15
    .line 16
    iget v3, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/server/wm/StrictModeFlash;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    invoke-virtual {v4, v0, v2, v3, v5}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    .line 26
    .line 27
    invoke-virtual {v4, v0}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    .line 28
    .line 29
    .line 30
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :catch_0
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 35
    .line 36
    .line 37
    new-instance v4, Landroid/graphics/Rect;

    .line 38
    .line 39
    const/16 v5, 0x14

    .line 40
    .line 41
    invoke-direct {v4, v1, v1, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 45
    .line 46
    .line 47
    const/high16 v4, -0x10000

    .line 48
    .line 49
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 56
    .line 57
    .line 58
    new-instance v6, Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-direct {v6, v1, v1, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 73
    .line 74
    .line 75
    new-instance v5, Landroid/graphics/Rect;

    .line 76
    .line 77
    add-int/lit8 v6, v2, -0x14

    .line 78
    .line 79
    invoke-direct {v5, v6, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 92
    .line 93
    .line 94
    new-instance v5, Landroid/graphics/Rect;

    .line 95
    .line 96
    add-int/lit8 v6, v3, -0x14

    .line 97
    .line 98
    invoke-direct {v5, v1, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    .line 111
    .line 112
    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 113
    .line 114
    .line 115
    :goto_0
    if-eqz p2, :cond_3

    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 118
    .line 119
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 124
    .line 125
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 126
    .line 127
    .line 128
    :goto_1
    return-void
.end method
