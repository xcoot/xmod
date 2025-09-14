.class public final Lcom/android/server/wm/AppTransitionController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTempTransitionReasons:Landroid/util/ArrayMap;

.field public final mTempTransitionWindows:Ljava/util/ArrayList;

.field public final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 6
    .line 7
    new-instance v0, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 24
    .line 25
    iget-object p1, p2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 28
    .line 29
    return-void
.end method

.method public static applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 4
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 5
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 6
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v5, p4

    move v6, p2

    move v7, p3

    move v8, p5

    .line 8
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowContainer;->applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    move-object v1, p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v1, p1

    .line 11
    :goto_0
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, 0x1

    .line 18
    if-ge v3, v4, :cond_3

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    iget-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 27
    .line 28
    if-ne v6, p2, :cond_1

    .line 29
    .line 30
    iget-boolean v7, v4, Lcom/android/server/wm/ActivityRecord;->mRequestForceTransition:Z

    .line 31
    .line 32
    if-nez v7, :cond_1

    .line 33
    .line 34
    if-nez v6, :cond_2

    .line 35
    .line 36
    iget-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    .line 37
    .line 38
    if-eqz v6, :cond_2

    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 44
    .line 45
    aget-boolean v5, v6, v5

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 54
    .line 55
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 56
    .line 57
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 62
    .line 63
    filled-new-array {v5, v4, v7}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    const-wide v7, -0x2bcca9d99b32c9c1L    # -4.130256317878208E97

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    const/16 v9, 0x3c

    .line 73
    .line 74
    const/4 v10, 0x0

    .line 75
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    if-eqz p2, :cond_4

    .line 82
    .line 83
    move-object p0, p1

    .line 84
    :cond_4
    new-instance p1, Landroid/util/ArraySet;

    .line 85
    .line 86
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 87
    .line 88
    .line 89
    move p2, v2

    .line 90
    :goto_2
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-ge p2, v3, :cond_6

    .line 95
    .line 96
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 101
    .line 102
    :goto_3
    if-eqz v3, :cond_5

    .line 103
    .line 104
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    goto :goto_3

    .line 112
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    new-instance p0, Landroid/util/ArraySet;

    .line 116
    .line 117
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 118
    .line 119
    .line 120
    new-instance p2, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-nez v3, :cond_10

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->isTaskViewTask(Lcom/android/server/wm/WindowContainer;)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-eqz v6, :cond_7

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_7
    if-eqz v4, :cond_d

    .line 155
    .line 156
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_d

    .line 161
    .line 162
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    if-eqz v6, :cond_8

    .line 167
    .line 168
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    iget-boolean v6, v6, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 173
    .line 174
    if-nez v6, :cond_d

    .line 175
    .line 176
    :cond_8
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isChangingAppTransition()Z

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    if-eqz v6, :cond_9

    .line 181
    .line 182
    goto :goto_7

    .line 183
    :cond_9
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    xor-int/2addr v6, v5

    .line 188
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    if-eqz v7, :cond_a

    .line 193
    .line 194
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getAdjacentTask()Lcom/android/server/wm/Task;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    if-eqz v7, :cond_a

    .line 203
    .line 204
    move v6, v2

    .line 205
    :cond_a
    move v7, v2

    .line 206
    :goto_5
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    if-ge v7, v8, :cond_e

    .line 211
    .line 212
    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    invoke-virtual {v0, v8}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    if-eqz v9, :cond_b

    .line 221
    .line 222
    invoke-static {v8}, Lcom/android/server/wm/AppTransitionController;->isTaskViewTask(Lcom/android/server/wm/WindowContainer;)Z

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    if-nez v9, :cond_c

    .line 227
    .line 228
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_b
    if-eq v8, v3, :cond_c

    .line 233
    .line 234
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    if-eqz v8, :cond_c

    .line 239
    .line 240
    move v6, v2

    .line 241
    :cond_c
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_d
    :goto_7
    move v6, v2

    .line 245
    :cond_e
    if-eqz v6, :cond_f

    .line 246
    .line 247
    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_f
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 252
    .line 253
    .line 254
    goto/16 :goto_4

    .line 255
    .line 256
    :cond_10
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:[Z

    .line 257
    .line 258
    aget-boolean p1, p1, v5

    .line 259
    .line 260
    if-eqz p1, :cond_11

    .line 261
    .line 262
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 271
    .line 272
    const/4 v4, 0x0

    .line 273
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    const-wide v1, -0x72299cf87bf7c5bfL    # -5.245853557822044E-242

    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    const/4 v3, 0x0

    .line 283
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    :cond_11
    return-object p0
.end method

.method public static getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    return-object p0
.end method

.method public static getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    const/high16 v1, -0x80000000

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ltz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 17
    .line 18
    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 27
    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-le v4, v1, :cond_1

    .line 36
    .line 37
    move-object v2, v3

    .line 38
    move v1, v4

    .line 39
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-object v2
.end method

.method public static getTransitContainerType(Lcom/android/server/wm/WindowContainer;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x3

    .line 12
    return p0

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    const/4 p0, 0x2

    .line 20
    return p0

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p0, :cond_3

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_3
    return v0
.end method

.method public static isTaskViewTask(Lcom/android/server/wm/WindowContainer;)Z
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/android/server/wm/Task;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    check-cast v0, Lcom/android/server/wm/Task;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    instance-of v0, p0, Lcom/android/server/wm/Task;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    check-cast p0, Lcom/android/server/wm/Task;

    .line 25
    .line 26
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    return v1
.end method

.method public static lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    add-int/2addr v2, v1

    .line 15
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_0
    if-ge v5, v2, :cond_3

    .line 20
    .line 21
    if-ge v5, v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    if-ge v5, v1, :cond_1

    .line 31
    .line 32
    sub-int v6, v5, v0

    .line 33
    .line 34
    invoke-virtual {p1, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    sub-int v6, v5, v1

    .line 42
    .line 43
    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 48
    .line 49
    :goto_1
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    invoke-static {v6}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    invoke-interface {p3, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_2

    .line 64
    .line 65
    if-le v7, v3, :cond_2

    .line 66
    .line 67
    move-object v4, v6

    .line 68
    move v3, v7

    .line 69
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    return-object v4
.end method


# virtual methods
.method public final applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;ILandroid/view/WindowManager$LayoutParams;Z)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    const/4 v10, 0x1

    .line 9
    iget-object v1, v0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v1, Lcom/android/server/wm/WindowManagerService;->mRecentsAnimationController:Lcom/android/server/wm/RecentsAnimationController;

    const/4 v1, -0x1

    if-eq v9, v1, :cond_10

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 11
    :cond_0
    sget-object v1, Lcom/android/server/wm/AppTransition;->sFlagToString:Ljava/util/ArrayList;

    const/4 v12, 0x0

    const/4 v13, 0x6

    if-eq v9, v13, :cond_2

    const/4 v1, 0x7

    if-eq v9, v1, :cond_2

    const/16 v1, 0x12

    if-ne v9, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v12

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v10

    :goto_1
    if-eqz v1, :cond_7

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v12

    .line 13
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 14
    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 15
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 16
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v4

    .line 17
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/2addr v2, v10

    goto :goto_2

    :cond_4
    move v2, v12

    .line 18
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 19
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 20
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 21
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v4

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 23
    iget-object v14, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/Rect;

    .line 24
    invoke-virtual {v4, v14}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 25
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 26
    iput-boolean v10, v3, Lcom/android/server/wm/ActivityRecord;->mNeedsLetterboxedAnimation:Z

    .line 27
    iput-boolean v10, v6, Lcom/android/server/wm/ActivityRecord;->mNeedsLetterboxedAnimation:Z

    goto :goto_4

    :cond_6
    add-int/2addr v2, v10

    goto :goto_3

    .line 28
    :cond_7
    invoke-static {v7, v8, v10}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v1

    .line 29
    invoke-static {v7, v8, v12}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v14

    const/4 v4, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    .line 30
    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V

    const/4 v4, 0x0

    move-object v1, v14

    move-object/from16 v2, p2

    .line 31
    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V

    if-eqz v11, :cond_8

    .line 32
    invoke-virtual {v11}, Lcom/android/server/wm/RecentsAnimationController;->sendTasksAppeared()V

    :cond_8
    move v1, v12

    .line 33
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 34
    invoke-virtual {v7, v1}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iput-boolean v12, v2, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z

    add-int/2addr v1, v10

    goto :goto_5

    :cond_9
    move v1, v12

    .line 35
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 36
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iput-boolean v12, v2, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z

    add-int/2addr v1, v10

    goto :goto_6

    .line 37
    :cond_a
    iget-object v0, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 38
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 39
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 40
    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v3, 0x800

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v5

    const-string v6, "; transition="

    const-string v7, "displayId="

    if-eqz v5, :cond_b

    .line 41
    invoke-static {v0, v9, v7, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    const-string v8, "AccessibilityController.onAppWindowTransition"

    invoke-virtual {v2, v8, v3, v4, v5}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 43
    :cond_b
    iget-object v1, v1, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v1, :cond_f

    .line 44
    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 45
    invoke-static {v0, v9, v7, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v5, "WindowManager.onAppWindowTransition"

    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 47
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->isFullscreenMagnificationActivated()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_7

    :cond_d
    if-eq v9, v13, :cond_e

    const/16 v0, 0x8

    if-eq v9, v0, :cond_e

    const/16 v0, 0xa

    if-eq v9, v0, :cond_e

    const/16 v0, 0x1c

    if-eq v9, v0, :cond_e

    packed-switch v9, :pswitch_data_0

    goto :goto_7

    .line 48
    :cond_e
    :pswitch_0
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mUserContextChangedNotifier:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$UserContextChangedNotifier;->sendUserContextChangedNotification()V

    :cond_f
    :goto_7
    return-void

    :cond_10
    :goto_8
    if-eqz v11, :cond_11

    .line 49
    invoke-virtual {v11}, Lcom/android/server/wm/RecentsAnimationController;->sendTasksAppeared()V

    :cond_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final handleClosingApps()V
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v1, :cond_4

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    aget-boolean v5, v5, v6

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 31
    .line 32
    const/4 v11, 0x0

    .line 33
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v12

    .line 37
    const-wide v8, -0x74202df0a97ac14dL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    const/4 v10, 0x0

    .line 43
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v4, v2, v2, v2}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 50
    .line 51
    .line 52
    iput-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 53
    .line 54
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 55
    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    iget-boolean v5, v5, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 59
    .line 60
    if-nez v5, :cond_1

    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 66
    .line 67
    iget v5, v5, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 68
    .line 69
    const/4 v6, 0x4

    .line 70
    if-eq v5, v6, :cond_2

    .line 71
    .line 72
    const/4 v6, 0x6

    .line 73
    if-ne v5, v6, :cond_3

    .line 74
    .line 75
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    .line 76
    .line 77
    .line 78
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    return-void
.end method

.method public final handleOpeningApps()V
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v1, :cond_a

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    aget-boolean v5, v5, v6

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 31
    .line 32
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v12

    .line 36
    const-wide v8, 0x3d5235dd3e353573L    # 2.5878545031701243E-13

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    const/4 v11, 0x0

    .line 43
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v4, v6, v2, v2}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    .line 47
    .line 48
    .line 49
    const/4 v5, 0x2

    .line 50
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    if-eqz v7, :cond_1

    .line 55
    .line 56
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getAnimationSources()Landroid/util/ArraySet;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {v7, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-nez v7, :cond_2

    .line 65
    .line 66
    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    .line 67
    .line 68
    iget-object v8, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 69
    .line 70
    check-cast v7, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 76
    .line 77
    .line 78
    new-instance v7, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda3;

    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    invoke-direct {v7, v8}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda3;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v7, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 85
    .line 86
    .line 87
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 88
    .line 89
    iget v7, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 90
    .line 91
    const/4 v8, 0x3

    .line 92
    if-eq v7, v8, :cond_8

    .line 93
    .line 94
    const/4 v8, 0x5

    .line 95
    if-ne v7, v8, :cond_3

    .line 96
    .line 97
    goto/16 :goto_2

    .line 98
    .line 99
    :cond_3
    const/16 v8, 0x9

    .line 100
    .line 101
    if-ne v7, v8, :cond_9

    .line 102
    .line 103
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-nez v5, :cond_4

    .line 108
    .line 109
    goto/16 :goto_3

    .line 110
    .line 111
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->clearThumbnail()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    if-nez v5, :cond_5

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 122
    .line 123
    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    .line 124
    .line 125
    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 126
    .line 127
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 128
    .line 129
    iget-object v7, v4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 130
    .line 131
    iget v7, v7, Lcom/android/server/wm/Task;->mUserId:I

    .line 132
    .line 133
    iget-object v8, v4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 134
    .line 135
    iget v8, v8, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 136
    .line 137
    if-ne v7, v8, :cond_6

    .line 138
    .line 139
    const v7, 0x1080394

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    goto :goto_1

    .line 147
    :cond_6
    const-class v7, Landroid/app/admin/DevicePolicyManager;

    .line 148
    .line 149
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    .line 154
    .line 155
    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    new-instance v8, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda22;

    .line 160
    .line 161
    const/4 v9, 0x1

    .line 162
    invoke-direct {v8, v9, v6}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    const-string v6, "PROFILE_SWITCH_ANIMATION"

    .line 166
    .line 167
    const-string v9, "WORK_PROFILE_ICON"

    .line 168
    .line 169
    const-string v10, "OUTLINE"

    .line 170
    .line 171
    invoke-virtual {v7, v9, v10, v6, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 180
    .line 181
    iget-object v7, v7, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 182
    .line 183
    invoke-virtual {v7, v6, v5}, Lcom/android/internal/policy/TransitionAnimation;->createCrossProfileAppsThumbnail(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/hardware/HardwareBuffer;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    if-nez v6, :cond_7

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_7
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    new-instance v8, Lcom/android/server/wm/WindowContainerThumbnail;

    .line 195
    .line 196
    iget-object v9, v4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 197
    .line 198
    invoke-direct {v8, v7, v9, v6}, Lcom/android/server/wm/WindowContainerThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/hardware/HardwareBuffer;)V

    .line 199
    .line 200
    .line 201
    iput-object v8, v4, Lcom/android/server/wm/WindowContainer;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    .line 202
    .line 203
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 208
    .line 209
    iget-object v6, v6, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 210
    .line 211
    invoke-virtual {v6, v5}, Lcom/android/internal/policy/TransitionAnimation;->createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

    .line 216
    .line 217
    new-instance v8, Landroid/graphics/Point;

    .line 218
    .line 219
    iget v9, v5, Landroid/graphics/Rect;->left:I

    .line 220
    .line 221
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 222
    .line 223
    invoke-direct {v8, v9, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v7, v6, v8}, Lcom/android/server/wm/WindowContainerThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_8
    :goto_2
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    .line 231
    .line 232
    .line 233
    :cond_9
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :cond_a
    return-void
.end method

.method public isTransitWithinTask(ILcom/android/server/wm/Task;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_6

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x6

    .line 16
    if-eq p1, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x7

    .line 19
    if-eq p1, v1, :cond_1

    .line 20
    .line 21
    const/16 v1, 0x12

    .line 22
    .line 23
    if-eq p1, v1, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 45
    .line 46
    if-eq v1, p2, :cond_2

    .line 47
    .line 48
    return v0

    .line 49
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 68
    .line 69
    if-eq p1, p2, :cond_4

    .line 70
    .line 71
    return v0

    .line 72
    :cond_5
    const/4 p0, 0x1

    .line 73
    return p0

    .line 74
    :cond_6
    :goto_0
    return v0
.end method

.method public final transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    aget-boolean v4, v2, v3

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x3

    .line 12
    iget-object v7, v0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 13
    .line 14
    iget-object v8, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    int-to-long v9, v4

    .line 23
    iget-boolean v4, v7, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 24
    .line 25
    iget-object v11, v8, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 26
    .line 27
    iget v11, v11, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 28
    .line 29
    if-ne v11, v6, :cond_0

    .line 30
    .line 31
    move v11, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v11, v5

    .line 34
    :goto_0
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 35
    .line 36
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    filled-new-array {v9, v4, v10}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v17

    .line 52
    const/16 v15, 0x3d

    .line 53
    .line 54
    const/16 v16, 0x0

    .line 55
    .line 56
    const-wide v13, 0x28f650621e813034L

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v4, v8, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 65
    .line 66
    iget v4, v4, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 67
    .line 68
    if-ne v4, v6, :cond_2

    .line 69
    .line 70
    return v3

    .line 71
    :cond_2
    iget-object v4, v7, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 78
    .line 79
    if-eqz v4, :cond_4

    .line 80
    .line 81
    iget-object v4, v4, Lcom/android/server/wm/ScreenRotationAnimation;->mSurfaceRotationAnimationController:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 82
    .line 83
    if-eqz v4, :cond_4

    .line 84
    .line 85
    invoke-virtual {v4}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->isAnimating()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_4

    .line 90
    .line 91
    iget-object v4, v8, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 92
    .line 93
    iget v6, v4, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 94
    .line 95
    iget v7, v4, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 96
    .line 97
    invoke-virtual {v4, v7, v6}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eq v6, v4, :cond_4

    .line 102
    .line 103
    aget-boolean v0, v2, v3

    .line 104
    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 108
    .line 109
    const-wide v7, 0x44e2ccc9b5b83c84L    # 7.102421376690626E23

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    const/4 v9, 0x0

    .line 115
    const/4 v10, 0x0

    .line 116
    const/4 v11, 0x0

    .line 117
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    return v5

    .line 121
    :cond_4
    move v4, v5

    .line 122
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-ge v4, v6, :cond_b

    .line 127
    .line 128
    move-object/from16 v6, p1

    .line 129
    .line 130
    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    check-cast v7, Lcom/android/server/wm/WindowContainer;

    .line 135
    .line 136
    invoke-static {v7}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    if-nez v7, :cond_5

    .line 141
    .line 142
    goto/16 :goto_4

    .line 143
    .line 144
    :cond_5
    aget-boolean v9, v2, v3

    .line 145
    .line 146
    if-eqz v9, :cond_6

    .line 147
    .line 148
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    iget-boolean v9, v7, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 153
    .line 154
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isStartingWindowDisplayed()Z

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    iget-boolean v12, v7, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    .line 159
    .line 160
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    .line 161
    .line 162
    .line 163
    move-result v13

    .line 164
    iget-object v14, v7, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 165
    .line 166
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v15

    .line 170
    sget-object v16, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 171
    .line 172
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 181
    .line 182
    .line 183
    move-result-object v17

    .line 184
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 185
    .line 186
    .line 187
    move-result-object v18

    .line 188
    move-object v11, v9

    .line 189
    move-object v12, v14

    .line 190
    move-object/from16 v13, v17

    .line 191
    .line 192
    move-object/from16 v14, v18

    .line 193
    .line 194
    filled-new-array/range {v10 .. v15}, [Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v21

    .line 198
    const/16 v19, 0x3fc

    .line 199
    .line 200
    const/16 v20, 0x0

    .line 201
    .line 202
    const-wide v17, 0x466951dca3153239L    # 1.604831265975352E31

    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_6
    iget-boolean v9, v7, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 211
    .line 212
    if-eqz v9, :cond_7

    .line 213
    .line 214
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    if-nez v9, :cond_7

    .line 219
    .line 220
    move v9, v3

    .line 221
    goto :goto_2

    .line 222
    :cond_7
    move v9, v5

    .line 223
    :goto_2
    if-nez v9, :cond_8

    .line 224
    .line 225
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isStartingWindowDisplayed()Z

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    if-nez v10, :cond_8

    .line 230
    .line 231
    iget-boolean v10, v7, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    .line 232
    .line 233
    if-nez v10, :cond_8

    .line 234
    .line 235
    return v5

    .line 236
    :cond_8
    if-eqz v9, :cond_9

    .line 237
    .line 238
    const/4 v9, 0x2

    .line 239
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    invoke-virtual {v1, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_9
    iget-object v9, v7, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 248
    .line 249
    instance-of v9, v9, Lcom/android/server/wm/SplashScreenStartingData;

    .line 250
    .line 251
    if-eqz v9, :cond_a

    .line 252
    .line 253
    move v9, v3

    .line 254
    goto :goto_3

    .line 255
    :cond_a
    const/4 v9, 0x4

    .line 256
    :goto_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    invoke-virtual {v1, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 264
    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :cond_b
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 268
    .line 269
    iget-boolean v1, v1, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    .line 270
    .line 271
    if-eqz v1, :cond_d

    .line 272
    .line 273
    aget-boolean v0, v2, v3

    .line 274
    .line 275
    if-eqz v0, :cond_c

    .line 276
    .line 277
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 278
    .line 279
    const-wide v7, 0x2fb32e79ce0c33cbL    # 6.470900985259744E-79

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    const/4 v9, 0x0

    .line 285
    const/4 v10, 0x0

    .line 286
    const/4 v11, 0x0

    .line 287
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :cond_c
    return v5

    .line 291
    :cond_d
    iget-object v1, v8, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 292
    .line 293
    iget-object v1, v1, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    .line 294
    .line 295
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-nez v1, :cond_f

    .line 300
    .line 301
    aget-boolean v0, v2, v3

    .line 302
    .line 303
    if-eqz v0, :cond_e

    .line 304
    .line 305
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 306
    .line 307
    invoke-virtual {v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->getDebugMessage()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 316
    .line 317
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v11

    .line 321
    const-wide v7, 0x1446cc3c7e3f36c3L

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    const/4 v9, 0x0

    .line 327
    const/4 v10, 0x0

    .line 328
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    :cond_e
    return v5

    .line 332
    :cond_f
    iget-object v0, v0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 333
    .line 334
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    if-eqz v1, :cond_11

    .line 339
    .line 340
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-eqz v0, :cond_10

    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_10
    move v3, v5

    .line 348
    :cond_11
    :goto_5
    return v3
.end method
