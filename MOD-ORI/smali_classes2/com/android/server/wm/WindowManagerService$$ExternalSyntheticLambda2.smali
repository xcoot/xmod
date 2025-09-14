.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;IILcom/android/server/wm/DisplayContent;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/wm/DisplayContent;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iget v3, v0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iget v4, v0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/wm/DisplayContent;

    .line 11
    .line 12
    iget v0, v0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda2;->f$4:I

    .line 13
    .line 14
    sget v6, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-wide/16 v6, 0x20

    .line 20
    .line 21
    const-string v8, "WMS.doStartFreezingDisplay"

    .line 22
    .line 23
    invoke-static {v6, v7, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    aget-boolean v8, v8, v9

    .line 30
    .line 31
    if-eqz v8, :cond_0

    .line 32
    .line 33
    int-to-long v10, v3

    .line 34
    int-to-long v12, v4

    .line 35
    const/16 v8, 0x8

    .line 36
    .line 37
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 46
    .line 47
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    filled-new-array {v10, v11, v8}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v19

    .line 59
    const/16 v17, 0x5

    .line 60
    .line 61
    const/16 v18, 0x0

    .line 62
    .line 63
    const-wide v15, -0x166cd9a05b80cedaL    # -3.664574620075817E200

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object v8, v2, Lcom/android/server/wm/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    .line 72
    .line 73
    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 74
    .line 75
    .line 76
    iget-object v8, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 77
    .line 78
    const/4 v10, 0x2

    .line 79
    invoke-virtual {v8, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->startPowerMode(I)V

    .line 80
    .line 81
    .line 82
    iput-boolean v1, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 83
    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 85
    .line 86
    .line 87
    move-result-wide v10

    .line 88
    iput-wide v10, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    iput-object v8, v2, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 92
    .line 93
    iget v10, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 94
    .line 95
    iput v10, v2, Lcom/android/server/wm/WindowManagerService;->mFrozenDisplayId:I

    .line 96
    .line 97
    iget-object v10, v2, Lcom/android/server/wm/WindowManagerService;->mInputManagerCallback:Lcom/android/server/wm/InputManagerCallback;

    .line 98
    .line 99
    iget-boolean v11, v10, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    .line 100
    .line 101
    if-nez v11, :cond_1

    .line 102
    .line 103
    iput-boolean v1, v10, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchFrozen:Z

    .line 104
    .line 105
    iget-object v11, v10, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 106
    .line 107
    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 108
    .line 109
    iget-boolean v10, v10, Lcom/android/server/wm/InputManagerCallback;->mInputDispatchEnabled:Z

    .line 110
    .line 111
    invoke-virtual {v11, v10, v1}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    .line 112
    .line 113
    .line 114
    :cond_1
    iget-object v10, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 115
    .line 116
    invoke-virtual {v10}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-eqz v10, :cond_4

    .line 121
    .line 122
    iget-object v10, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 123
    .line 124
    iget-object v11, v10, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 125
    .line 126
    const/4 v12, 0x7

    .line 127
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    iget-object v12, v10, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 136
    .line 137
    if-eqz v12, :cond_2

    .line 138
    .line 139
    const-string v13, "freeze"

    .line 140
    .line 141
    invoke-virtual {v12, v13}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_2
    iget-object v12, v10, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v10, v1}, Lcom/android/server/wm/AppTransition;->clear(Z)V

    .line 150
    .line 151
    .line 152
    iput v1, v10, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 153
    .line 154
    invoke-virtual {v10}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 155
    .line 156
    .line 157
    iget-object v12, v10, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 158
    .line 159
    if-eqz v12, :cond_3

    .line 160
    .line 161
    iput-boolean v1, v10, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 162
    .line 163
    iput-object v8, v10, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 164
    .line 165
    iget-object v8, v10, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 166
    .line 167
    new-instance v13, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda0;

    .line 168
    .line 169
    invoke-direct {v13, v10, v12}, Lcom/android/server/wm/AppTransition$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v8, v13}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 173
    .line 174
    .line 175
    :cond_3
    :goto_0
    iget-object v8, v10, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    if-ge v9, v8, :cond_4

    .line 182
    .line 183
    iget-object v8, v10, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    check-cast v8, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 190
    .line 191
    invoke-virtual {v8, v11}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(Z)V

    .line 192
    .line 193
    .line 194
    add-int/2addr v9, v1

    .line 195
    goto :goto_0

    .line 196
    :cond_4
    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 197
    .line 198
    const/4 v8, 0x6

    .line 199
    invoke-virtual {v1, v8}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 200
    .line 201
    .line 202
    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mExitAnimId:I

    .line 203
    .line 204
    iput v4, v2, Lcom/android/server/wm/WindowManagerService;->mEnterAnimId:I

    .line 205
    .line 206
    const/4 v1, -0x1

    .line 207
    if-eq v0, v1, :cond_5

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_5
    iget-object v0, v5, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 211
    .line 212
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 213
    .line 214
    :goto_1
    new-instance v1, Lcom/android/server/wm/ScreenRotationAnimation;

    .line 215
    .line 216
    invoke-direct {v1, v0, v5}, Lcom/android/server/wm/ScreenRotationAnimation;-><init>(ILcom/android/server/wm/DisplayContent;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v5, v1}, Lcom/android/server/wm/DisplayContent;->setRotationAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)V

    .line 220
    .line 221
    .line 222
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 223
    .line 224
    .line 225
    return-void
.end method
