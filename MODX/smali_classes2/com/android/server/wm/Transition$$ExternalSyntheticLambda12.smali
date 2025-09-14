.class public final synthetic Lcom/android/server/wm/Transition$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/lang/Runnable;

    .line 9
    .line 10
    check-cast p1, Landroid/view/SurfaceControl$TransactionStats;

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Landroid/util/ArraySet;

    .line 17
    .line 18
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :pswitch_1
    check-cast p0, Lcom/android/server/wm/Transition;

    .line 31
    .line 32
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 38
    .line 39
    if-eqz v0, :cond_5

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 58
    .line 59
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    add-int/2addr v0, v1

    .line 77
    iput v0, p1, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    .line 78
    .line 79
    if-ne v0, v1, :cond_4

    .line 80
    .line 81
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    .line 82
    .line 83
    aget-boolean v0, v0, v1

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 92
    .line 93
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    const-string v5, "Pausing configuration dispatch for  %s"

    .line 98
    .line 99
    const-wide v2, 0x244067a8f0f9318aL    # 4.514047213319695E-134

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->snapshotStartState(Lcom/android/server/wm/WindowContainer;)V

    .line 109
    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 118
    .line 119
    iget p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 120
    .line 121
    or-int/lit8 p1, p1, 0x40

    .line 122
    .line 123
    iput p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 124
    .line 125
    :cond_5
    :goto_0
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
