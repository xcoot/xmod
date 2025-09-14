.class public final synthetic Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter p2

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->isAnimating()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 22
    .line 23
    aget-boolean v0, v0, v1

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    int-to-long v0, p1

    .line 28
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    :cond_0
    move-object p1, v2

    .line 45
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 50
    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move-object v3, v2

    .line 63
    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 68
    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    move-object v4, v2

    .line 81
    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 86
    .line 87
    if-eqz p0, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 102
    .line 103
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    filled-new-array {v0, p1, v3, v4, p0}, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    const/4 v9, 0x0

    .line 112
    const-wide v6, 0x5f8884a0d5193cd4L    # 1.6051449975100994E152

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    const/4 v8, 0x1

    .line 118
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_5
    :try_start_1
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 127
    .line 128
    const/4 v0, 0x0

    .line 129
    aget-boolean p1, p1, v0

    .line 130
    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 134
    .line 135
    const-wide v4, -0x36ba8f998906cd33L    # -9.562141842754839E44

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    const/4 v6, 0x0

    .line 141
    const/4 v7, 0x0

    .line 142
    const/4 v8, 0x0

    .line 143
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 147
    .line 148
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 149
    .line 150
    iput-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 151
    .line 152
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 153
    .line 154
    iget-object v3, p1, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 155
    .line 156
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 157
    .line 158
    iget v4, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 159
    .line 160
    or-int/2addr v4, v1

    .line 161
    iput v4, v3, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 162
    .line 163
    iget-object v3, p1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 164
    .line 165
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 166
    .line 167
    if-ne v4, p1, :cond_8

    .line 168
    .line 169
    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent;->setRotationAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 173
    .line 174
    iget-object p1, p1, Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 175
    .line 176
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    .line 177
    .line 178
    iget-object p1, p1, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 179
    .line 180
    if-eqz p1, :cond_9

    .line 181
    .line 182
    iget-object v2, p1, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 183
    .line 184
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForDisplay()Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_9

    .line 193
    .line 194
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(ZLcom/android/server/wm/ActivityRecord;)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-nez v1, :cond_7

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_7
    const v1, 0x104048b

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->showToast(I)V

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 209
    .line 210
    .line 211
    :cond_9
    :goto_3
    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 212
    .line 213
    iget-object p0, p0, Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 214
    .line 215
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 216
    .line 217
    .line 218
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 220
    .line 221
    .line 222
    :goto_4
    return-void

    .line 223
    :goto_5
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 225
    .line 226
    .line 227
    throw p0
.end method
