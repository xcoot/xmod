.class public Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BLUR_SUPPORTED:Z


# instance fields
.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_WINDOW_BLUR_SUPPORTED:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->BLUR_SUPPORTED:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppCompatConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 5
    .line 6
    return-void
.end method

.method public static getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/AppCompatConfiguration;->mPresetManager:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;->mDeviceConfig:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    .line 8
    .line 9
    iget v2, v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;->mPreset:I

    .line 10
    .line 11
    if-eqz v2, :cond_3

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatController;->inAllowedWindowingMode(Lcom/android/server/wm/ActivityRecord;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mMultiTaskingAppCompatConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    iget v2, v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;->mPreset:I

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    if-ne v2, v3, :cond_0

    .line 39
    .line 40
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlurWallpaperLetterboxConfig;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMultiTaskingAppCompatConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v3, 0x2

    .line 49
    if-ne v2, v3, :cond_1

    .line 50
    .line 51
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMultiTaskingAppCompatConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, "AppCompatConfigurationPreset("

    .line 62
    .line 63
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;->mPreset:I

    .line 67
    .line 68
    const-string v3, ") is unknown."

    .line 69
    .line 70
    const-string v4, "MultiTaskingAppCompat"

    .line 71
    .line 72
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mMultiTaskingAppCompatConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    .line 76
    .line 77
    if-eqz p0, :cond_3

    .line 78
    .line 79
    move-object v1, p0

    .line 80
    :cond_3
    return-object v1
.end method

.method public static isPresetBlurWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isLetterboxWallpaperBlurSupported()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public static isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetConfig()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public static isPresetWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getLetterboxBackgroundType()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 v0, 0x3

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public getLetterboxActivityCornersRadius()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    .line 4
    .line 5
    return p0
.end method

.method public getLetterboxBackgroundColor()Landroid/graphics/Color;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getLetterboxBackgroundType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxBackgroundType()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getLetterboxBackgroundWallpaperBlurColorCurve()Landroid/view/SemBlurInfo$ColorCurve;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getLetterboxBackgroundWallpaperBlurRadiusPx()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    .line 4
    .line 5
    return p0
.end method

.method public getLetterboxBackgroundWallpaperDarkScrimAlpha()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    .line 4
    .line 5
    return p0
.end method

.method public hasCapturedLetterboxSurface()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public isLetterboxWallpaperBlurSupported()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public isPresetConfig()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public onAdjustWallpaperWindows(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public shouldUseLetterboxBackgroundColor()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
