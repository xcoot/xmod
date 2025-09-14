.class public final synthetic Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppTransition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppTransition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/AppTransition;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/AppTransition;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    const/4 v3, 0x0

    .line 27
    move v4, v3

    .line 28
    :goto_0
    :try_start_1
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-ge v4, v5, :cond_1

    .line 35
    .line 36
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 43
    .line 44
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionTimeoutLocked()V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_2

    .line 55
    .line 56
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 57
    .line 58
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 65
    .line 66
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 73
    .line 74
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_4

    .line 79
    .line 80
    :cond_2
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 81
    .line 82
    const/4 v5, 0x1

    .line 83
    aget-boolean v4, v4, v5

    .line 84
    .line 85
    if-eqz v4, :cond_3

    .line 86
    .line 87
    iget v4, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 88
    .line 89
    int-to-long v4, v4

    .line 90
    iget-object v6, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 91
    .line 92
    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    iget-object v7, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 97
    .line 98
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    int-to-long v7, v7

    .line 103
    iget-object v9, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 104
    .line 105
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    int-to-long v9, v9

    .line 110
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 111
    .line 112
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    int-to-long v11, v2

    .line 117
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 118
    .line 119
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    filled-new-array {v2, v4, v5, v6, v7}, [Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v18

    .line 143
    const/16 v16, 0x15d

    .line 144
    .line 145
    const/16 v17, 0x0

    .line 146
    .line 147
    const-wide v14, 0x48a041f8677e3678L    # 7.081225573337276E41

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    const/4 v2, 0x3

    .line 156
    iput v2, v0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 159
    .line 160
    .line 161
    iget-object v0, v0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 162
    .line 163
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 164
    .line 165
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 166
    .line 167
    .line 168
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 170
    .line 171
    .line 172
    :goto_1
    return-void

    .line 173
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 175
    .line 176
    .line 177
    throw v0
.end method
