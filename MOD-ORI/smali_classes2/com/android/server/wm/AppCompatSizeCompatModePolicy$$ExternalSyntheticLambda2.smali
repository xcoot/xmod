.class public final synthetic Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatSizeCompatModePolicy;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Rect;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Rect;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;->f$1:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-gt v2, v3, :cond_2

    .line 27
    .line 28
    if-gt v1, p0, :cond_2

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 31
    .line 32
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 33
    .line 34
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    sget-boolean v5, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->ENFORCE_DEVICE_RESTRICTIONS:Z

    .line 37
    .line 38
    invoke-static {}, Lcom/android/window/flags/Flags;->enableDesktopWindowingMode()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->enforceDeviceRestrictions()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    invoke-static {v4}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isDesktopModeSupported(Landroid/content/Context;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v4, 0x5

    .line 61
    if-ne v0, v4, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    int-to-float v0, v3

    .line 68
    int-to-float v2, v2

    .line 69
    div-float/2addr v0, v2

    .line 70
    int-to-float p0, p0

    .line 71
    int-to-float v1, v1

    .line 72
    div-float/2addr p0, v1

    .line 73
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method
