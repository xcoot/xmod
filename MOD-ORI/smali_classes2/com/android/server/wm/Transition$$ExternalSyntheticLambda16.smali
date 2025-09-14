.class public final synthetic Lcom/android/server/wm/Transition$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Transition;

.field public final synthetic f$1:Lcom/android/server/wm/Task;

.field public final synthetic f$2:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/wm/Transition;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda16;->f$1:Lcom/android/server/wm/Task;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda16;->f$2:Lcom/android/server/wm/Task;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda16;->f$1:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda16;->f$2:Lcom/android/server/wm/Task;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/Task;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-ne p1, v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 40
    .line 41
    aget-boolean v1, v1, v3

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget v1, v0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 46
    .line 47
    int-to-long v4, v1

    .line 48
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v6, 0x3

    .line 53
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 62
    .line 63
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    filled-new-array {v4, v1, v6}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    const-string v11, "Transition %d: Set %s as transient-hidden-task, caller=%s"

    .line 72
    .line 73
    const-wide v8, 0x6c4a3205cd593ffbL    # 4.409323821846559E213

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    const/4 v10, 0x1

    .line 79
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 94
    .line 95
    .line 96
    :cond_3
    if-eqz p0, :cond_4

    .line 97
    .line 98
    if-ne p1, p0, :cond_5

    .line 99
    .line 100
    :goto_0
    move v2, v3

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-eqz p0, :cond_5

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_5

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    :goto_1
    return v2
.end method
