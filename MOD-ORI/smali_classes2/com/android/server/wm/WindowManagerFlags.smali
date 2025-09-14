.class public final Lcom/android/server/wm/WindowManagerFlags;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAllowsScreenSizeDecoupledFromStatusBarAndCutout:Z

.field public final mInsetsDecoupledConfiguration:Z

.field public final mRespectNonTopVisibleFixedOrientation:Z

.field public final mWallpaperOffsetAsync:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/window/flags/Flags;->wallpaperOffsetAsync()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerFlags;->mWallpaperOffsetAsync:Z

    .line 9
    .line 10
    invoke-static {}, Lcom/android/window/flags/Flags;->allowsScreenSizeDecoupledFromStatusBarAndCutout()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerFlags;->mAllowsScreenSizeDecoupledFromStatusBarAndCutout:Z

    .line 15
    .line 16
    invoke-static {}, Lcom/android/window/flags/Flags;->insetsDecoupledConfiguration()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerFlags;->mInsetsDecoupledConfiguration:Z

    .line 21
    .line 22
    invoke-static {}, Lcom/android/window/flags/Flags;->respectNonTopVisibleFixedOrientation()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerFlags;->mRespectNonTopVisibleFixedOrientation:Z

    .line 27
    .line 28
    return-void
.end method
