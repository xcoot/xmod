.class public final Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;
.super Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBlurColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

.field public mBlurRadiusPx:I

.field public mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/server/wm/CapturedLetterbox;->mShouldUseCapturedLetterbox:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/CapturedLetterbox;->removeCapturedLetterboxSurface()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final getLetterboxBackgroundType()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->isLetterboxWallpaperBlurSupported()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x3

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final getLetterboxBackgroundWallpaperBlurColorCurve()Landroid/view/SemBlurInfo$ColorCurve;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->isLetterboxWallpaperBlurSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mBlurColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
.end method

.method public final getLetterboxBackgroundWallpaperBlurRadiusPx()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mBlurRadiusPx:I

    .line 2
    .line 3
    return p0
.end method

.method public final hasCapturedLetterboxSurface()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/CapturedLetterbox;->mCapturedLetterboxSurface:Landroid/view/SurfaceControl;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final isLetterboxWallpaperBlurSupported()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->BLUR_SUPPORTED:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/server/wm/MultiTaskingController;->mIsMinimalBatteryUse:Z

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final onAdjustWallpaperWindows(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->isLetterboxWallpaperBlurSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v0, Lcom/android/server/wm/CapturedLetterbox;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/android/server/wm/CapturedLetterbox;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;

    .line 23
    .line 24
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/android/server/wm/CapturedLetterbox;->mShouldUseCapturedLetterbox:Z

    .line 29
    .line 30
    if-nez v0, :cond_4

    .line 31
    .line 32
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/wm/CapturedLetterbox;->mShouldUseCapturedLetterbox:Z

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/wm/CapturedLetterbox;->removeCapturedLetterboxSurface()V

    .line 35
    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/wm/CapturedLetterbox;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 40
    .line 41
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/CapturedLetterbox;->mShowCapturedLetterboxRunnable:Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 53
    .line 54
    const-wide/16 v0, 0x1388

    .line 55
    .line 56
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .line 58
    .line 59
    :cond_4
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/16 p1, 0x10

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 p1, 0xd

    .line 14
    .line 15
    :goto_0
    invoke-static {p1}, Landroid/view/SemBlurInfo$Builder;->getBlurPresetAttrs(I)[F

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    aget v1, p1, v0

    .line 21
    .line 22
    float-to-int v1, v1

    .line 23
    iput v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mBlurRadiusPx:I

    .line 24
    .line 25
    new-instance v1, Landroid/view/SemBlurInfo$ColorCurve;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    aget v3, p1, v2

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    aget v4, p1, v2

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    aget v5, p1, v2

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    aget v6, p1, v2

    .line 38
    .line 39
    const/4 v2, 0x5

    .line 40
    aget v7, p1, v2

    .line 41
    .line 42
    const/4 v2, 0x6

    .line 43
    aget v8, p1, v2

    .line 44
    .line 45
    move-object v2, v1

    .line 46
    invoke-direct/range {v2 .. v8}, Landroid/view/SemBlurInfo$ColorCurve;-><init>(FFFFFF)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mBlurColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->isLetterboxWallpaperBlurSupported()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;

    .line 62
    .line 63
    iget-boolean p1, p0, Lcom/android/server/wm/CapturedLetterbox;->mShouldUseCapturedLetterbox:Z

    .line 64
    .line 65
    iput-boolean p1, p0, Lcom/android/server/wm/CapturedLetterbox;->mShouldUseCapturedLetterbox:Z

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/wm/CapturedLetterbox;->removeCapturedLetterboxSurface()V

    .line 68
    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/server/wm/CapturedLetterbox;->mDisplay:Lcom/android/server/wm/DisplayContent;

    .line 73
    .line 74
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/wm/CapturedLetterbox;->mShowCapturedLetterboxRunnable:Lcom/android/server/wm/CapturedLetterbox$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 86
    .line 87
    const-wide/16 v0, 0x1388

    .line 88
    .line 89
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;->mCapturedLetterbox:Lcom/android/server/wm/CapturedLetterbox;

    .line 94
    .line 95
    iput-boolean v0, p0, Lcom/android/server/wm/CapturedLetterbox;->mShouldUseCapturedLetterbox:Z

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/server/wm/CapturedLetterbox;->removeCapturedLetterboxSurface()V

    .line 98
    .line 99
    .line 100
    :cond_2
    :goto_1
    return-void
.end method
