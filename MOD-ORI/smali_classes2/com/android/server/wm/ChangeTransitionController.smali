.class public final Lcom/android/server/wm/ChangeTransitionController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/IController;


# static fields
.field public static final DISABLE_LEGACY_RESIZE_TRANSITION:Z


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mFullToSplitTransitionSyncId:I

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mH:Lcom/android/server/wm/ChangeTransitionController$H;

.field public final mSyncDeferredAllDrawnApps:Landroid/util/ArraySet;

.field public final mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

.field public mSyncStartedTime:J

.field public mTransitionController:Lcom/android/server/wm/TransitionController;

.field public final mTransitionToChangingPipTask:Ljava/util/HashMap;

.field public mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.mt.debug.disable_legacy_resize_transition"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/server/wm/ChangeTransitionController;->DISABLE_LEGACY_RESIZE_TRANSITION:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredAllDrawnApps:Landroid/util/ArraySet;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mFullToSplitTransitionSyncId:I

    .line 13
    .line 14
    new-instance v0, Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    .line 20
    .line 21
    new-instance v0, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 33
    .line 34
    return-void
.end method

.method public static handleEnteringPipIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mAutoEnteringPip:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 6
    .line 7
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget p1, p1, Lcom/android/server/wm/Transition;->mType:I

    .line 14
    .line 15
    const/16 v0, 0xa

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v0, "handleEnteringPipIfNeeded: r="

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "ChangeTransitionController"

    .line 44
    .line 45
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    const-string v0, "fixed_rotation(paused)"

    .line 50
    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityRecord;->setHiddenWhileEnteringPinnedMode(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "[ChangeTransitionController]"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredAllDrawnApps:Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "  mSyncDeferredAllDrawnApps="

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredAllDrawnApps:Landroid/util/ArraySet;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "  mTransitionToChangingPipTask="

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public final findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return-object p0
.end method

.method public final handleRequestFullscreenToSplitScreen(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget v1, v1, Lcom/android/server/wm/DragState;->mCallingTaskIdToHide:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v2

    .line 24
    :goto_0
    new-instance v3, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda1;

    .line 25
    .line 26
    invoke-direct {v3, v1}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    if-eqz v5, :cond_a

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_a

    .line 41
    .line 42
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    goto/16 :goto_6

    .line 49
    .line 50
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v4, "handleRequestFullscreenToSplitScreen: #"

    .line 53
    .line 54
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget v4, v5, Lcom/android/server/wm/Task;->mTaskId:I

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const-string v4, "ChangeTransitionController"

    .line 67
    .line 68
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    new-instance v6, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda5;

    .line 76
    .line 77
    const/4 v7, 0x2

    .line 78
    invoke-direct {v6, v7}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda5;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    const/4 v7, 0x1

    .line 86
    if-nez v6, :cond_2

    .line 87
    .line 88
    move v6, v7

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move v6, v1

    .line 91
    :goto_1
    if-eqz v3, :cond_3

    .line 92
    .line 93
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 94
    .line 95
    if-eqz v3, :cond_4

    .line 96
    .line 97
    :cond_3
    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-nez v3, :cond_4

    .line 102
    .line 103
    move v3, v7

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    move v3, v1

    .line 106
    :goto_2
    if-nez v6, :cond_8

    .line 107
    .line 108
    if-eqz v3, :cond_5

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 112
    .line 113
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 114
    .line 115
    iget-boolean v3, v3, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    .line 116
    .line 117
    if-eqz v3, :cond_6

    .line 118
    .line 119
    const/4 v3, 0x4

    .line 120
    move v6, v3

    .line 121
    goto :goto_3

    .line 122
    :cond_6
    move v6, v7

    .line 123
    :goto_3
    iget v3, p0, Lcom/android/server/wm/ChangeTransitionController;->mFullToSplitTransitionSyncId:I

    .line 124
    .line 125
    if-ne v3, v2, :cond_7

    .line 126
    .line 127
    if-eqz p1, :cond_7

    .line 128
    .line 129
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionId()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    iput p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mFullToSplitTransitionSyncId:I

    .line 136
    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string/jumbo v2, "pauseRotation by ai key: syncId="

    .line 140
    .line 141
    .line 142
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget v2, p0, Lcom/android/server/wm/ChangeTransitionController;->mFullToSplitTransitionSyncId:I

    .line 146
    .line 147
    invoke-static {p1, v2, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 151
    .line 152
    invoke-virtual {p1, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-eqz p1, :cond_7

    .line 157
    .line 158
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 159
    .line 160
    iget v0, p1, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    .line 161
    .line 162
    add-int/2addr v0, v7

    .line 163
    iput v0, p1, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    .line 164
    .line 165
    :cond_7
    new-instance v8, Landroid/graphics/Rect;

    .line 166
    .line 167
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-direct {v8, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    const/4 v10, 0x0

    .line 179
    const-string/jumbo v9, "request(full_to_split)"

    .line 180
    .line 181
    .line 182
    move-object v4, p0

    .line 183
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ChangeTransitionController;->requestChangeTransition(Lcom/android/server/wm/Task;IILandroid/graphics/Rect;Ljava/lang/String;I)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_8
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v2, "full_to_split_requested("

    .line 190
    .line 191
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    if-eqz v6, :cond_9

    .line 195
    .line 196
    const-string/jumbo v2, "translucent"

    .line 197
    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_9
    const-string v2, "finishing"

    .line 201
    .line 202
    :goto_5
    const-string v3, ")"

    .line 203
    .line 204
    invoke-static {p1, v2, v3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 209
    .line 210
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 211
    .line 212
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/ChangeTransitionController;->requestDisplayChangeTransition(ILjava/lang/String;Z)V

    .line 213
    .line 214
    .line 215
    :cond_a
    :goto_6
    return-void
.end method

.method public final initialize()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/ChangeTransitionController$H;

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ChangeTransitionController$H;-><init>(Lcom/android/server/wm/ChangeTransitionController;Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mH:Lcom/android/server/wm/ChangeTransitionController$H;

    .line 15
    .line 16
    return-void
.end method

.method public final isInChangeTransition(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    :cond_1
    return v0
.end method

.method public final onActivityLocalRelaunched(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    const-string v1, "ChangeTransitionController"

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 8
    .line 9
    if-nez v2, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ChangeTransitionController;->isInChangeTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredAllDrawnApps:Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredAllDrawnApps:Landroid/util/ArraySet;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "addToSyncDeferredForAllDrawn: r="

    .line 34
    .line 35
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, ", reason=local_relaunch, num_remain="

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredAllDrawnApps:Landroid/util/ArraySet;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredAllDrawnApps:Landroid/util/ArraySet;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const/4 v0, 0x1

    .line 69
    if-ne p1, v0, :cond_1

    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mH:Lcom/android/server/wm/ChangeTransitionController$H;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mH:Lcom/android/server/wm/ChangeTransitionController$H;

    .line 77
    .line 78
    const-wide/16 v1, 0x7d0

    .line 79
    .line 80
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void

    .line 84
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string/jumbo v0, "onActivityLocalRelaunched: failed, r="

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final removeFromSyncDeferredForAllDrawn(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredAllDrawnApps:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredAllDrawnApps:Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v1, "removeFromSyncDeferredForAllDrawn: r="

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ", reason="

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ", num_remain="

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredAllDrawnApps:Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p2, "ChangeTransitionController"

    .line 52
    .line 53
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredAllDrawnApps:Landroid/util/ArraySet;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mH:Lcom/android/server/wm/ChangeTransitionController$H;

    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method public final removeSyncDeferredForTrampolineApp(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v1, "removeSyncDeferredForTrampolineApp: r="

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ", reason="

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ", num_remain="

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p2, "ChangeTransitionController"

    .line 52
    .line 53
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncDeferredTrampolineApps:Landroid/util/ArraySet;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string/jumbo v0, "removeSyncDeferredForTrampolineApp: sync time="

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    iget-wide v2, p0, Lcom/android/server/wm/ChangeTransitionController;->mSyncStartedTime:J

    .line 77
    .line 78
    sub-long/2addr v0, v2

    .line 79
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mH:Lcom/android/server/wm/ChangeTransitionController$H;

    .line 90
    .line 91
    const/4 p1, 0x2

    .line 92
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    .line 94
    .line 95
    :cond_0
    return-void
.end method

.method public final requestChangeTransition(Lcom/android/server/wm/Task;IILandroid/graphics/Rect;Ljava/lang/String;I)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ", reason="

    .line 6
    .line 7
    const-string v2, "ChangeTransitionController"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo p2, "requestStartChangeTransition: skip, already collecting, #"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isSplitAdjustedMinimalBounds()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isSplitAdjustedMinimalBounds()Z

    .line 53
    .line 54
    .line 55
    move-result p4

    .line 56
    if-eqz p4, :cond_1

    .line 57
    .line 58
    new-instance p4, Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    new-instance p4, Landroid/graphics/Rect;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {p4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    move-object v7, p4

    .line 82
    iget-object p4, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 83
    .line 84
    invoke-virtual {p4}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 85
    .line 86
    .line 87
    move-result p4

    .line 88
    const/4 v0, 0x0

    .line 89
    if-nez p4, :cond_3

    .line 90
    .line 91
    iget-object p4, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    const/4 v4, 0x6

    .line 95
    invoke-virtual {p4, v4, v3}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    .line 96
    .line 97
    .line 98
    move-result-object p4

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    move-object p4, v0

    .line 101
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string/jumbo v4, "requestStartChangeTransition: tid #"

    .line 104
    .line 105
    .line 106
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget v4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v4, ", mode="

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->changeTransitModeToString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    if-eqz p6, :cond_4

    .line 127
    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v5, ", flags=0x"

    .line 131
    .line 132
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v4, p6}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    goto :goto_2

    .line 140
    :cond_4
    const-string v4, ""

    .line 141
    .line 142
    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v4, ", newTransit="

    .line 146
    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-static {v3, p5, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object p5, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 160
    .line 161
    invoke-virtual {p5, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 162
    .line 163
    .line 164
    move-object v3, p0

    .line 165
    move-object v4, p1

    .line 166
    move v5, p2

    .line 167
    move v6, p3

    .line 168
    move v8, p6

    .line 169
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ChangeTransitionController;->updateChangeInfo(Lcom/android/server/wm/WindowContainer;IILandroid/graphics/Rect;I)V

    .line 170
    .line 171
    .line 172
    iget-object p2, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 173
    .line 174
    invoke-virtual {p2, p1}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 175
    .line 176
    .line 177
    if-eqz p4, :cond_5

    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 180
    .line 181
    invoke-virtual {p0, p4, p1, v0, v0}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 182
    .line 183
    .line 184
    const/4 p0, 0x1

    .line 185
    invoke-virtual {p4, p1, p0}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 186
    .line 187
    .line 188
    :cond_5
    return-void
.end method

.method public final requestDisplayChangeTransition(ILjava/lang/String;Z)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "ChangeTransitionController"

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string/jumbo p0, "requestDisplayChangeTransition: cannot find display #"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 26
    .line 27
    iget v2, v2, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const-string/jumbo v4, "requestDisplayChangeTransition: #"

    .line 36
    .line 37
    .line 38
    const-string v5, ", reason="

    .line 39
    .line 40
    const-string v6, ", isCollecting="

    .line 41
    .line 42
    invoke-static {p1, v4, v5, p2, v6}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p2, ""

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    const/high16 p1, 0x20000000

    .line 62
    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    iget-object p2, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    iget-object v2, p2, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    iput p1, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mKnownConfigChanges:I

    .line 82
    .line 83
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayContent;->collectDisplayChange(Lcom/android/server/wm/Transition;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    new-instance p2, Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 88
    .line 89
    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 90
    .line 91
    invoke-direct {p2, v3, v2, v2}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(III)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->requestChangeTransition(ILandroid/window/TransitionRequestInfo$DisplayChange;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    iget-object p2, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    if-nez p2, :cond_4

    .line 104
    .line 105
    const-string/jumbo p0, "requestDisplayChangeTransition: failed, collecting transition is null!"

    .line 106
    .line 107
    .line 108
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_4
    iget-object v1, p2, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 113
    .line 114
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 119
    .line 120
    if-eqz v1, :cond_5

    .line 121
    .line 122
    iput p1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mKnownConfigChanges:I

    .line 123
    .line 124
    :cond_5
    iget-object p1, p2, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 131
    .line 132
    if-eqz p1, :cond_6

    .line 133
    .line 134
    iget p2, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 135
    .line 136
    const/high16 v1, 0x10000

    .line 137
    .line 138
    or-int/2addr v1, p2

    .line 139
    iput v1, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 140
    .line 141
    if-eqz p3, :cond_6

    .line 142
    .line 143
    const/high16 p3, 0x30000

    .line 144
    .line 145
    or-int/2addr p2, p3

    .line 146
    iput p2, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 147
    .line 148
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 149
    .line 150
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->collectForDisplayAreaChange(Lcom/android/server/wm/DisplayArea;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 10
    .line 11
    return-void
.end method

.method public final updateChangeInfo(Lcom/android/server/wm/WindowContainer;IILandroid/graphics/Rect;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "ChangeTransitionController"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo p2, "updateChangeInfo: failed, collecting false, wc="

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    if-ne p3, v0, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-nez p0, :cond_2

    .line 47
    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo p2, "updateChangeInfo: failed, changeInfo is null, wc="

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    iput p2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 68
    .line 69
    iput p5, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitFlags:I

    .line 70
    .line 71
    iget-object p5, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 72
    .line 73
    invoke-virtual {p5, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 74
    .line 75
    .line 76
    if-eqz p3, :cond_3

    .line 77
    .line 78
    iput p3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 79
    .line 80
    :cond_3
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 81
    .line 82
    if-eqz p3, :cond_4

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getFreeformThickness()I

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    iget-object p4, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFreezeOutsets:Landroid/graphics/Rect;

    .line 91
    .line 92
    invoke-virtual {p4, p3, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 96
    .line 97
    .line 98
    move-result p3

    .line 99
    if-eqz p3, :cond_4

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    if-eqz p3, :cond_4

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    iput-object p3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mCommonAncestor:Lcom/android/server/wm/WindowContainer;

    .line 112
    .line 113
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string/jumbo p4, "updateChangeInfo: wc="

    .line 116
    .line 117
    .line 118
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p1, ", "

    .line 125
    .line 126
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->changeTransitModeToString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    if-eqz v0, :cond_5

    .line 137
    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string p2, ", outsets="

    .line 141
    .line 142
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFreezeOutsets:Landroid/graphics/Rect;

    .line 146
    .line 147
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    goto :goto_1

    .line 155
    :cond_5
    const-string p0, ""

    .line 156
    .line 157
    :goto_1
    invoke-static {p3, p0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method
