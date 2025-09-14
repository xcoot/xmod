.class public final Lcom/android/server/wm/ImmediateDisplayUpdater;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/DisplayUpdater;


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayInfo:Landroid/view/DisplayInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/DisplayInfo;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ImmediateDisplayUpdater;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/ImmediateDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onDisplayContentDisplayPropertiesPostChanged(IILandroid/window/DisplayAreaInfo;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ImmediateDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySwitchTransitionLauncher:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/wm/RemoteDisplayChangeController;->performRemoteDisplayChange(IILandroid/window/DisplayAreaInfo;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->setAllReady()V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method

.method public final onDisplayContentDisplayPropertiesPreChanged(IIIII)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ImmediateDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplaySwitchTransitionLauncher:Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mShouldRequestTransitionOnDisplaySwitch:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 22
    .line 23
    iget-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    .line 24
    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const v4, 0x1110268

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_7

    .line 43
    .line 44
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_7

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    iput-object v3, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/4 v5, 0x0

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 65
    .line 66
    invoke-virtual {v1, v2, v5}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 70
    .line 71
    invoke-virtual {v1, v2, v5}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 75
    .line 76
    const/16 v2, 0x4000

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/android/server/wm/Transition;->addFlag(I)V

    .line 79
    .line 80
    .line 81
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 82
    .line 83
    aget-boolean v1, v1, v5

    .line 84
    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    const/4 v3, 0x0

    .line 91
    const-wide v6, 0x46dd3c1268a43bc8L    # 2.3717970619631488E33

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    move-object p0, v1

    .line 98
    move-wide p1, v6

    .line 99
    move p3, v4

    .line 100
    move-object p4, v2

    .line 101
    move-object p5, v3

    .line 102
    invoke-static/range {p0 .. p5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    new-instance v4, Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 107
    .line 108
    invoke-direct {v4, p1}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(I)V

    .line 109
    .line 110
    .line 111
    new-instance v6, Landroid/graphics/Rect;

    .line 112
    .line 113
    invoke-direct {v6, v5, v5, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v6}, Landroid/window/TransitionRequestInfo$DisplayChange;->setStartAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 117
    .line 118
    .line 119
    new-instance v6, Landroid/graphics/Rect;

    .line 120
    .line 121
    invoke-direct {v6, v5, v5, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v6}, Landroid/window/TransitionRequestInfo$DisplayChange;->setEndAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 125
    .line 126
    .line 127
    const/4 v6, 0x1

    .line 128
    invoke-virtual {v4, v6}, Landroid/window/TransitionRequestInfo$DisplayChange;->setPhysicalDisplayChanged(Z)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 129
    .line 130
    .line 131
    const/4 v6, 0x6

    .line 132
    invoke-virtual {v1, v6, v5}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {v1, v6, v3, v3, v4}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 137
    .line 138
    .line 139
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_DUAL_MODE:Z

    .line 140
    .line 141
    if-eqz v7, :cond_4

    .line 142
    .line 143
    invoke-virtual {v1, v4, v2, v6}, Lcom/android/server/wm/TransitionController;->setDisplaySyncMethod(Landroid/window/TransitionRequestInfo$DisplayChange;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_4
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/wm/TransitionController;->setDisplaySyncMethod(Landroid/window/TransitionRequestInfo$DisplayChange;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V

    .line 148
    .line 149
    .line 150
    :goto_0
    iput-object v6, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 151
    .line 152
    invoke-virtual {v6, v2, v5}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 153
    .line 154
    .line 155
    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mTransition:Lcom/android/server/wm/Transition;

    .line 156
    .line 157
    if-eqz v1, :cond_6

    .line 158
    .line 159
    iget-object v1, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 160
    .line 161
    const/4 v2, 0x2

    .line 162
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->startPowerMode(I)V

    .line 163
    .line 164
    .line 165
    :cond_6
    iput-boolean v5, v0, Lcom/android/server/wm/PhysicalDisplaySwitchTransitionLauncher;->mShouldRequestTransitionOnDisplaySwitch:Z

    .line 166
    .line 167
    :cond_7
    :goto_2
    return-void
.end method

.method public final updateDisplayInfo(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ImmediateDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 6
    .line 7
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 8
    .line 9
    iget-object v3, p0, Lcom/android/server/wm/ImmediateDisplayUpdater;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wm/ImmediateDisplayUpdater;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
