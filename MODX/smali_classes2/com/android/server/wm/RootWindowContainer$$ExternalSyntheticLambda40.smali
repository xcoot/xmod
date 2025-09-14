.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/TransitionController$OnStartCollect;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:Lcom/android/server/wm/Transition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;->f$1:Lcom/android/server/wm/Transition;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCollectStarted(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;->f$0:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda40;->f$1:Lcom/android/server/wm/Transition;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->shouldSleep()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->abort()V

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget-object p1, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, p0, v0, v0, v0}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 21
    .line 22
    .line 23
    iget p1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 32
    .line 33
    aget-boolean p1, p1, v0

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget p1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 38
    .line 39
    int-to-long v1, p1

    .line 40
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 41
    .line 42
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    const/4 v6, 0x1

    .line 51
    const/4 v7, 0x0

    .line 52
    const-wide v4, -0xc6418a78964c316L    # -7.804015622836719E248

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mForcePlaying:Z

    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 63
    .line 64
    iget-object v1, p1, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    sub-int/2addr v1, v0

    .line 71
    :goto_0
    if-ltz v1, :cond_4

    .line 72
    .line 73
    iget-object v0, p1, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lcom/android/server/wm/Transition$ReadyCondition;

    .line 80
    .line 81
    iget-boolean v2, v0, Lcom/android/server/wm/Transition$ReadyCondition;->mMet:Z

    .line 82
    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const-string/jumbo v2, "play-now"

    .line 87
    .line 88
    .line 89
    iput-object v2, v0, Lcom/android/server/wm/Transition$ReadyCondition;->mAlternate:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 92
    .line 93
    .line 94
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    new-instance v0, Lcom/android/server/wm/Transition$ReadyCondition;

    .line 98
    .line 99
    const-string v1, "force-play-now"

    .line 100
    .line 101
    invoke-direct {v0, v1}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->setAllReady()V

    .line 111
    .line 112
    .line 113
    iget p1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 114
    .line 115
    if-nez p1, :cond_5

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->start()V

    .line 118
    .line 119
    .line 120
    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/android/server/wm/BLASTSyncEngine;->onSurfacePlacement()V

    .line 123
    .line 124
    .line 125
    :goto_2
    return-void
.end method
