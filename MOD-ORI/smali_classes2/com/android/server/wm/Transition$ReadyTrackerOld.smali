.class public final Lcom/android/server/wm/Transition$ReadyTrackerOld;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDeferReadyDepth:I

.field public final mReadyGroups:Landroid/util/ArrayMap;

.field public mReadyOverride:Z

.field public mUsed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyOverride:Z

    .line 15
    .line 16
    iput v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final allReady()Z
    .locals 13

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    .line 10
    .line 11
    iget-boolean v3, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyOverride:Z

    .line 12
    .line 13
    iget v4, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    .line 14
    .line 15
    int-to-long v4, v4

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    move v7, v2

    .line 22
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    if-ge v7, v8, :cond_1

    .line 29
    .line 30
    if-eqz v7, :cond_0

    .line 31
    .line 32
    const/16 v8, 0x2c

    .line 33
    .line 34
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v8, 0x3a

    .line 47
    .line 48
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v8, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    add-int/lit8 v7, v7, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 72
    .line 73
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    filled-new-array {v0, v3, v4, v6}, [Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    const-wide v8, -0x2d4b2a4e4122c1f1L    # -2.6525701205501237E90

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    const/16 v10, 0x1f

    .line 95
    .line 96
    const/4 v11, 0x0

    .line 97
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mUsed:Z

    .line 101
    .line 102
    if-nez v0, :cond_3

    .line 103
    .line 104
    return v2

    .line 105
    :cond_3
    iget v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    .line 106
    .line 107
    if-lez v0, :cond_4

    .line 108
    .line 109
    return v2

    .line 110
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyOverride:Z

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    return v1

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    sub-int/2addr v0, v1

    .line 122
    :goto_1
    if-ltz v0, :cond_8

    .line 123
    .line 124
    iget-object v3, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    .line 125
    .line 126
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_7

    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-nez v3, :cond_6

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mReadyGroups:Landroid/util/ArrayMap;

    .line 146
    .line 147
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Ljava/lang/Boolean;

    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    if-nez v3, :cond_7

    .line 158
    .line 159
    return v2

    .line 160
    :cond_7
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_8
    return v1
.end method
