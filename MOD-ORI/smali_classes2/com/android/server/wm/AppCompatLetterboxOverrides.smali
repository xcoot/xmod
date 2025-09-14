.class public final Lcom/android/server/wm/AppCompatLetterboxOverrides;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public mShowWallpaperForLetterboxBackground:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getLetterboxBackgroundColor()Landroid/graphics/Color;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v3, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 9
    .line 10
    if-eqz v2, :cond_8

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->shouldUseLetterboxBackgroundColor()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxBackgroundType()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 43
    .line 44
    if-eqz v2, :cond_7

    .line 45
    .line 46
    if-eq v2, v1, :cond_5

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    if-eq v2, v1, :cond_4

    .line 50
    .line 51
    const/4 v0, 0x3

    .line 52
    if-ne v2, v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->hasWallpaperBackgroundForLetterbox()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_2
    const-string p0, "ActivityTaskManager"

    .line 66
    .line 67
    const-string v0, "Wallpaper option is selected for letterbox background but blur is not supported by a device or not supported in the current window configuration or both alpha scrim and blur radius aren\'t provided so using solid color background"

    .line 68
    .line 69
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    .line 74
    .line 75
    const-string v0, "Unexpected letterbox background type: "

    .line 76
    .line 77
    invoke-static {v2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_4
    if-eqz v0, :cond_6

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_6

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_5
    if-eqz v0, :cond_6

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-eqz p0, :cond_6

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0

    .line 119
    :cond_6
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :cond_8
    :goto_1
    if-eqz v2, :cond_9

    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-eqz p0, :cond_9

    .line 136
    .line 137
    iget-object p0, v3, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerColor(Landroid/content/Context;)I

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    :cond_9
    const/high16 p0, -0x1000000

    .line 149
    .line 150
    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0
.end method

.method public final getLetterboxBackgroundType()I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

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
    return p0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxBackgroundType()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final getLetterboxWallpaperBlurRadiusPx()I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getLetterboxBackgroundWallpaperBlurRadiusPx()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 22
    .line 23
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    .line 24
    .line 25
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final getLetterboxWallpaperDarkScrimAlpha()F
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getLetterboxBackgroundWallpaperDarkScrimAlpha()F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    cmpg-float v0, p0, v2

    .line 19
    .line 20
    if-ltz v0, :cond_1

    .line 21
    .line 22
    cmpl-float v0, p0, v1

    .line 23
    .line 24
    if-ltz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v2, p0

    .line 28
    :cond_1
    :goto_0
    return v2

    .line 29
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 30
    .line 31
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    .line 32
    .line 33
    cmpg-float v0, p0, v2

    .line 34
    .line 35
    if-ltz v0, :cond_4

    .line 36
    .line 37
    cmpl-float v0, p0, v1

    .line 38
    .line 39
    if-ltz v0, :cond_3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    move v2, p0

    .line 43
    :cond_4
    :goto_1
    return v2
.end method

.method public final hasWallpaperBackgroundForLetterbox()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetBlurWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->occludesParentByLetterbox(Lcom/android/server/wm/WindowState;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mShowWallpaperForLetterboxBackground:Z

    .line 20
    .line 21
    return p0
.end method

.method public final isLetterboxWallpaperBlurSupported()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isLetterboxWallpaperBlurSupported()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-class v0, Landroid/view/WindowManager;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Landroid/view/WindowManager;

    .line 30
    .line 31
    invoke-interface {p0}, Landroid/view/WindowManager;->isCrossWindowBlurEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final occludesParentByLetterbox(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    move p0, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move p0, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    :goto_0
    if-nez p0, :cond_3

    .line 49
    .line 50
    return v2

    .line 51
    :cond_3
    if-eqz p1, :cond_4

    .line 52
    .line 53
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 54
    .line 55
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 56
    .line 57
    const/4 p1, -0x2

    .line 58
    if-ne p0, p1, :cond_4

    .line 59
    .line 60
    return v2

    .line 61
    :cond_4
    return v1
.end method

.method public final shouldHideLetterboxSurface(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->occludesParentByLetterbox(Lcom/android/server/wm/WindowState;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetBlurWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    :cond_1
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method
