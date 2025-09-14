.class public final synthetic Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Runnable;

.field public final synthetic f$3:Lcom/android/server/wm/Transition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DeferredDisplayUpdater;ZLcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;Lcom/android/server/wm/Transition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/Transition;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$1:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;->f$3:Lcom/android/server/wm/Transition;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroid/graphics/Rect;

    .line 13
    .line 14
    iget-object v3, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 15
    .line 16
    iget v4, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 17
    .line 18
    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-direct {v2, v5, v5, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 27
    .line 28
    iget v3, v3, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 29
    .line 30
    invoke-static {}, Lcom/android/window/flags/Flags;->blastSyncNotificationShadeOnDisplaySwitch()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v4, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 39
    .line 40
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 41
    .line 42
    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_0

    .line 51
    .line 52
    iget-object v6, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 53
    .line 54
    iget-object v7, v6, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 55
    .line 56
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 57
    .line 58
    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 59
    .line 60
    invoke-virtual {v7, v6}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_0

    .line 65
    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v7, " uses blast for display switch"

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const-string v7, "DeferredDisplayUpdater"

    .line 84
    .line 85
    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    const/4 v6, 0x1

    .line 89
    iput v6, v4, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    .line 90
    .line 91
    :cond_0
    iget-object v4, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 92
    .line 93
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 96
    .line 97
    .line 98
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 99
    .line 100
    .line 101
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 102
    .line 103
    aget-boolean v1, v1, v5

    .line 104
    .line 105
    if-eqz v1, :cond_1

    .line 106
    .line 107
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 108
    .line 109
    const/4 v8, 0x0

    .line 110
    const/4 v9, 0x0

    .line 111
    const-wide v5, -0xcb52194f7d6ce00L    # -2.348308025412843E247

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    const/4 v7, 0x0

    .line 117
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    goto :goto_2

    .line 123
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 124
    .line 125
    invoke-virtual {p1, p0, v3, v2}, Lcom/android/server/wm/DeferredDisplayUpdater;->onDisplayUpdated(Lcom/android/server/wm/Transition;ILandroid/graphics/Rect;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/DeferredDisplayUpdater;->getCurrentDisplayChange(ILandroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v1, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 134
    .line 135
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 136
    .line 137
    const/4 v2, 0x0

    .line 138
    invoke-virtual {v1, p0, v2, v2, v0}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .line 140
    .line 141
    :goto_1
    iget-object p0, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :goto_2
    iget-object p1, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 150
    .line 151
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 154
    .line 155
    .line 156
    throw p0
.end method
