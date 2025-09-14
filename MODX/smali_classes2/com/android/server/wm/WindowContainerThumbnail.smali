.class public final Lcom/android/server/wm/WindowContainerThumbnail;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# instance fields
.field public final mHeight:I

.field public final mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public final mWidth:I

.field public final mWindowContainer:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/hardware/HardwareBuffer;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/wm/SurfaceAnimator;

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/wm/WindowContainerThumbnail$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowContainerThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowContainerThumbnail;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 19
    .line 20
    invoke-virtual {p3}, Landroid/hardware/HardwareBuffer;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWidth:I

    .line 25
    .line 26
    invoke-virtual {p3}, Landroid/hardware/HardwareBuffer;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mHeight:I

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string/jumbo v2, "thumbnail anim: "

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v1, -0x3

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    const/4 v1, 0x2

    .line 77
    invoke-virtual {v0, v1, p2}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    const/4 v0, 0x1

    .line 82
    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_UID:I

    .line 83
    .line 84
    invoke-virtual {p2, v0, v2}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    const-string v0, "WindowContainerThumbnail"

    .line 89
    .line 90
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iput-object p2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 99
    .line 100
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    .line 101
    .line 102
    aget-boolean v0, v0, v1

    .line 103
    .line 104
    if-eqz v0, :cond_0

    .line 105
    .line 106
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 111
    .line 112
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    const/4 v3, 0x0

    .line 117
    const/4 v4, 0x0

    .line 118
    const-wide v1, -0x1d38998a71fcde5L    # -5.956607269182049E299

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_0
    invoke-static {p3}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    iget-object p3, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 131
    .line 132
    invoke-virtual {p1, p3, p2}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 133
    .line 134
    .line 135
    iget-object p2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 136
    .line 137
    sget-object p3, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 138
    .line 139
    invoke-static {p3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 140
    .line 141
    .line 142
    move-result-object p3

    .line 143
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 144
    .line 145
    .line 146
    iget-object p2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 149
    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 152
    .line 153
    const p2, 0x7fffffff

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 157
    .line 158
    .line 159
    return-void
.end method


# virtual methods
.method public final commitPendingTransaction()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 19
    .line 20
    return-void
.end method

.method public final getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSurfaceHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSurfaceWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWidth:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    const p0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V
    .locals 11

    .line 1
    const-wide/16 v0, 0x2710

    .line 2
    .line 3
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 15
    .line 16
    .line 17
    new-instance v4, Lcom/android/server/wm/LocalAnimationAdapter;

    .line 18
    .line 19
    new-instance v1, Lcom/android/server/wm/WindowAnimationSpec;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mWindowCornerRadius:F

    .line 36
    .line 37
    invoke-direct {v1, p2, p3, v2, v3}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    .line 38
    .line 39
    .line 40
    iget-object p2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 41
    .line 42
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 43
    .line 44
    invoke-direct {v4, v1, p2}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 45
    .line 46
    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v10, 0x0

    .line 49
    iget-object v2, p0, Lcom/android/server/wm/WindowContainerThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    const/16 v6, 0x8

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    move-object v3, p1

    .line 57
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceFreezer;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
