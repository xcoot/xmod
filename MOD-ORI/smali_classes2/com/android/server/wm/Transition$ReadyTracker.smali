.class public final Lcom/android/server/wm/Transition$ReadyTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NULL_TRACKER:Lcom/android/server/wm/Transition$ReadyTracker;


# instance fields
.field public final mConditions:Ljava/util/ArrayList;

.field public final mMet:Ljava/util/ArrayList;

.field public final mTransition:Lcom/android/server/wm/Transition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/Transition$ReadyTracker;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/wm/Transition$ReadyTracker;-><init>(Lcom/android/server/wm/Transition;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/wm/Transition$ReadyTracker;->NULL_TRACKER:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/Transition;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mMet:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mTransition:Lcom/android/server/wm/Transition;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/wm/Transition$ReadyCondition;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mTransition:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/android/server/wm/TransitionController;->mFullReadyTracking:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iput-object p0, p1, Lcom/android/server/wm/Transition$ReadyCondition;->mTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 18
    .line 19
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    aget-boolean p0, p0, v1

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget p1, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 31
    .line 32
    int-to-long v0, p1

    .line 33
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const/4 v5, 0x4

    .line 44
    const/4 v6, 0x0

    .line 45
    const-wide v3, -0x293d1ab9faafc07eL    # -8.875424096017608E109

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void

    .line 54
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/server/wm/Transition$ReadyTracker;->NULL_TRACKER:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 55
    .line 56
    iput-object p0, p1, Lcom/android/server/wm/Transition$ReadyCondition;->mTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 57
    .line 58
    return-void
.end method
