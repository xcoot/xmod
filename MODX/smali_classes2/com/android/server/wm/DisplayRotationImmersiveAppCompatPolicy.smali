.class public final Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayRotation:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/DisplayRotation;Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final isRotationLockEnforcedLocked(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    iget v3, v3, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 27
    .line 28
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    or-int/2addr v4, v5

    .line 37
    and-int/2addr v3, v4

    .line 38
    if-nez v3, :cond_8

    .line 39
    .line 40
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 41
    .line 42
    if-eqz v3, :cond_8

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eq v3, v1, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    return v2

    .line 58
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_5

    .line 63
    .line 64
    return v2

    .line 65
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_6

    .line 76
    .line 77
    move p0, v1

    .line 78
    goto :goto_0

    .line 79
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_7

    .line 84
    .line 85
    const/4 p0, 0x2

    .line 86
    goto :goto_0

    .line 87
    :cond_7
    move p0, v2

    .line 88
    :goto_0
    if-eq v0, p0, :cond_8

    .line 89
    .line 90
    move v2, v1

    .line 91
    :cond_8
    :goto_1
    return v2
.end method
