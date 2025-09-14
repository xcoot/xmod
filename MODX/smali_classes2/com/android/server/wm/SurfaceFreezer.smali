.class public final Lcom/android/server/wm/SurfaceFreezer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAnimatable:Lcom/android/server/wm/WindowContainer;

.field public final mFreezeBounds:Landroid/graphics/Rect;

.field mLeash:Landroid/view/SurfaceControl;

.field public mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/WindowContainer;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    return-void
.end method

.method public static createSnapshotBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    new-instance p1, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method


# virtual methods
.method public createFromHardwareBufferInner(Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)Landroid/graphics/GraphicBuffer;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public createSnapshotBufferInner(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/wm/SurfaceFreezer;->createSnapshotBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final hasLeash()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final unfreeze(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/WindowContainer;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {p1, v2, v0, v1}, Lcom/android/server/wm/SurfaceAnimator;->removeLeash(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Z)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->onUnfrozen()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
