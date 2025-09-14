.class public final synthetic Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;->f$0:F

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;->f$1:F

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;->f$2:F

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;->f$3:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;->f$0:F

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;->f$1:F

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;->f$2:F

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;->f$3:F

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/wm/WallpaperController;

    .line 10
    .line 11
    check-cast p2, Lcom/android/server/wm/WindowState;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget v3, p2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 17
    .line 18
    cmpl-float v3, v3, v0

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    iget v3, p2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 23
    .line 24
    cmpl-float v3, v3, v1

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    :cond_0
    iput v0, p2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 29
    .line 30
    iput v1, p2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 31
    .line 32
    iput v2, p2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 33
    .line 34
    iput p0, p2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 35
    .line 36
    iget-object p0, p1, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    .line 39
    .line 40
    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerFlags;->mWallpaperOffsetAsync:Z

    .line 41
    .line 42
    xor-int/lit8 p0, p0, 0x1

    .line 43
    .line 44
    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method
