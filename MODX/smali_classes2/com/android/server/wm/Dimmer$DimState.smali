.class public final Lcom/android/server/wm/Dimmer$DimState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAnimateExit:Z

.field public final mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

.field public final mDimBounds:Landroid/graphics/Rect;

.field public final mDimSurface:Landroid/view/SurfaceControl;

.field public final mHostContainer:Lcom/android/server/wm/WindowContainer;

.field public mIsVisible:Z

.field public mLastDimmingWindow:Lcom/android/server/wm/WindowState;

.field public mSkipAnimation:Z

.field public mSurfaceLayoutAdjusted:Z

.field public final synthetic this$0:Lcom/android/server/wm/Dimmer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Dimmer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->this$0:Lcom/android/server/wm/Dimmer;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mSkipAnimation:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mIsVisible:Z

    .line 13
    .line 14
    new-instance v0, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget-object v0, p1, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/wm/DimmerAnimationHelper;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/wm/Dimmer;->mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

    .line 28
    .line 29
    invoke-direct {v1, v0, p1}, Lcom/android/server/wm/DimmerAnimationHelper;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

    .line 33
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/Dimmer$DimState;->makeDimLayer()Landroid/view/SurfaceControl;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->getLayerId()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const p1, 0x9538

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    const-string p0, "WindowManagerDimmer"

    .line 64
    .line 65
    const-string p1, "OutOfResourcesException creating dim surface"

    .line 66
    .line 67
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method


# virtual methods
.method public final adjustSurfaceLayout(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 6
    .line 7
    int-to-float v2, v2

    .line 8
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 9
    .line 10
    int-to-float v1, v1

    .line 11
    invoke-virtual {p1, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/server/wm/Dimmer$DimState;->mSurfaceLayoutAdjusted:Z

    .line 33
    .line 34
    return-void
.end method

.method public final isDimming()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mLastDimmingWindow:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/android/window/flags/Flags;->useTasksDimOnly()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final makeDimLayer()Landroid/view/SurfaceControl;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->this$0:Lcom/android/server/wm/Dimmer;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "Dim Layer for - "

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v0, "DimLayer.makeDimLayer"

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method

.method public final remove(Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getLayerId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "ready to remove"

    .line 12
    .line 13
    .line 14
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const v1, 0x953b

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

    .line 27
    .line 28
    iget-object v2, v1, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    .line 29
    .line 30
    iget-object v3, v1, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget v4, v2, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentAlpha:F

    .line 38
    .line 39
    iput v4, v3, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    .line 40
    .line 41
    iget v2, v2, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentBlur:I

    .line 42
    .line 43
    iput v2, v3, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    .line 44
    .line 45
    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/DimmerAnimationHelper;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    iput-object v0, v1, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/LocalAnimationAdapter;

    .line 52
    .line 53
    iput-object v0, v1, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getLayerId()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const v1, 0x953d

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 78
    .line 79
    .line 80
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    aget-boolean v0, v0, v1

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 96
    .line 97
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    const-wide v1, 0x6e459311c7713e31L    # 1.5597225220299602E223

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    const/4 v4, 0x0

    .line 108
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v0, "Tried to remove "

    .line 115
    .line 116
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 120
    .line 121
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p0, " multiple times\n"

    .line 125
    .line 126
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    const-string p1, "WindowManagerDimmer"

    .line 134
    .line 135
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    :cond_2
    :goto_0
    return-void
.end method

.method public final setReady(Landroid/view/SurfaceControl$Transaction;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v3, v1, Lcom/android/server/wm/Dimmer$DimState;->mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

    .line 6
    .line 7
    iget-object v0, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 8
    .line 9
    iget v4, v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    .line 10
    .line 11
    iget v5, v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    .line 12
    .line 13
    iget-object v6, v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mGeometryParent:Lcom/android/server/wm/WindowContainer;

    .line 16
    .line 17
    iget-object v8, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 18
    .line 19
    iget v9, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    .line 20
    .line 21
    iput v9, v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    .line 22
    .line 23
    iget v9, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    .line 24
    .line 25
    iput v9, v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    .line 26
    .line 27
    iget-object v9, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    .line 28
    .line 29
    iput-object v9, v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    .line 30
    .line 31
    iget-object v9, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mGeometryParent:Lcom/android/server/wm/WindowContainer;

    .line 32
    .line 33
    iput-object v9, v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mGeometryParent:Lcom/android/server/wm/WindowContainer;

    .line 34
    .line 35
    iget-object v0, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    .line 36
    .line 37
    const-string v9, "WindowManager"

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, " does not have a dimming container. Have you forgotten to call adjustRelativeLayer?"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto/16 :goto_7

    .line 62
    .line 63
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 64
    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v3, "container "

    .line 70
    .line 71
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v3, "does not have a surface"

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Dimmer$DimState;->remove(Landroid/view/SurfaceControl$Transaction;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :cond_1
    iget-boolean v0, v1, Lcom/android/server/wm/Dimmer$DimState;->mIsVisible:Z

    .line 97
    .line 98
    const/4 v10, 0x1

    .line 99
    const/4 v11, 0x0

    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    iget-object v0, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 103
    .line 104
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 105
    .line 106
    .line 107
    iget-object v0, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 108
    .line 109
    invoke-virtual {v2, v0, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 110
    .line 111
    .line 112
    iput-boolean v10, v1, Lcom/android/server/wm/Dimmer$DimState;->mIsVisible:Z

    .line 113
    .line 114
    :cond_2
    iget-object v12, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 115
    .line 116
    iget-object v0, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mGeometryParent:Lcom/android/server/wm/WindowContainer;

    .line 117
    .line 118
    const/4 v13, 0x0

    .line 119
    if-eq v7, v0, :cond_3

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    goto :goto_0

    .line 126
    :cond_3
    move-object v0, v13

    .line 127
    :goto_0
    iget-object v7, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    .line 128
    .line 129
    if-eq v7, v6, :cond_4

    .line 130
    .line 131
    iget-object v7, v7, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    move-object v7, v13

    .line 135
    :goto_1
    if-eqz v0, :cond_5

    .line 136
    .line 137
    :try_start_0
    invoke-virtual {v2, v12, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :catch_0
    move-exception v0

    .line 142
    goto :goto_3

    .line 143
    :cond_5
    :goto_2
    if-eqz v7, :cond_6

    .line 144
    .line 145
    const/4 v0, -0x1

    .line 146
    invoke-virtual {v2, v12, v7, v0}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v14, "Tried to change parent of dim "

    .line 153
    .line 154
    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v12, " after remove"

    .line 161
    .line 162
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-static {v9, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .line 171
    .line 172
    :cond_6
    :goto_4
    iget v0, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    .line 173
    .line 174
    sub-float v0, v4, v0

    .line 175
    .line 176
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    const v7, 0x38d1b717    # 1.0E-4f

    .line 181
    .line 182
    .line 183
    cmpg-float v0, v0, v7

    .line 184
    .line 185
    if-gez v0, :cond_7

    .line 186
    .line 187
    iget v0, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    .line 188
    .line 189
    if-ne v5, v0, :cond_7

    .line 190
    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Dimmer$DimState;->isDimming()Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_10

    .line 196
    .line 197
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Dimmer$DimState;->remove(Landroid/view/SurfaceControl$Transaction;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_7

    .line 201
    .line 202
    :cond_7
    iget-object v0, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 203
    .line 204
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getLayerId()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    const-string/jumbo v7, "new target values"

    .line 213
    .line 214
    .line 215
    filled-new-array {v0, v7}, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const v7, 0x953b

    .line 220
    .line 221
    .line 222
    invoke-static {v7, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 223
    .line 224
    .line 225
    iget-object v0, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 226
    .line 227
    iget-object v7, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    .line 228
    .line 229
    iget-object v9, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 230
    .line 231
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    if-eqz v7, :cond_8

    .line 235
    .line 236
    iget v12, v7, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentAlpha:F

    .line 237
    .line 238
    iput v12, v9, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    .line 239
    .line 240
    iget v7, v7, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentBlur:I

    .line 241
    .line 242
    iput v7, v9, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    .line 243
    .line 244
    :cond_8
    iget-object v7, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 245
    .line 246
    invoke-virtual {v7, v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    .line 247
    .line 248
    .line 249
    iput-object v13, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/LocalAnimationAdapter;

    .line 250
    .line 251
    iput-object v13, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    .line 252
    .line 253
    iget-boolean v0, v1, Lcom/android/server/wm/Dimmer$DimState;->mSkipAnimation:Z

    .line 254
    .line 255
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    .line 256
    .line 257
    const/4 v12, 0x0

    .line 258
    if-nez v0, :cond_e

    .line 259
    .line 260
    if-eqz v6, :cond_9

    .line 261
    .line 262
    iget-object v0, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    .line 263
    .line 264
    if-ne v6, v0, :cond_9

    .line 265
    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Dimmer$DimState;->isDimming()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_9

    .line 271
    .line 272
    goto/16 :goto_6

    .line 273
    .line 274
    :cond_9
    aget-boolean v0, v9, v10

    .line 275
    .line 276
    if-eqz v0, :cond_a

    .line 277
    .line 278
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 283
    .line 284
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v18

    .line 288
    const/16 v17, 0x0

    .line 289
    .line 290
    const-wide v14, -0x5838e9a5f346c47cL

    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    const/16 v16, 0x0

    .line 296
    .line 297
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    :cond_a
    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    iget-object v5, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    .line 309
    .line 310
    iget-object v6, v5, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 311
    .line 312
    if-eqz v6, :cond_c

    .line 313
    .line 314
    iget-object v6, v6, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 315
    .line 316
    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 317
    .line 318
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-nez v6, :cond_b

    .line 323
    .line 324
    const/high16 v6, 0x43480000    # 200.0f

    .line 325
    .line 326
    mul-float/2addr v5, v6

    .line 327
    float-to-long v5, v5

    .line 328
    goto :goto_5

    .line 329
    :cond_b
    invoke-interface {v6}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    .line 330
    .line 331
    .line 332
    move-result-wide v5

    .line 333
    goto :goto_5

    .line 334
    :cond_c
    const-wide/16 v5, 0x0

    .line 335
    .line 336
    :goto_5
    new-instance v11, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    .line 337
    .line 338
    new-instance v12, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 339
    .line 340
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    iget v13, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    .line 345
    .line 346
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 347
    .line 348
    .line 349
    move-result-object v13

    .line 350
    invoke-direct {v12, v0, v13}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 354
    .line 355
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    iget v13, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    .line 360
    .line 361
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v13

    .line 365
    invoke-direct {v0, v4, v13}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    invoke-direct {v11, v12, v0, v5, v6}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;-><init>(Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;J)V

    .line 369
    .line 370
    .line 371
    aget-boolean v0, v9, v10

    .line 372
    .line 373
    if-eqz v0, :cond_d

    .line 374
    .line 375
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 380
    .line 381
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v17

    .line 385
    const-wide v13, -0x107bda7fb260c74eL

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    const/4 v15, 0x0

    .line 391
    const/16 v16, 0x0

    .line 392
    .line 393
    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    :cond_d
    iput-object v11, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    .line 397
    .line 398
    iget-object v0, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

    .line 399
    .line 400
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    .line 402
    .line 403
    new-instance v0, Lcom/android/server/wm/LocalAnimationAdapter;

    .line 404
    .line 405
    invoke-direct {v0, v11, v7}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 406
    .line 407
    .line 408
    iput-object v0, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/LocalAnimationAdapter;

    .line 409
    .line 410
    iget v0, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    .line 411
    .line 412
    iget-object v4, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 413
    .line 414
    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getLayerId()I

    .line 415
    .line 416
    .line 417
    move-result v4

    .line 418
    iget v5, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    .line 419
    .line 420
    int-to-float v5, v5

    .line 421
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    filled-new-array {v4, v6, v5}, [Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    const v5, 0x953a

    .line 438
    .line 439
    .line 440
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 441
    .line 442
    .line 443
    iget-object v4, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/LocalAnimationAdapter;

    .line 444
    .line 445
    iget-object v5, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 446
    .line 447
    new-instance v6, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;

    .line 448
    .line 449
    invoke-direct {v6, v3, v1, v0}, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DimmerAnimationHelper;Lcom/android/server/wm/Dimmer$DimState;F)V

    .line 450
    .line 451
    .line 452
    const/4 v0, 0x4

    .line 453
    invoke-virtual {v4, v5, v2, v0, v6}, Lcom/android/server/wm/LocalAnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 454
    .line 455
    .line 456
    goto :goto_7

    .line 457
    :cond_e
    :goto_6
    aget-boolean v0, v9, v12

    .line 458
    .line 459
    if-eqz v0, :cond_f

    .line 460
    .line 461
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    float-to-double v4, v4

    .line 466
    iget v6, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    .line 467
    .line 468
    int-to-long v6, v6

    .line 469
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 470
    .line 471
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 476
    .line 477
    .line 478
    move-result-object v5

    .line 479
    filled-new-array {v0, v4, v5}, [Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v18

    .line 483
    const/16 v17, 0x0

    .line 484
    .line 485
    const-wide v14, 0x346ea5c6c622399aL    # 3.905950942569482E-56

    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    const/16 v16, 0x18

    .line 491
    .line 492
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    :cond_f
    iget-object v0, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 496
    .line 497
    invoke-virtual {v3, v2, v0}, Lcom/android/server/wm/DimmerAnimationHelper;->setCurrentAlphaBlur(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 498
    .line 499
    .line 500
    iput-boolean v12, v1, Lcom/android/server/wm/Dimmer$DimState;->mSkipAnimation:Z

    .line 501
    .line 502
    :cond_10
    :goto_7
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Dimmer#DimState with host="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", surface="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method
