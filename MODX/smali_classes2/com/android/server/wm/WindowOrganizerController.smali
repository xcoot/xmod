.class public final Lcom/android/server/wm/WindowOrganizerController;
.super Landroid/window/IWindowOrganizerController$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# instance fields
.field public final mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field public final mEnterSplitWithSingleStage:Ljava/util/HashSet;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field final mLaunchTaskFragments:Landroid/util/ArrayMap;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

.field public final mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

.field public final mTmpBounds0:Landroid/graphics/Rect;

.field public final mTmpBounds1:Landroid/graphics/Rect;

.field public final mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

.field public final mTransitionController:Lcom/android/server/wm/TransitionController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/window/IWindowOrganizerController$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds0:Landroid/graphics/Rect;

    .line 31
    .line 32
    new-instance v0, Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds1:Landroid/graphics/Rect;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 40
    .line 41
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 44
    .line 45
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController;

    .line 46
    .line 47
    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 51
    .line 52
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 53
    .line 54
    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 58
    .line 59
    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 60
    .line 61
    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowOrganizerController;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 65
    .line 66
    new-instance v0, Lcom/android/server/wm/TransitionController;

    .line 67
    .line 68
    invoke-direct {v0, p1}, Lcom/android/server/wm/TransitionController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 72
    .line 73
    return-void
.end method

.method public static configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, 0x20000000

    .line 10
    .line 11
    and-int/2addr v2, v1

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 16
    .line 17
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 18
    .line 19
    invoke-virtual {p0, p1, v3}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    long-to-int p0, p0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move p0, v0

    .line 26
    :goto_0
    const p1, 0xa00003

    .line 27
    .line 28
    .line 29
    and-int/2addr p0, p1

    .line 30
    if-nez p0, :cond_2

    .line 31
    .line 32
    const p0, -0x20000001

    .line 33
    .line 34
    .line 35
    and-int/2addr v1, p0

    .line 36
    :cond_2
    const p0, 0x20003c00

    .line 37
    .line 38
    .line 39
    and-int/2addr p0, v1

    .line 40
    if-nez p0, :cond_3

    .line 41
    .line 42
    move v0, v3

    .line 43
    :cond_3
    return v0
.end method


# virtual methods
.method public addToSyncSet(ILcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    .line 6
    .line 7
    const-string/jumbo v3, "null"

    .line 8
    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_7

    .line 12
    .line 13
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->hasChangeTransitMode()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_7

    .line 18
    .line 19
    iget-object v2, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeTransitMode()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeTransitFlags()I

    .line 35
    .line 36
    .line 37
    move-result v11

    .line 38
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeTransitStartBounds()Landroid/graphics/Rect;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeTransitReason()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    const-string v8, ", reason="

    .line 47
    .line 48
    const-string v12, "ChangeTransitionController"

    .line 49
    .line 50
    if-nez v5, :cond_0

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v5, "handleWindowContainerTransaction: failed, we support Task only now!, wc="

    .line 55
    .line 56
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v12, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_1

    .line 82
    .line 83
    const-string/jumbo v9, "pip_to_split"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-eqz v9, :cond_1

    .line 91
    .line 92
    iput-boolean v4, v5, Lcom/android/server/wm/Task;->mIsChangingPipToSplit:Z

    .line 93
    .line 94
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-eqz v9, :cond_2

    .line 99
    .line 100
    move-object v13, v5

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    new-instance v9, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda5;

    .line 103
    .line 104
    const/4 v13, 0x1

    .line 105
    invoke-direct {v9, v13}, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda5;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v9}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    move-object v13, v9

    .line 113
    :goto_0
    if-eqz v13, :cond_5

    .line 114
    .line 115
    invoke-virtual {v13}, Lcom/android/server/wm/Task;->isChangeTransitionBlockedByCommonPolicy()Z

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    if-eqz v9, :cond_3

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v14, "handleWindowContainerTransaction: requested #"

    .line 125
    .line 126
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    .line 130
    .line 131
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v5, ", target="

    .line 135
    .line 136
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget v5, v13, Lcom/android/server/wm/Task;->mTaskId:I

    .line 140
    .line 141
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v5, ", startBounds="

    .line 145
    .line 146
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-static {v12, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    new-instance v9, Landroid/graphics/Rect;

    .line 166
    .line 167
    if-eqz v6, :cond_4

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_4
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    :goto_1
    invoke-direct {v9, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    move-object v5, v2

    .line 182
    move-object v6, v13

    .line 183
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/ChangeTransitionController;->requestChangeTransition(Lcom/android/server/wm/Task;IILandroid/graphics/Rect;Ljava/lang/String;I)V

    .line 184
    .line 185
    .line 186
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 187
    .line 188
    if-eqz v5, :cond_7

    .line 189
    .line 190
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-eqz v5, :cond_7

    .line 195
    .line 196
    invoke-virtual {v2, v13}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    iget-object v6, v2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 201
    .line 202
    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    if-eqz v6, :cond_7

    .line 207
    .line 208
    if-eqz v5, :cond_7

    .line 209
    .line 210
    iget-object v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 211
    .line 212
    if-eqz v5, :cond_7

    .line 213
    .line 214
    iget-object v2, v2, Lcom/android/server/wm/ChangeTransitionController;->mTransitionToChangingPipTask:Ljava/util/HashMap;

    .line 215
    .line 216
    invoke-virtual {v2, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    const-string v5, "addToChangingPipTaskIfPossible: tid #"

    .line 222
    .line 223
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget v5, v13, Lcom/android/server/wm/Task;->mTaskId:I

    .line 227
    .line 228
    invoke-static {v2, v5, v12}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    const-string v5, "handleWindowContainerTransaction: failed, tid #"

    .line 235
    .line 236
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    if-eqz v13, :cond_6

    .line 240
    .line 241
    iget v5, v13, Lcom/android/server/wm/Task;->mTaskId:I

    .line 242
    .line 243
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    goto :goto_3

    .line 248
    :cond_6
    move-object v5, v3

    .line 249
    :goto_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-static {v12, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    :cond_7
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->hasChangeFreeformStashMode()Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    const/4 v5, 0x0

    .line 270
    const/4 v6, 0x2

    .line 271
    const/high16 v7, 0x3f800000    # 1.0f

    .line 272
    .line 273
    if-nez v2, :cond_8

    .line 274
    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->hasChangeFreeformStashScale()Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_13

    .line 280
    .line 281
    :cond_8
    iget-object v2, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 282
    .line 283
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 284
    .line 285
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    const-string v9, "MultiTaskingController"

    .line 293
    .line 294
    if-nez v8, :cond_9

    .line 295
    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string/jumbo v3, "updateFocusForFreeformStash: failed, we support Task only now!, wc="

    .line 299
    .line 300
    .line 301
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    goto/16 :goto_8

    .line 315
    .line 316
    :cond_9
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 317
    .line 318
    .line 319
    move-result v10

    .line 320
    if-eqz v10, :cond_a

    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_a
    new-instance v10, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;

    .line 324
    .line 325
    const/4 v11, 0x1

    .line 326
    invoke-direct {v10, v11}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v8, v10}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    :goto_5
    if-eqz v8, :cond_11

    .line 334
    .line 335
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 336
    .line 337
    .line 338
    move-result v10

    .line 339
    if-nez v10, :cond_b

    .line 340
    .line 341
    goto :goto_7

    .line 342
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->hasChangeFreeformStashScale()Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-eqz v3, :cond_c

    .line 347
    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeFreeformStashScale()F

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    iget v10, v8, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    .line 353
    .line 354
    cmpl-float v10, v10, v3

    .line 355
    .line 356
    if-eqz v10, :cond_c

    .line 357
    .line 358
    iput v3, v8, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    .line 359
    .line 360
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->hasChangeFreeformStashMode()Z

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    if-eqz v3, :cond_10

    .line 365
    .line 366
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isMinimized()Z

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    if-nez v3, :cond_10

    .line 371
    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeFreeformStashMode()I

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    iget v10, v8, Lcom/android/server/wm/Task;->mFreeformStashMode:I

    .line 377
    .line 378
    if-eq v10, v3, :cond_d

    .line 379
    .line 380
    iput v3, v8, Lcom/android/server/wm/Task;->mFreeformStashMode:I

    .line 381
    .line 382
    :cond_d
    if-ne v3, v6, :cond_e

    .line 383
    .line 384
    const-string/jumbo v2, "setStashScaled"

    .line 385
    .line 386
    .line 387
    invoke-virtual {v8, v2, v5, v4}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    .line 388
    .line 389
    .line 390
    goto :goto_6

    .line 391
    :cond_e
    iget v3, v8, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    .line 392
    .line 393
    cmpl-float v3, v3, v7

    .line 394
    .line 395
    if-eqz v3, :cond_f

    .line 396
    .line 397
    iput v7, v8, Lcom/android/server/wm/Task;->mFreeformStashScale:F

    .line 398
    .line 399
    :cond_f
    iget v3, v8, Lcom/android/server/wm/Task;->mTaskId:I

    .line 400
    .line 401
    iget-object v2, v2, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 402
    .line 403
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(I)V

    .line 404
    .line 405
    .line 406
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 407
    .line 408
    const-string/jumbo v3, "stash-update"

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 412
    .line 413
    .line 414
    :cond_10
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->isForceTaskInfoChangeRequested()Z

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    if-eqz v2, :cond_13

    .line 419
    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    const-string/jumbo v3, "updateFreeformStashState: force taskInfoChanged , t #"

    .line 423
    .line 424
    .line 425
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    iget v3, v8, Lcom/android/server/wm/Task;->mTaskId:I

    .line 429
    .line 430
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    invoke-virtual {v8, v4}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 441
    .line 442
    .line 443
    goto :goto_8

    .line 444
    :cond_11
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    const-string/jumbo v10, "updateFocusForFreeformStash: failed, tid #"

    .line 447
    .line 448
    .line 449
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    if-eqz v8, :cond_12

    .line 453
    .line 454
    iget v3, v8, Lcom/android/server/wm/Task;->mTaskId:I

    .line 455
    .line 456
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    :cond_12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    :cond_13
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    if-eqz v2, :cond_14

    .line 475
    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->isOrganizedTaskViewTask()Z

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    if-eqz v2, :cond_14

    .line 481
    .line 482
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getTaskViewTaskOrganizerTaskId()I

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    iput v3, v2, Lcom/android/server/wm/Task;->mTaskViewTaskOrganizerTaskId:I

    .line 491
    .line 492
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    const v3, 0x20003c00

    .line 497
    .line 498
    .line 499
    and-int/2addr v2, v3

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    const v8, 0xa00003

    .line 505
    .line 506
    .line 507
    and-int/2addr v3, v8

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    .line 509
    .line 510
    .line 511
    move-result v8

    .line 512
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 513
    .line 514
    .line 515
    move-result-object v9

    .line 516
    if-eqz v9, :cond_15

    .line 517
    .line 518
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 519
    .line 520
    .line 521
    move-result-object v9

    .line 522
    if-eqz v9, :cond_15

    .line 523
    .line 524
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 525
    .line 526
    .line 527
    move-result-object v9

    .line 528
    if-eqz v9, :cond_15

    .line 529
    .line 530
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 531
    .line 532
    .line 533
    move-result-object v9

    .line 534
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 535
    .line 536
    .line 537
    move-result v9

    .line 538
    if-eqz v9, :cond_15

    .line 539
    .line 540
    move v9, v4

    .line 541
    goto :goto_9

    .line 542
    :cond_15
    move v9, v5

    .line 543
    :goto_9
    const/4 v10, 0x5

    .line 544
    if-eqz v9, :cond_16

    .line 545
    .line 546
    if-ne v8, v10, :cond_16

    .line 547
    .line 548
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 549
    .line 550
    .line 551
    move-result-object v9

    .line 552
    const v11, 0x7fffffff

    .line 553
    .line 554
    .line 555
    invoke-virtual {v1, v9, v11}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 556
    .line 557
    .line 558
    goto :goto_a

    .line 559
    :cond_16
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    .line 560
    .line 561
    if-eqz v9, :cond_17

    .line 562
    .line 563
    iget-object v9, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 564
    .line 565
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    .line 566
    .line 567
    .line 568
    move-result-object v9

    .line 569
    invoke-virtual {v9}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 570
    .line 571
    .line 572
    move-result v9

    .line 573
    if-eqz v9, :cond_17

    .line 574
    .line 575
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 576
    .line 577
    .line 578
    move-result-object v9

    .line 579
    if-eqz v9, :cond_17

    .line 580
    .line 581
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 582
    .line 583
    .line 584
    move-result-object v9

    .line 585
    if-eqz v9, :cond_17

    .line 586
    .line 587
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 588
    .line 589
    .line 590
    move-result-object v9

    .line 591
    if-eqz v9, :cond_17

    .line 592
    .line 593
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 594
    .line 595
    .line 596
    move-result-object v9

    .line 597
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 598
    .line 599
    .line 600
    move-result v9

    .line 601
    if-eqz v9, :cond_17

    .line 602
    .line 603
    if-ne v8, v4, :cond_17

    .line 604
    .line 605
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 606
    .line 607
    .line 608
    move-result-object v9

    .line 609
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 610
    .line 611
    .line 612
    move-result-object v11

    .line 613
    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 614
    .line 615
    .line 616
    move-result-object v11

    .line 617
    iget-object v12, v9, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 618
    .line 619
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 620
    .line 621
    .line 622
    move-result v11

    .line 623
    add-int/2addr v11, v4

    .line 624
    invoke-virtual {v1, v9, v11}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 625
    .line 626
    .line 627
    :cond_17
    :goto_a
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY:Z

    .line 628
    .line 629
    if-eqz v9, :cond_20

    .line 630
    .line 631
    sget-object v9, Lcom/android/server/wm/SizeCompatPolicyManager$LazyHolder;->sManager:Lcom/android/server/wm/SizeCompatPolicyManager;

    .line 632
    .line 633
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 634
    .line 635
    .line 636
    move-result-object v11

    .line 637
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 638
    .line 639
    .line 640
    invoke-static {v11, v5}, Lcom/android/server/wm/SizeCompatPolicyManager;->getCompatPolicy(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;

    .line 641
    .line 642
    .line 643
    move-result-object v9

    .line 644
    if-nez v9, :cond_18

    .line 645
    .line 646
    goto/16 :goto_e

    .line 647
    .line 648
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    .line 649
    .line 650
    .line 651
    move-result v11

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    .line 653
    .line 654
    .line 655
    move-result-object v12

    .line 656
    iget-object v12, v12, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 657
    .line 658
    iget-object v13, v9, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mTask:Lcom/android/server/wm/Task;

    .line 659
    .line 660
    iget-object v14, v13, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 661
    .line 662
    const-string v15, "SizeCompatPolicy"

    .line 663
    .line 664
    if-nez v14, :cond_19

    .line 665
    .line 666
    new-instance v7, Ljava/lang/StringBuilder;

    .line 667
    .line 668
    const-string v9, "ensureTransaction: DisplayContent is null. task="

    .line 669
    .line 670
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v7

    .line 680
    invoke-static {v15, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    .line 682
    .line 683
    goto :goto_e

    .line 684
    :cond_19
    if-ltz v11, :cond_1c

    .line 685
    .line 686
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 687
    .line 688
    .line 689
    move-result v14

    .line 690
    if-eq v11, v14, :cond_1c

    .line 691
    .line 692
    if-ne v11, v4, :cond_1a

    .line 693
    .line 694
    goto :goto_b

    .line 695
    :cond_1a
    if-ne v11, v10, :cond_1b

    .line 696
    .line 697
    sget-object v7, Lcom/android/server/wm/DexSizeCompatController$LazyHolder;->sInstance:Lcom/android/server/wm/DexSizeCompatController;

    .line 698
    .line 699
    iget v7, v7, Lcom/android/server/wm/DexSizeCompatController;->mDefaultScale:F

    .line 700
    .line 701
    :goto_b
    iget v11, v9, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserOrientation:I

    .line 702
    .line 703
    goto :goto_d

    .line 704
    :cond_1b
    new-instance v7, Ljava/lang/StringBuilder;

    .line 705
    .line 706
    const-string v12, "ensureTransaction: Unsupported windowing mode, mode="

    .line 707
    .line 708
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    invoke-static {v11}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v11

    .line 715
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    const-string v11, ", task="

    .line 719
    .line 720
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v7

    .line 730
    invoke-static {v15, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .line 732
    .line 733
    iput-boolean v5, v9, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mEnabled:Z

    .line 734
    .line 735
    goto :goto_e

    .line 736
    :cond_1c
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 737
    .line 738
    .line 739
    move-result v11

    .line 740
    if-eqz v11, :cond_1f

    .line 741
    .line 742
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY_DRAG:Z

    .line 743
    .line 744
    if-eqz v7, :cond_1e

    .line 745
    .line 746
    if-eqz v2, :cond_1e

    .line 747
    .line 748
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 749
    .line 750
    .line 751
    move-result v7

    .line 752
    if-eqz v7, :cond_1e

    .line 753
    .line 754
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MT_DEX_SIZE_COMPAT_DRAG:Z

    .line 755
    .line 756
    if-eqz v7, :cond_1d

    .line 757
    .line 758
    move-object v7, v9

    .line 759
    goto :goto_c

    .line 760
    :cond_1d
    const/4 v7, 0x0

    .line 761
    :goto_c
    if-eqz v7, :cond_1e

    .line 762
    .line 763
    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 764
    .line 765
    .line 766
    move-result-object v11

    .line 767
    invoke-virtual {v7, v11}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->ensureDragBounds(Landroid/graphics/Rect;)V

    .line 768
    .line 769
    .line 770
    :cond_1e
    iget v7, v9, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserScale:F

    .line 771
    .line 772
    iget v11, v9, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserOrientation:I

    .line 773
    .line 774
    goto :goto_d

    .line 775
    :cond_1f
    move v11, v5

    .line 776
    :goto_d
    invoke-virtual {v9, v7}, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->setUserScale(F)V

    .line 777
    .line 778
    .line 779
    iput v11, v9, Lcom/android/server/wm/DexSizeCompatController$DexSizeCompatPolicy;->mUserOrientation:I

    .line 780
    .line 781
    :cond_20
    :goto_e
    const/4 v7, -0x1

    .line 782
    if-eqz v2, :cond_26

    .line 783
    .line 784
    if-le v8, v7, :cond_21

    .line 785
    .line 786
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 787
    .line 788
    .line 789
    move-result v9

    .line 790
    if-eq v8, v9, :cond_21

    .line 791
    .line 792
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 793
    .line 794
    .line 795
    move-result-object v9

    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    .line 797
    .line 798
    .line 799
    move-result-object v11

    .line 800
    invoke-virtual {v9, v11, v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 801
    .line 802
    .line 803
    goto :goto_10

    .line 804
    :cond_21
    new-instance v9, Landroid/content/res/Configuration;

    .line 805
    .line 806
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 807
    .line 808
    .line 809
    move-result-object v11

    .line 810
    invoke-direct {v9, v11}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 811
    .line 812
    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    .line 814
    .line 815
    .line 816
    move-result-object v11

    .line 817
    invoke-virtual {v9, v11, v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 818
    .line 819
    .line 820
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 821
    .line 822
    .line 823
    move-result v2

    .line 824
    const/4 v11, 0x6

    .line 825
    if-ne v2, v11, :cond_24

    .line 826
    .line 827
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    .line 828
    .line 829
    .line 830
    move-result v2

    .line 831
    and-int/lit16 v2, v2, 0x400

    .line 832
    .line 833
    if-eqz v2, :cond_24

    .line 834
    .line 835
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 836
    .line 837
    .line 838
    move-result-object v2

    .line 839
    if-eqz v2, :cond_24

    .line 840
    .line 841
    iget v11, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 842
    .line 843
    if-eqz v11, :cond_23

    .line 844
    .line 845
    iget v11, v9, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 846
    .line 847
    if-eqz v11, :cond_23

    .line 848
    .line 849
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    .line 850
    .line 851
    .line 852
    move-result-object v11

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    .line 854
    .line 855
    .line 856
    move-result-object v12

    .line 857
    iget-object v12, v12, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 858
    .line 859
    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 860
    .line 861
    .line 862
    move-result-object v12

    .line 863
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 864
    .line 865
    .line 866
    move-result v13

    .line 867
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 868
    .line 869
    .line 870
    move-result v14

    .line 871
    if-ne v13, v14, :cond_22

    .line 872
    .line 873
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 874
    .line 875
    .line 876
    move-result v13

    .line 877
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 878
    .line 879
    .line 880
    move-result v14

    .line 881
    if-ne v13, v14, :cond_22

    .line 882
    .line 883
    iget v13, v11, Landroid/graphics/Rect;->left:I

    .line 884
    .line 885
    iget v14, v12, Landroid/graphics/Rect;->left:I

    .line 886
    .line 887
    sub-int/2addr v13, v14

    .line 888
    iput v13, v2, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    .line 889
    .line 890
    iget v11, v11, Landroid/graphics/Rect;->top:I

    .line 891
    .line 892
    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 893
    .line 894
    sub-int/2addr v11, v12

    .line 895
    iput v11, v2, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    .line 896
    .line 897
    goto :goto_f

    .line 898
    :cond_22
    iput v5, v2, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    .line 899
    .line 900
    iput v5, v2, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    .line 901
    .line 902
    goto :goto_f

    .line 903
    :cond_23
    iput v5, v2, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    .line 904
    .line 905
    iput v5, v2, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    .line 906
    .line 907
    :cond_24
    :goto_f
    invoke-virtual {v1, v9}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 908
    .line 909
    .line 910
    :goto_10
    if-eqz v3, :cond_25

    .line 911
    .line 912
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    .line 913
    .line 914
    .line 915
    move-result v2

    .line 916
    if-eqz v2, :cond_25

    .line 917
    .line 918
    const/4 v2, 0x3

    .line 919
    goto :goto_11

    .line 920
    :cond_25
    move v2, v4

    .line 921
    goto :goto_11

    .line 922
    :cond_26
    move v2, v5

    .line 923
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    .line 924
    .line 925
    .line 926
    move-result v3

    .line 927
    and-int/2addr v3, v4

    .line 928
    if-eqz v3, :cond_27

    .line 929
    .line 930
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getFocusable()Z

    .line 931
    .line 932
    .line 933
    move-result v3

    .line 934
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->setFocusable(Z)Z

    .line 935
    .line 936
    .line 937
    move-result v3

    .line 938
    if-eqz v3, :cond_27

    .line 939
    .line 940
    or-int/lit8 v2, v2, 0x2

    .line 941
    .line 942
    :cond_27
    if-le v8, v7, :cond_2d

    .line 943
    .line 944
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 945
    .line 946
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    .line 947
    .line 948
    .line 949
    move-result v0

    .line 950
    if-eqz v0, :cond_29

    .line 951
    .line 952
    invoke-static {v8}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    .line 953
    .line 954
    .line 955
    move-result v0

    .line 956
    if-eqz v0, :cond_29

    .line 957
    .line 958
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 959
    .line 960
    if-eqz v0, :cond_28

    .line 961
    .line 962
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    .line 963
    .line 964
    .line 965
    move-result v0

    .line 966
    if-eqz v0, :cond_28

    .line 967
    .line 968
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 969
    .line 970
    .line 971
    move-result-object v0

    .line 972
    if-eqz v0, :cond_28

    .line 973
    .line 974
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 975
    .line 976
    .line 977
    move-result-object v0

    .line 978
    if-eqz v0, :cond_28

    .line 979
    .line 980
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 985
    .line 986
    .line 987
    move-result v0

    .line 988
    invoke-static {v0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    .line 989
    .line 990
    .line 991
    move-result v0

    .line 992
    if-nez v0, :cond_28

    .line 993
    .line 994
    goto :goto_12

    .line 995
    :cond_28
    const-string v0, "WindowOrganizerController"

    .line 996
    .line 997
    const-string v1, "Dropping unsupported request to set multi-window windowing mode during locked task mode."

    .line 998
    .line 999
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    .line 1001
    .line 1002
    return v2

    .line 1003
    :cond_29
    :goto_12
    if-ne v8, v6, :cond_2a

    .line 1004
    .line 1005
    return v2

    .line 1006
    :cond_2a
    if-ne v8, v10, :cond_2b

    .line 1007
    .line 1008
    invoke-virtual/range {p2 .. p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeTransitMode()I

    .line 1009
    .line 1010
    .line 1011
    move-result v0

    .line 1012
    const/4 v3, 0x4

    .line 1013
    if-ne v0, v3, :cond_2b

    .line 1014
    .line 1015
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0

    .line 1019
    if-eqz v0, :cond_2b

    .line 1020
    .line 1021
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v0

    .line 1025
    iput-boolean v4, v0, Lcom/android/server/wm/Task;->mSkipLayoutTask:Z

    .line 1026
    .line 1027
    goto :goto_13

    .line 1028
    :cond_2b
    move v4, v5

    .line 1029
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    .line 1030
    .line 1031
    .line 1032
    move-result v0

    .line 1033
    invoke-virtual {v1, v8}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 1034
    .line 1035
    .line 1036
    if-eqz v4, :cond_2c

    .line 1037
    .line 1038
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v3

    .line 1042
    iput-boolean v5, v3, Lcom/android/server/wm/Task;->mSkipLayoutTask:Z

    .line 1043
    .line 1044
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 1045
    .line 1046
    .line 1047
    move-result v1

    .line 1048
    if-eq v0, v1, :cond_2d

    .line 1049
    .line 1050
    or-int/lit8 v2, v2, 0x2

    .line 1051
    .line 1052
    :cond_2d
    return v2
.end method

.method public final applyHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;IILcom/android/server/wm/Transition;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/Transition;Z)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v4, p3

    move-object/from16 v3, p4

    move/from16 v5, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x2

    .line 2
    iget v1, v10, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v2, v10, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    const/16 v6, 0x11

    const-string v7, "Attempt to operate on unknown or detached container: "

    const-string v8, "WindowOrganizerController"

    if-eq v14, v6, :cond_37

    const/16 v6, 0x64

    if-eq v14, v6, :cond_2f

    const-string v11, "Cannot set non-task as launch root: "

    const-string v12, " while in lock task mode"

    const-string v6, "Skip applying hierarchy operation "

    packed-switch v14, :pswitch_data_0

    packed-switch v14, :pswitch_data_1

    if-eqz v5, :cond_36

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 4
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    .line 7
    iget-boolean v2, v1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, v1, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-nez v2, :cond_1

    :goto_0
    move/from16 v16, v15

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->resetAdjacentTaskFragment()V

    goto :goto_2

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearAdjacentRootsHierarchyOp: Not created by organizer root="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_2
    or-int v1, p2, v16

    :goto_3
    move-object v10, v7

    move-object v13, v8

    const/16 v17, 0x0

    goto/16 :goto_3b

    .line 12
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 13
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_4

    goto/16 :goto_19

    .line 14
    :cond_4
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 15
    const-string v3, "finish-activity-op"

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    .line 16
    :cond_5
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    goto/16 :goto_19

    .line 17
    :cond_6
    :goto_4
    invoke-virtual {v1, v3, v15}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto/16 :goto_19

    .line 18
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_7

    .line 19
    const-string v1, "Can\'t resolve pending intent"

    invoke-static {v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 20
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 21
    new-instance v2, Landroid/app/ActivityOptions;

    invoke-direct {v2, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_b

    .line 22
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 24
    iget-object v1, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 25
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v3

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v4, 0x20

    .line 28
    :try_start_0
    const-string/jumbo v6, "startExistingRecents"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 29
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/ActivityStartController;->startExistingRecents(Landroid/content/Intent;Landroid/app/ActivityOptions;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 30
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v2, :cond_9

    .line 31
    iget-object v1, v1, Lcom/android/server/wm/ActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 32
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 33
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 35
    const-string v1, "1005"

    const-string v2, "Tap \'Recent\' button"

    invoke-static {v1, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 36
    :cond_9
    :goto_6
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_19

    :cond_a
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_8

    :goto_7
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 37
    throw v0

    .line 38
    :cond_b
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 41
    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    .line 42
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez v2, :cond_d

    .line 43
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 44
    :cond_d
    invoke-virtual {v2, v15}, Landroid/app/ActivityOptions;->setCallerDisplayId(I)Landroid/app/ActivityOptions;

    :cond_e
    if-eqz v2, :cond_f

    .line 45
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    move-object v5, v1

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    .line 46
    :goto_a
    new-instance v11, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowOrganizerController;->waitAsyncStart(Ljava/util/function/IntSupplier;)I

    move-result v1

    .line 47
    invoke-static {v1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_36

    or-int/lit8 v1, p2, 0x2

    goto/16 :goto_3

    .line 48
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 49
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_d

    .line 50
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v3

    if-eqz v2, :cond_18

    .line 52
    iget-boolean v4, v2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_17

    .line 53
    iget-object v4, v2, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-nez v4, :cond_12

    if-eqz v3, :cond_11

    goto :goto_b

    .line 54
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot set non-adjacent task as adjacent flag root: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_12
    :goto_b
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v3, :cond_13

    const/4 v2, 0x0

    :cond_13
    if-eqz v2, :cond_16

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    iget-boolean v3, v2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_15

    .line 57
    iget-object v3, v2, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v3, :cond_14

    goto :goto_c

    .line 58
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t set non-adjacent root as launch adjacent flag root tr="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t set not mCreatedByOrganizer as launch adjacent flag root tr="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_16
    :goto_c
    iput-object v2, v1, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    goto/16 :goto_19

    .line 61
    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot set non-organized task as adjacent flag root: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_19
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempt to set launch adjacent to a detached container: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 64
    :pswitch_4
    iget-object v3, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v4, "android.permission.START_TASKS_FROM_RECENTS"

    const-string v5, "launchTask HierarchyOp"

    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v3

    .line 66
    const-string v4, "android:transaction.hop.taskId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 67
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 68
    new-instance v4, Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {v3}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-direct {v4, v3, v1, v2}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;II)V

    .line 69
    new-instance v1, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0, v10, v5, v4}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowOrganizerController;->waitAsyncStart(Ljava/util/function/IntSupplier;)I

    goto/16 :goto_19

    .line 70
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 71
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_10

    .line 72
    :cond_1a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getAdjacentRoot()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 74
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_f

    .line 75
    :cond_1b
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    .line 76
    iget-boolean v3, v1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_1d

    iget-boolean v3, v2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_1d

    .line 77
    iget-object v3, v1, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne v3, v2, :cond_1c

    :goto_e
    goto/16 :goto_0

    .line 78
    :cond_1c
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;)V

    goto/16 :goto_2

    .line 79
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setAdjacentRootsHierarchyOp: Not created by organizer root1="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " root2="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1e
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 81
    :cond_1f
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 82
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 83
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_12

    .line 84
    :cond_20
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 85
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 86
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object v4

    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    iget-boolean v5, v2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_23

    .line 90
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTaskDef(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 91
    iget-object v2, v1, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    .line 92
    :cond_21
    new-instance v5, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    .line 93
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v2, v5, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->task:Lcom/android/server/wm/Task;

    .line 95
    :goto_11
    iput-object v4, v5, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->activityTypes:[I

    .line 96
    iput-object v3, v5, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->windowingModes:[I

    .line 97
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v2

    if-nez v2, :cond_36

    .line 98
    :cond_22
    iget-object v1, v1, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    .line 99
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t set not mCreatedByOrganizer as launch root tr="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot set a task without display area as launch root: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_26
    :goto_12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempt to set launch root to a detached container: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    :pswitch_7
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p10

    .line 103
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->reparentChildrenTasksHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/Transition;IZZ)I

    move-result v1

    :goto_13
    or-int v1, p2, v1

    goto/16 :goto_3

    .line 104
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 105
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_14

    :cond_27
    if-eqz v5, :cond_28

    if-nez v14, :cond_28

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 107
    :cond_28
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v0, v2, v6, v5}, Lcom/android/server/wm/WindowOrganizerController;->isLockTaskModeViolation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;Z)Z

    move-result v2

    if-eqz v2, :cond_29

    goto/16 :goto_19

    :cond_29
    if-ltz v4, :cond_2a

    .line 108
    invoke-virtual {v0, v4, v1}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    :cond_2a
    if-eqz v3, :cond_2d

    .line 109
    invoke-virtual {v3, v1, v15}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 111
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 112
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 113
    invoke-virtual {v3, v2, v15}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 114
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-nez v2, :cond_2c

    .line 116
    const-string v1, "Can\'t resolve parent window from token"

    invoke-static {v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 117
    :cond_2c
    invoke-virtual {v3, v2, v15}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 118
    :cond_2d
    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeAndApplyHierarchyOp(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v1

    goto :goto_13

    .line 119
    :cond_2e
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempt to operate on detached container: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 120
    :cond_2f
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 121
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_18

    .line 122
    :cond_30
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_15

    :cond_31
    move/from16 v2, p2

    goto :goto_16

    :cond_32
    :goto_15
    or-int/lit8 v2, p2, 0x2

    .line 124
    :goto_16
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v3

    if-eqz v3, :cond_34

    const/16 v3, 0x64

    if-ne v14, v3, :cond_33

    .line 125
    iget-object v3, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v25, -0x1

    const/16 v26, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 126
    const-string v22, "close-task-through-hierarchyOp-MDM"

    const/16 v23, 0x0

    const/16 v24, 0x3e8

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    invoke-virtual/range {v18 .. v26}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIIZ)V

    goto :goto_17

    .line 127
    :cond_33
    iget-object v3, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/16 v23, 0x0

    const/16 v25, -0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    .line 128
    const-string/jumbo v22, "remove-task-through-hierarchyOp"

    const/16 v24, 0x3e8

    const/16 v26, 0x0

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    invoke-virtual/range {v18 .. v26}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;ZIIZ)V

    goto :goto_17

    .line 129
    :cond_34
    iget-object v3, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    :goto_17
    move v1, v2

    goto/16 :goto_3

    .line 130
    :cond_35
    :goto_18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempt to remove invalid task: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_19
    move/from16 v1, p2

    goto/16 :goto_3

    .line 131
    :cond_37
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v4

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v15

    .line 133
    iget-object v6, v0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v6, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskFragment;

    if-nez v4, :cond_38

    .line 134
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v1, "TaskFragmentOperation must be non-null"

    invoke-direct {v15, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v5, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    move-object v4, v6

    move-object v6, v15

    .line 135
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    :goto_1a
    move-object/from16 v20, v7

    goto/16 :goto_1d

    .line 136
    :cond_38
    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation;->getOpType()I

    move-result v15

    if-nez v15, :cond_39

    move-object/from16 v20, v7

    goto/16 :goto_1e

    .line 137
    :cond_39
    invoke-virtual {v0, v6, v15, v11, v12}, Lcom/android/server/wm/WindowOrganizerController;->validateTaskFragment(Lcom/android/server/wm/TaskFragment;ILandroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)Z

    move-result v20

    if-nez v20, :cond_3a

    goto :goto_1a

    :cond_3a
    move-object/from16 v20, v7

    const/16 v7, 0xc

    if-eq v15, v7, :cond_3c

    const/16 v7, 0xd

    if-ne v15, v7, :cond_3b

    goto :goto_1b

    :cond_3b
    const/16 v7, 0x11

    goto :goto_1c

    .line 138
    :cond_3c
    :goto_1b
    iget-object v7, v0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 139
    invoke-interface/range {p8 .. p8}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 140
    new-instance v7, Ljava/lang/SecurityException;

    const-string v1, "Only a system organizer can perform OP_TYPE_REORDER_TO_BOTTOM_OF_TASK or OP_TYPE_REORDER_TO_TOP_OF_TASK."

    invoke-direct {v7, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    move-object v4, v6

    move v5, v15

    move-object v6, v7

    .line 141
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto :goto_1d

    :goto_1c
    if-ne v15, v7, :cond_3d

    .line 142
    iget-object v7, v0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 143
    invoke-interface/range {p8 .. p8}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 144
    new-instance v7, Ljava/lang/SecurityException;

    const-string v1, "Only a system organizer can perform OP_TYPE_SET_MOVE_TO_BOTTOM_IF_CLEAR_WHEN_LAUNCH."

    invoke-direct {v7, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    move-object v4, v6

    move v5, v15

    move-object v6, v7

    .line 145
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto :goto_1d

    .line 146
    :cond_3d
    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 147
    iget-object v6, v0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 148
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0, v4, v15, v11, v12}, Lcom/android/server/wm/WindowOrganizerController;->validateTaskFragment(Lcom/android/server/wm/TaskFragment;ILandroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)Z

    move-result v4

    if-eqz v4, :cond_3e

    goto :goto_1e

    :cond_3e
    :goto_1d
    move-object v13, v8

    move-object/from16 v10, v20

    const/4 v4, 0x0

    const/16 v17, 0x0

    goto/16 :goto_3a

    .line 149
    :cond_3f
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v4

    .line 150
    iget-object v6, v0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/android/server/wm/TaskFragment;

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    move-result-object v4

    .line 152
    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation;->getOpType()I

    move-result v15

    const v6, 0x7fffffff

    const/4 v7, 0x1

    packed-switch v15, :pswitch_data_2

    :cond_40
    :goto_1f
    :pswitch_a
    move-object v13, v8

    move-object/from16 v10, v20

    const/16 v17, 0x0

    goto/16 :goto_38

    .line 153
    :pswitch_b
    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result v1

    .line 154
    iget-boolean v2, v9, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v2, :cond_41

    goto :goto_1f

    .line 155
    :cond_41
    iput-boolean v1, v9, Lcom/android/server/wm/TaskFragment;->mPinned:Z

    goto :goto_1f

    .line 156
    :pswitch_c
    invoke-static {}, Lcom/android/window/flags/Flags;->activityEmbeddingInteractiveDividerFlag()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 157
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-nez v5, :cond_42

    goto :goto_1f

    .line 158
    :cond_42
    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation;->getSurfaceTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    if-eqz v6, :cond_43

    .line 159
    invoke-virtual {v6, v1, v2}, Landroid/view/SurfaceControl$Transaction;->sanitize(II)V

    .line 160
    :cond_43
    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result v1

    .line 161
    iget-object v2, v5, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz v2, :cond_45

    iget-object v4, v2, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eq v4, v9, :cond_44

    goto :goto_20

    .line 162
    :cond_44
    iput-boolean v1, v2, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mIsBoostedRequested:Z

    if-eqz v6, :cond_45

    .line 163
    iget-object v1, v2, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mPendingClientTransactions:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_45
    :goto_20
    new-instance v1, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda17;

    invoke-direct {v1, v5}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/Task;)V

    if-nez v3, :cond_46

    .line 165
    invoke-virtual {v1}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda17;->run()V

    goto :goto_1f

    .line 166
    :cond_46
    iget v2, v3, Lcom/android/server/wm/Transition;->mState:I

    if-eqz v2, :cond_48

    if-ne v2, v7, :cond_47

    goto :goto_21

    .line 167
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t register listeners if the transition isn\'t collecting. state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Lcom/android/server/wm/Transition;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_48
    :goto_21
    iget-object v2, v3, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_49

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v3, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    .line 170
    :cond_49
    iget-object v2, v3, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 171
    :pswitch_d
    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result v1

    .line 172
    iput-boolean v1, v9, Lcom/android/server/wm/TaskFragment;->mMoveToBottomIfClearWhenLaunch:Z

    goto/16 :goto_1f

    .line 173
    :pswitch_e
    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result v1

    .line 174
    iput v1, v9, Lcom/android/server/wm/TaskFragment;->mEmbeddedDimArea:I

    goto/16 :goto_1f

    .line 175
    :pswitch_f
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_4a

    goto/16 :goto_1f

    .line 176
    :cond_4a
    iget-object v2, v1, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-nez v2, :cond_4b

    goto/16 :goto_1f

    .line 177
    :cond_4b
    iget-object v3, v2, Lcom/android/server/wm/Task$DecorSurfaceContainer;->this$0:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mDecorSurface:Landroid/view/SurfaceControl;

    .line 178
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mContainerSurface:Landroid/view/SurfaceControl;

    .line 179
    invoke-virtual {v3, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    .line 180
    iput-object v2, v1, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    .line 181
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    goto/16 :goto_1f

    .line 182
    :pswitch_10
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_4c

    goto/16 :goto_1f

    :cond_4c
    if-eqz v3, :cond_4d

    .line 183
    iget-object v2, v3, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda16;

    invoke-direct {v3, v2}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda16;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskFragment;->getTaskFragment(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    goto :goto_22

    :cond_4d
    const/4 v2, 0x0

    :goto_22
    if-eqz v2, :cond_50

    .line 184
    iget-object v3, v1, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz v3, :cond_4e

    .line 185
    iput-object v9, v3, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    goto :goto_23

    .line 186
    :cond_4e
    new-instance v3, Lcom/android/server/wm/Task$DecorSurfaceContainer;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v9, v4}, Lcom/android/server/wm/Task$DecorSurfaceContainer;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Z)V

    iput-object v3, v1, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    .line 187
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 188
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    .line 189
    :goto_23
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 190
    iget-object v1, v1, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-nez v1, :cond_4f

    goto/16 :goto_1f

    .line 191
    :cond_4f
    iget-object v1, v1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mDecorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_1f

    .line 192
    :cond_50
    iget-object v2, v1, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz v2, :cond_51

    .line 193
    iput-object v9, v2, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    goto/16 :goto_1f

    .line 194
    :cond_51
    new-instance v2, Lcom/android/server/wm/Task$DecorSurfaceContainer;

    invoke-direct {v2, v1, v9, v7}, Lcom/android/server/wm/Task$DecorSurfaceContainer;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;Z)V

    iput-object v2, v1, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    .line 195
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 196
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    goto/16 :goto_1f

    .line 197
    :pswitch_11
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 198
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v9, :cond_40

    .line 199
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 200
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v2

    if-nez v2, :cond_52

    .line 202
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    :cond_52
    :goto_24
    move-object v13, v8

    move-object/from16 v10, v20

    const/16 v17, 0x0

    goto/16 :goto_39

    .line 203
    :pswitch_12
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 204
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 205
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_53

    const/4 v3, 0x0

    .line 206
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_25

    :cond_53
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_25
    if-eq v2, v9, :cond_40

    .line 207
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v3, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 209
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v2

    if-nez v2, :cond_52

    .line 210
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    goto :goto_24

    .line 211
    :pswitch_13
    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation;->getBooleanValue()Z

    move-result v1

    .line 212
    iget-boolean v2, v9, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v2, :cond_54

    goto/16 :goto_1f

    .line 213
    :cond_54
    iput-boolean v1, v9, Lcom/android/server/wm/TaskFragment;->mIsolatedNav:Z

    goto/16 :goto_1f

    .line 214
    :pswitch_14
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 215
    new-instance v2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskFragment;->getTaskFragment(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_55

    if-eq v2, v9, :cond_55

    .line 216
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 217
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 218
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 219
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v2

    if-nez v2, :cond_52

    .line 220
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    goto :goto_24

    :cond_55
    const/16 v16, 0x0

    goto :goto_24

    .line 221
    :pswitch_15
    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation;->getAnimationParams()Landroid/window/TaskFragmentAnimationParams;

    move-result-object v1

    if-nez v1, :cond_56

    .line 222
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v1, "TaskFragmentAnimationParams must be non-null"

    invoke-direct {v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    move-object v4, v9

    move v5, v15

    .line 223
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 224
    :cond_56
    iput-object v1, v9, Lcom/android/server/wm/TaskFragment;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    goto/16 :goto_1f

    .line 225
    :pswitch_16
    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 226
    iget-object v2, v0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    goto :goto_26

    :cond_57
    const/4 v1, 0x0

    .line 227
    :goto_26
    iput-object v1, v9, Lcom/android/server/wm/TaskFragment;->mCompanionTaskFragment:Lcom/android/server/wm/TaskFragment;

    goto/16 :goto_1f

    .line 228
    :pswitch_17
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_58

    .line 229
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-ne v2, v9, :cond_58

    .line 230
    const-string v1, "The requested TaskFragment already has the focus."

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :cond_58
    if-eqz v1, :cond_59

    .line 231
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 232
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eq v1, v2, :cond_59

    .line 233
    const-string v1, "The Task of the requested TaskFragment doesn\'t have focus."

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 234
    :cond_59
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_5a

    .line 235
    const-string v1, "There is no resumed activity in the requested TaskFragment."

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 236
    :cond_5a
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    goto/16 :goto_1f

    .line 237
    :pswitch_18
    iget-object v1, v9, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-nez v1, :cond_5b

    goto/16 :goto_1f

    .line 238
    :cond_5b
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->resetAdjacentTaskFragment()V

    .line 239
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_5c

    .line 240
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    goto :goto_27

    :cond_5c
    const/4 v2, 0x0

    :goto_27
    if-eq v2, v9, :cond_5d

    if-ne v2, v1, :cond_52

    :cond_5d
    const/4 v1, 0x0

    .line 241
    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 242
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    goto/16 :goto_24

    .line 243
    :pswitch_19
    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    .line 244
    iget-object v2, v0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 245
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    if-nez v1, :cond_5e

    .line 246
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v1, "SecondaryFragmentToken must be set for setAdjacentTaskFragments."

    invoke-direct {v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    move-object v4, v9

    move v5, v15

    .line 247
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 248
    :cond_5e
    iget-object v2, v9, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eq v2, v1, :cond_5f

    .line 249
    invoke-virtual {v9, v1}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;)V

    goto :goto_28

    :cond_5f
    const/16 v16, 0x0

    .line 250
    :goto_28
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v2, :cond_60

    .line 251
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 252
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 253
    invoke-static {v2, v3}, Lcom/android/server/wm/TaskFragment;->calculateEmbedActivityMode(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)I

    move-result v2

    .line 254
    invoke-virtual {v9, v2}, Lcom/android/server/wm/ConfigurationContainer;->setEmbedActivityMode(I)V

    .line 255
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 256
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 257
    invoke-static {v2, v3}, Lcom/android/server/wm/TaskFragment;->calculateEmbedActivityMode(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)I

    move-result v2

    .line 258
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ConfigurationContainer;->setEmbedActivityMode(I)V

    .line 259
    :cond_60
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_61

    .line 260
    new-instance v3, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;

    invoke-direct {v3, v2}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;-><init>(Landroid/os/Bundle;)V

    move-object v2, v3

    goto :goto_29

    :cond_61
    const/4 v2, 0x0

    :goto_29
    if-eqz v2, :cond_62

    .line 261
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->shouldDelayPrimaryLastActivityRemoval()Z

    move-result v3

    if-eqz v3, :cond_62

    move v3, v7

    goto :goto_2a

    :cond_62
    const/4 v3, 0x0

    .line 262
    :goto_2a
    iget-boolean v4, v9, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    const-string v5, "Set delaying last activity removal on a non-embedded TF."

    const-string v6, "ActivityTaskManager"

    if-nez v4, :cond_63

    .line 263
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_63
    iput-boolean v3, v9, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    if-eqz v2, :cond_64

    .line 265
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->shouldDelaySecondaryLastActivityRemoval()Z

    move-result v2

    if-eqz v2, :cond_64

    goto :goto_2b

    :cond_64
    const/4 v7, 0x0

    .line 266
    :goto_2b
    iget-boolean v2, v1, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v2, :cond_65

    .line 267
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_65
    iput-boolean v7, v1, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    goto/16 :goto_24

    .line 269
    :pswitch_1a
    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 270
    invoke-static {v1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_68

    .line 271
    iget-object v2, v0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 272
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v12, :cond_67

    if-nez v1, :cond_66

    goto :goto_2c

    .line 273
    :cond_66
    iget-object v2, v2, Lcom/android/server/wm/TaskFragmentOrganizerController;->mTaskFragmentOrganizerState:Landroid/util/ArrayMap;

    .line 274
    invoke-interface/range {p8 .. p8}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 275
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    if-eqz v2, :cond_67

    .line 276
    iget-object v2, v2, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTemporaryActivityTokens:Ljava/util/Map;

    check-cast v2, Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    goto :goto_2d

    :cond_67
    :goto_2c
    const/4 v2, 0x0

    :cond_68
    :goto_2d
    if-nez v2, :cond_69

    .line 277
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not allowed to operate with invalid activity."

    invoke-direct {v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    move-object v4, v9

    move v5, v15

    .line 278
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 279
    :cond_69
    iget v1, v9, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    .line 280
    invoke-virtual {v9, v1, v2}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(ILcom/android/server/wm/ActivityRecord;)I

    move-result v1

    if-eqz v1, :cond_6a

    .line 281
    new-instance v6, Ljava/lang/SecurityException;

    const-string v1, "The task fragment is not allowed to embed the given activity."

    invoke-direct {v6, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    move-object v4, v9

    move v5, v15

    .line 282
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 283
    :cond_6a
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 284
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eq v1, v4, :cond_6b

    .line 285
    new-instance v6, Ljava/lang/SecurityException;

    const-string v1, "The reparented activity is not in the same Task as the target TaskFragment."

    invoke-direct {v6, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    move-object v4, v9

    move v5, v15

    .line 286
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 287
    :cond_6b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v1, :cond_6d

    .line 288
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    const-string v5, "Skip reparent activity to TaskFragment "

    if-nez v4, :cond_6c

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v3, " is current parent is null"

    .line 290
    invoke-static {v1, v2, v3, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 291
    :cond_6c
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-ne v9, v4, :cond_6d

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v3, " is already in the same TaskFragment"

    .line 293
    invoke-static {v1, v2, v3, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_6d
    if-eqz v3, :cond_6f

    const/4 v4, 0x0

    .line 294
    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 295
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-eqz v5, :cond_6e

    .line 296
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 297
    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 298
    :cond_6e
    invoke-virtual {v3, v9, v4}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_6f
    if-eqz v1, :cond_70

    .line 299
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->isSplitEmbedded()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 300
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v1

    if-eqz v1, :cond_70

    const/4 v7, 0x0

    .line 301
    invoke-virtual {v2, v7}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;)V

    goto :goto_2e

    :cond_70
    const/4 v7, 0x0

    .line 302
    :goto_2e
    invoke-virtual {v2, v9, v6}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    move-object/from16 v17, v7

    move-object v13, v8

    move-object/from16 v10, v20

    goto/16 :goto_39

    :pswitch_1b
    const/4 v7, 0x0

    .line 303
    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    .line 304
    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation;->getActivityIntent()Landroid/content/Intent;

    move-result-object v5

    .line 305
    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_71

    .line 306
    new-instance v4, Lcom/android/server/wm/SafeActivityOptions;

    invoke-static {v3}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-direct {v4, v3, v1, v2}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;II)V

    move-object/from16 v17, v4

    goto :goto_2f

    :cond_71
    move-object/from16 v17, v7

    .line 307
    :goto_2f
    new-instance v4, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v11, v4

    move-object v4, v5

    move-object v12, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v7

    move-object/from16 v10, v20

    move-object/from16 v7, p6

    move-object v13, v8

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;)V

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowOrganizerController;->waitAsyncStart(Ljava/util/function/IntSupplier;)I

    move-result v1

    .line 308
    invoke-static {v1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v2

    if-nez v2, :cond_87

    const/16 v2, -0x60

    if-eq v1, v2, :cond_74

    const/16 v2, -0x5e

    if-eq v1, v2, :cond_73

    const/16 v2, -0x5c

    if-eq v1, v2, :cond_72

    const/16 v2, -0x5b

    if-eq v1, v2, :cond_72

    .line 309
    new-instance v2, Landroid/util/AndroidRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Start activity failed with error code : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when starting "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    :goto_30
    move-object v6, v2

    goto :goto_32

    .line 310
    :cond_72
    new-instance v1, Landroid/content/ActivityNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No Activity found to handle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    :goto_31
    move-object v6, v1

    goto :goto_32

    .line 311
    :cond_73
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Permission denied and not allowed to start activity "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_31

    .line 312
    :cond_74
    new-instance v2, Landroid/util/AndroidRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Activity could not be started for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with error code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_30

    :goto_32
    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    move-object v4, v9

    move v5, v15

    .line 313
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto/16 :goto_38

    :pswitch_1c
    move-object v13, v8

    move-object/from16 v10, v20

    const/16 v17, 0x0

    if-eqz v5, :cond_75

    .line 314
    new-instance v1, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_75

    .line 315
    iget-object v2, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 316
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 317
    invoke-virtual {v2, v1}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 318
    const-string v1, "Skip removing TaskFragment due in lock task mode."

    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v1, "Not allow to delete task fragment in lock task mode."

    invoke-direct {v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    move-object v4, v9

    move v5, v15

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto/16 :goto_38

    :cond_75
    if-eqz v3, :cond_76

    .line 320
    invoke-virtual {v3, v9}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    .line 321
    :cond_76
    iget-object v1, v0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 322
    iget-object v2, v9, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    .line 323
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v1, "deleteTaskFragment"

    invoke-virtual {v9, v1, v7}, Lcom/android/server/wm/TaskFragment;->remove(Ljava/lang/String;Z)V

    goto/16 :goto_39

    :pswitch_1d
    move-object v13, v8

    move-object/from16 v10, v20

    const/16 v17, 0x0

    .line 325
    invoke-virtual {v4}, Landroid/window/TaskFragmentOperation;->getTaskFragmentCreationParams()Landroid/window/TaskFragmentCreationParams;

    move-result-object v1

    if-nez v1, :cond_77

    .line 326
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v1, "TaskFragmentCreationParams must be non-null"

    invoke-direct {v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    move-object v4, v9

    move v5, v15

    .line 327
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto/16 :goto_38

    .line 328
    :cond_77
    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getOwnerToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 329
    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getOrganizer()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object v5

    invoke-virtual {v5}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 330
    invoke-static {v5}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v5

    .line 331
    iget-object v8, v0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 332
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v1, "TaskFragment token must be unique"

    invoke-direct {v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v3, p7

    move v5, v7

    .line 333
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto/16 :goto_38

    :cond_78
    if-eqz v4, :cond_85

    .line 334
    iget-object v8, v4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v8, :cond_79

    goto/16 :goto_37

    .line 335
    :cond_79
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v8

    if-nez v8, :cond_7a

    .line 336
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not allowed to operate with non-resizable owner Activity"

    invoke-direct {v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v3, p7

    move v5, v7

    .line 337
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto/16 :goto_38

    .line 338
    :cond_7a
    iget-object v8, v4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 339
    iget v9, v8, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v11

    if-ne v9, v11, :cond_84

    iget v9, v8, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq v9, v2, :cond_7b

    goto/16 :goto_36

    .line 340
    :cond_7b
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 341
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not allowed to create TaskFragment in PIP Task"

    invoke-direct {v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v3, p7

    move v5, v7

    .line 342
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto/16 :goto_38

    .line 343
    :cond_7c
    new-instance v2, Lcom/android/server/wm/TaskFragment;

    iget-object v5, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 344
    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v9

    .line 345
    invoke-direct {v2, v5, v9, v7, v7}, Lcom/android/server/wm/TaskFragment;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;ZZ)V

    .line 346
    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getAllowTransitionWhenEmpty()Z

    move-result v5

    .line 347
    iget-boolean v9, v2, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v9, :cond_7d

    goto :goto_33

    .line 348
    :cond_7d
    iput-boolean v5, v2, Lcom/android/server/wm/TaskFragment;->mAllowTransitionWhenEmpty:Z

    .line 349
    :goto_33
    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getOrganizer()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object v5

    .line 350
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v9

    iget-object v11, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 351
    invoke-virtual {v5}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v12

    iput-object v12, v2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 352
    iput v9, v2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    .line 353
    iput-object v11, v2, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerProcessName:Ljava/lang/String;

    .line 354
    iget-object v9, v0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v5}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 355
    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getOverrideOrientation()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowContainer;->setOverrideOrientation(I)V

    .line 356
    :cond_7e
    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getPairedPrimaryFragmentToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v9, -0x1

    if-eqz v5, :cond_7f

    .line 357
    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getPairedPrimaryFragmentToken()Landroid/os/IBinder;

    move-result-object v5

    .line 358
    iget-object v11, v0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskFragment;

    .line 359
    iget-object v11, v8, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v9, :cond_80

    :goto_34
    add-int/lit8 v6, v5, 0x1

    goto :goto_35

    .line 360
    :cond_7f
    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getPairedActivityToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_80

    .line 361
    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getPairedActivityToken()Landroid/os/IBinder;

    move-result-object v5

    .line 362
    invoke-static {v5}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 363
    iget-object v11, v8, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v9, :cond_80

    goto :goto_34

    .line 364
    :cond_80
    :goto_35
    invoke-virtual {v8, v2, v6}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 365
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    iget v6, v8, Lcom/android/server/wm/Task;->mTaskId:I

    .line 366
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x791c

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 367
    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getWindowingMode()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 368
    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getInitialRelativeBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_82

    if-eqz v3, :cond_81

    .line 369
    iget v5, v3, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 370
    invoke-virtual {v0, v5, v2}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 371
    :cond_81
    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getInitialRelativeBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/wm/TaskFragment;->setRelativeEmbeddedBounds(Landroid/graphics/Rect;)V

    .line 372
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 373
    :cond_82
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v5, :cond_83

    .line 374
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ConfigurationContainer;->setActivityType(I)V

    .line 375
    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getInitialRelativeBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 376
    invoke-static {v8, v4}, Lcom/android/server/wm/TaskFragment;->calculateEmbedActivityMode(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ConfigurationContainer;->setEmbedActivityMode(I)V

    .line 377
    :cond_83
    iget-object v4, v0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v4, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_86

    .line 378
    invoke-virtual {v3, v2}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_38

    .line 379
    :cond_84
    :goto_36
    new-instance v6, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to operate with the ownerToken while the root activity of the target task belong to the different app"

    invoke-direct {v6, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v3, p7

    move v5, v7

    .line 380
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto :goto_38

    .line 381
    :cond_85
    :goto_37
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not allowed to operate with invalid ownerToken"

    invoke-direct {v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v3, p7

    move v5, v7

    .line 382
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    :cond_86
    :goto_38
    const/16 v16, 0x0

    :cond_87
    :goto_39
    move/from16 v4, v16

    :goto_3a
    or-int v1, p2, v4

    :goto_3b
    const/16 v2, 0x10

    if-eq v14, v2, :cond_9a

    const/16 v2, 0x12

    if-eq v14, v2, :cond_96

    packed-switch v14, :pswitch_data_3

    goto/16 :goto_43

    .line 383
    :pswitch_1e
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 384
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-nez v2, :cond_88

    goto :goto_3d

    .line 385
    :cond_88
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_89

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v2

    if-nez v2, :cond_89

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot set always-on-top on non-task or non-display area: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_43

    .line 387
    :cond_89
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isAlwaysOnTop()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    :goto_3c
    or-int/lit8 v1, v1, 0x2

    goto/16 :goto_43

    .line 388
    :cond_8a
    :goto_3d
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    if-eqz v2, :cond_8b

    if-eqz v0, :cond_8b

    .line 389
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_8b

    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isAlwaysOnTop()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    goto :goto_3c

    .line 391
    :cond_8b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_43

    .line 392
    :pswitch_1f
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_8c

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempt to remove local insets source provider from unknown: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_43

    .line 394
    :cond_8c
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsFrameProvider()Landroid/view/InsetsFrameProvider;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsFrameOwner()Landroid/os/IBinder;

    move-result-object v3

    .line 395
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowContainer;->removeLocalInsetsFrameProvider(Landroid/view/InsetsFrameProvider;Landroid/os/IBinder;)V

    goto/16 :goto_43

    .line 396
    :pswitch_20
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_8d

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempt to add local insets source provider on unknown: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_43

    .line 398
    :cond_8d
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsFrameProvider()Landroid/view/InsetsFrameProvider;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsFrameOwner()Landroid/os/IBinder;

    move-result-object v3

    .line 399
    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowContainer;->addLocalInsetsFrameProvider(Landroid/view/InsetsFrameProvider;Landroid/os/IBinder;)V

    goto/16 :goto_43

    :pswitch_21
    move-object/from16 v0, p9

    if-nez v0, :cond_8e

    goto/16 :goto_43

    .line 400
    :cond_8e
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-nez v2, :cond_8f

    goto/16 :goto_43

    .line 401
    :cond_8f
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_90

    .line 402
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 403
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_3e

    .line 404
    :cond_90
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    :goto_3e
    if-nez v3, :cond_91

    goto/16 :goto_43

    .line 405
    :cond_91
    iget-object v4, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    if-nez v4, :cond_92

    goto :goto_40

    :cond_92
    const/4 v4, 0x0

    .line 406
    :goto_3f
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v4, v6, :cond_94

    .line 407
    iget-object v6, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 408
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/wm/Task;

    goto :goto_40

    :cond_93
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_94
    :goto_40
    if-nez v5, :cond_95

    goto/16 :goto_43

    .line 409
    :cond_95
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 410
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    goto/16 :goto_43

    .line 411
    :pswitch_22
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v0

    .line 412
    const-string v2, "android:transaction.hop.shortcut_calling_package"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 413
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 414
    const-class v2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;

    .line 415
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 417
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v6

    move-object/from16 v7, p6

    .line 418
    iget v8, v7, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v7, v7, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    move-object/from16 p0, v2

    move/from16 p1, v7

    move/from16 p2, v8

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v0

    move/from16 p7, v6

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;->startShortcut(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_a0

    goto/16 :goto_3c

    .line 419
    :cond_96
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 420
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_97

    goto/16 :goto_43

    .line 421
    :cond_97
    new-instance v3, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 422
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 423
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 424
    invoke-virtual {v3}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->mAutoEnteringPip:Z

    .line 425
    :cond_98
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 426
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "moveActivityToPinnedRootTask"

    move-object/from16 p0, v0

    move-object/from16 p1, v2

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v4

    move-object/from16 p5, v3

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/Transition;Landroid/graphics/Rect;)V

    .line 427
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->mPauseSchedulePendingForPip:Z

    if-eqz v0, :cond_99

    .line 428
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 429
    const-string v6, "auto-pip"

    move-object/from16 p0, v0

    move-object/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/TaskFragment;->schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V

    :cond_99
    const/4 v0, 0x0

    .line 430
    iput-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->mAutoEnteringPip:Z

    goto/16 :goto_3c

    :cond_9a
    move-object v0, v10

    move-object v2, v13

    .line 431
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_9b

    .line 432
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    goto :goto_41

    :cond_9b
    move-object/from16 v8, v17

    :goto_41
    if-eqz v8, :cond_9f

    .line 433
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v4

    if-nez v4, :cond_9c

    goto :goto_42

    .line 434
    :cond_9c
    iget-boolean v0, v8, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_9e

    .line 435
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 436
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparentLeafTaskIfRelaunch()Z

    move-result v0

    .line 437
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 438
    iput-boolean v0, v8, Lcom/android/server/wm/Task;->mReparentLeafTaskIfRelaunch:Z

    goto :goto_43

    .line 439
    :cond_9d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set reparent leaf task flag on non-root task : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_9e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set reparent leaf task flag on non-organized task : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_9f
    :goto_42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    :goto_43
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_9
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_a
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch
.end method

.method public final applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I
    .locals 9

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    const-string v0, "applySyncTransaction()"

    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 9
    .line 10
    invoke-direct {v5}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v7

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 18
    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 20
    .line 21
    .line 22
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 24
    .line 25
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_2

    .line 39
    .line 40
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 41
    .line 42
    const/4 v3, -0x1

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    move-object v1, p0

    .line 46
    move-object v2, p1

    .line 47
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)I

    .line 48
    .line 49
    .line 50
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 52
    .line 53
    .line 54
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    const/4 p0, -0x1

    .line 58
    return p0

    .line 59
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance v2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 69
    .line 70
    iget v3, v1, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    .line 71
    .line 72
    add-int/lit8 v4, v3, 0x1

    .line 73
    .line 74
    iput v4, v1, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    .line 75
    .line 76
    const-string v4, "Organizer"

    .line 77
    .line 78
    invoke-direct {v2, v1, p0, v3, v4}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;-><init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    .line 82
    .line 83
    iget v3, v2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 84
    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    iget p2, v2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 103
    .line 104
    new-instance v3, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;

    .line 105
    .line 106
    invoke-direct {v3, p0, p1, p2, v5}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/TransitionController;->startLegacySyncOrQueue(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 114
    .line 115
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 116
    .line 117
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_3

    .line 124
    .line 125
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 126
    .line 127
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 128
    .line 129
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 130
    .line 131
    const-wide/16 v3, 0x1388

    .line 132
    .line 133
    const/4 v6, 0x0

    .line 134
    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V

    .line 135
    .line 136
    .line 137
    const/4 v6, 0x0

    .line 138
    const/4 v4, 0x0

    .line 139
    move-object v1, p0

    .line 140
    move-object v2, p1

    .line 141
    move v3, p2

    .line 142
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)I

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 150
    .line 151
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 152
    .line 153
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 154
    .line 155
    new-instance v3, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;

    .line 156
    .line 157
    invoke-direct {v3, p0, v2}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 158
    .line 159
    .line 160
    new-instance v2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;

    .line 161
    .line 162
    invoke-direct {v2, p0, p1, p2, v5}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 169
    .line 170
    if-eqz p0, :cond_4

    .line 171
    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string/jumbo p1, "queueSyncSet, caller="

    .line 175
    .line 176
    .line 177
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const/4 p1, 0x6

    .line 181
    const-string v4, "BLASTSyncEngine"

    .line 182
    .line 183
    invoke-static {p1, p0, v4}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :cond_4
    new-instance p0, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;

    .line 187
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    .line 190
    .line 191
    iput-object v3, p0, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;->mStartSync:Ljava/lang/Runnable;

    .line 192
    .line 193
    iput-object v2, p0, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;->mApplySync:Ljava/lang/Runnable;

    .line 194
    .line 195
    iget-object p1, v1, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncSets:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 202
    .line 203
    .line 204
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    .line 206
    .line 207
    return p2

    .line 208
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 210
    .line 211
    .line 212
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 213
    :catchall_1
    move-exception p0

    .line 214
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    .line 216
    .line 217
    throw p0

    .line 218
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 219
    .line 220
    const-string p1, "Null transaction passed to applySyncTransaction"

    .line 221
    .line 222
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p0
.end method

.method public final applyTaskFragmentTransactionLocked(Landroid/window/WindowContainerTransaction;IZLandroid/window/RemoteTransition;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const-string v4, "Permission Denial: applyTaskFragmentTransaction() from pid="

    .line 26
    .line 27
    const-string v5, ", uid="

    .line 28
    .line 29
    const-string v6, "WindowOrganizerController"

    .line 30
    .line 31
    if-eqz v3, :cond_6

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Ljava/util/Map$Entry;

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Landroid/os/IBinder;

    .line 44
    .line 45
    invoke-static {v7}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Landroid/window/WindowContainerTransaction$Change;

    .line 54
    .line 55
    if-nez v7, :cond_0

    .line 56
    .line 57
    const-string v3, "Attempt to operate on task fragment that no longer exists"

    .line 58
    .line 59
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    if-eqz v7, :cond_5

    .line 68
    .line 69
    iget-object v8, v7, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 70
    .line 71
    if-eqz v8, :cond_5

    .line 72
    .line 73
    invoke-interface {v1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    iget-object v9, v7, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 78
    .line 79
    invoke-interface {v9}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-interface {v8, v9}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-eqz v8, :cond_5

    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    iget-object v10, v0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 102
    .line 103
    invoke-interface {v1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    invoke-virtual {v10, v11}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    if-eqz v10, :cond_1

    .line 112
    .line 113
    and-int/lit16 v10, v8, -0x8a

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    move v10, v8

    .line 117
    :goto_1
    and-int/lit16 v11, v10, 0x200

    .line 118
    .line 119
    if-eqz v11, :cond_2

    .line 120
    .line 121
    const/high16 v11, 0x20000000

    .line 122
    .line 123
    and-int/2addr v11, v9

    .line 124
    if-eqz v11, :cond_2

    .line 125
    .line 126
    and-int/lit8 v11, v3, 0x1

    .line 127
    .line 128
    if-eqz v11, :cond_2

    .line 129
    .line 130
    and-int/lit16 v10, v10, -0x201

    .line 131
    .line 132
    const v11, -0x20000001

    .line 133
    .line 134
    .line 135
    and-int/2addr v11, v9

    .line 136
    and-int/lit8 v12, v3, -0x2

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_2
    move v12, v3

    .line 140
    move v11, v9

    .line 141
    :goto_2
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    .line 142
    .line 143
    if-eqz v13, :cond_3

    .line 144
    .line 145
    const/high16 v13, 0x800000

    .line 146
    .line 147
    and-int/2addr v13, v12

    .line 148
    if-eqz v13, :cond_3

    .line 149
    .line 150
    const v13, -0x800001

    .line 151
    .line 152
    .line 153
    and-int/2addr v12, v13

    .line 154
    :cond_3
    if-nez v10, :cond_4

    .line 155
    .line 156
    if-nez v11, :cond_4

    .line 157
    .line 158
    if-nez v12, :cond_4

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v2, " trying to apply changes of changeMask="

    .line 185
    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v2, " configSetMask="

    .line 193
    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v2, " windowSetMask="

    .line 198
    .line 199
    const-string v4, " to TaskFragment="

    .line 200
    .line 201
    invoke-static {v9, v3, v2, v4, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v2, " TaskFragmentOrganizer="

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    new-instance v1, Ljava/lang/SecurityException;

    .line 223
    .line 224
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v1

    .line 228
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v2, " trying to modify window container not belonging to the TaskFragmentOrganizer="

    .line 251
    .line 252
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    new-instance v1, Ljava/lang/SecurityException;

    .line 266
    .line 267
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw v1

    .line 271
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    add-int/lit8 v3, v3, -0x1

    .line 280
    .line 281
    :goto_3
    if-ltz v3, :cond_9

    .line 282
    .line 283
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    check-cast v7, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 288
    .line 289
    invoke-virtual {v7}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    const/16 v9, 0xe

    .line 294
    .line 295
    if-eq v8, v9, :cond_8

    .line 296
    .line 297
    const/16 v9, 0x11

    .line 298
    .line 299
    if-ne v8, v9, :cond_7

    .line 300
    .line 301
    invoke-virtual {v7}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    invoke-virtual {p0, v8, v1}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v7}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    if-eqz v8, :cond_8

    .line 313
    .line 314
    invoke-virtual {v7}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    invoke-virtual {v8}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    if-eqz v8, :cond_8

    .line 323
    .line 324
    invoke-virtual {v7}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    .line 325
    .line 326
    .line 327
    move-result-object v7

    .line 328
    invoke-virtual {v7}, Landroid/window/TaskFragmentOperation;->getSecondaryFragmentToken()Landroid/os/IBinder;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    invoke-virtual {p0, v7, v1}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)V

    .line 333
    .line 334
    .line 335
    goto :goto_4

    .line 336
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v2, " trying to apply a hierarchy change that is not allowed for TaskFragmentOrganizer="

    .line 359
    .line 360
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    new-instance v1, Ljava/lang/SecurityException;

    .line 374
    .line 375
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    throw v1

    .line 379
    :cond_8
    :goto_4
    add-int/lit8 v3, v3, -0x1

    .line 380
    .line 381
    goto :goto_3

    .line 382
    :cond_9
    if-eqz p4, :cond_b

    .line 383
    .line 384
    iget-object v1, v0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 385
    .line 386
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-interface {v2}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->isSystemOrganizer(Landroid/os/IBinder;)Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-eqz v1, :cond_a

    .line 399
    .line 400
    goto :goto_5

    .line 401
    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    .line 402
    .line 403
    const-string v1, "Only a system organizer is allowed to use remote transition!"

    .line 404
    .line 405
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    throw v0

    .line 409
    :cond_b
    :goto_5
    new-instance v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 410
    .line 411
    invoke-direct {v5}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 412
    .line 413
    .line 414
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 415
    .line 416
    .line 417
    move-result-wide v7

    .line 418
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 419
    .line 420
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    if-nez v1, :cond_c

    .line 425
    .line 426
    const/4 v3, -0x1

    .line 427
    const/4 v4, 0x0

    .line 428
    const/4 v6, 0x0

    .line 429
    move-object v1, p0

    .line 430
    move-object/from16 v2, p1

    .line 431
    .line 432
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    .line 434
    .line 435
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 436
    .line 437
    .line 438
    return-void

    .line 439
    :cond_c
    :try_start_1
    iget-object v1, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 440
    .line 441
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 442
    .line 443
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 444
    .line 445
    invoke-virtual {v1}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_e

    .line 450
    .line 451
    if-nez p3, :cond_e

    .line 452
    .line 453
    iget-object v1, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 454
    .line 455
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    if-nez v4, :cond_d

    .line 460
    .line 461
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    .line 462
    .line 463
    const/4 v2, 0x3

    .line 464
    aget-boolean v1, v1, v2

    .line 465
    .line 466
    if-eqz v1, :cond_d

    .line 467
    .line 468
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 469
    .line 470
    const/4 v13, 0x0

    .line 471
    const/4 v14, 0x0

    .line 472
    const-wide v10, 0x54cde495c22f3cd2L    # 3.269164467809003E100

    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    const/4 v12, 0x0

    .line 478
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    goto :goto_6

    .line 482
    :catchall_0
    move-exception v0

    .line 483
    goto :goto_7

    .line 484
    :cond_d
    :goto_6
    const/4 v6, 0x0

    .line 485
    const/4 v3, -0x1

    .line 486
    move-object v1, p0

    .line 487
    move-object/from16 v2, p1

    .line 488
    .line 489
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    .line 491
    .line 492
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 493
    .line 494
    .line 495
    return-void

    .line 496
    :cond_e
    :try_start_2
    new-instance v9, Lcom/android/server/wm/Transition;

    .line 497
    .line 498
    iget-object v1, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 499
    .line 500
    iget-object v2, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 501
    .line 502
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 503
    .line 504
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 505
    .line 506
    const/4 v3, 0x0

    .line 507
    move/from16 v4, p2

    .line 508
    .line 509
    invoke-direct {v9, v4, v3, v1, v2}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 510
    .line 511
    .line 512
    new-instance v10, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;

    .line 513
    .line 514
    move-object v1, v10

    .line 515
    move-object v2, p0

    .line 516
    move-object/from16 v3, p1

    .line 517
    .line 518
    move-object v4, v9

    .line 519
    move-object/from16 v6, p4

    .line 520
    .line 521
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/window/RemoteTransition;)V

    .line 522
    .line 523
    .line 524
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 525
    .line 526
    invoke-virtual {v0, v9, v10}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 527
    .line 528
    .line 529
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 530
    .line 531
    .line 532
    return-void

    .line 533
    :goto_7
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 534
    .line 535
    .line 536
    throw v0
.end method

.method public final applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)I
    .locals 27

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move/from16 v13, p2

    move-object/from16 v1, p3

    move-object/from16 v14, p5

    .line 15
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    const/4 v15, 0x1

    aget-boolean v2, v2, v15

    if-eqz v2, :cond_0

    int-to-long v2, v13

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide v5, 0x7fae65e581513769L    # 1.0673112428514985E307

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :cond_0
    iget-object v2, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 17
    iget-object v2, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 18
    iput-boolean v15, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    const/4 v11, 0x0

    .line 19
    const-string v10, "WindowOrganizerController"

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 20
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    iget-object v2, v1, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    iget v3, v2, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    add-int/2addr v3, v15

    iput v3, v2, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    .line 22
    iget v2, v1, Lcom/android/server/wm/Transition;->mSyncId:I

    iget-object v3, v1, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v3, v2, v11}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)Z

    move-object v8, v1

    move/from16 v16, v15

    goto :goto_0

    .line 23
    :cond_1
    invoke-static {}, Lcom/android/window/flags/Flags;->alwaysDeferTransitionWhenApplyWct()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Transition is not collecting when applyTransaction. transition="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget v1, v1, Lcom/android/server/wm/Transition;->mState:I

    .line 26
    invoke-static {v2, v1, v10}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    move/from16 v16, v11

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    move-object v8, v1

    move/from16 v16, v11

    .line 27
    :goto_0
    :try_start_0
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    if-eqz v8, :cond_3

    .line 28
    invoke-virtual {v8, v7}, Lcom/android/server/wm/Transition;->applyDisplayChangeIfNeeded(Landroid/util/ArraySet;)V

    .line 29
    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v15

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_1
    move-object v10, v8

    goto/16 :goto_24

    :cond_3
    move v1, v11

    .line 30
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStartIntentsType()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 31
    iget-object v2, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiInstanceController:Lcom/android/server/wm/MultiInstanceController;

    move-object/from16 v6, p4

    invoke-virtual {v2, v0, v6}, Lcom/android/server/wm/MultiInstanceController;->adjustStartIntents(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 32
    iget-object v2, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiInstanceController:Lcom/android/server/wm/MultiInstanceController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/MultiInstanceController;->adjustStartIntentsForSingleInstancePerTask(Landroid/window/WindowContainerTransaction;)V

    .line 33
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz v2, :cond_5

    .line 34
    iget-object v2, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    const-string/jumbo v3, "start_intents"

    .line 35
    invoke-virtual {v2, v11, v3}, Lcom/android/server/wm/MultiWindowFoldController;->setFoldingState(ILjava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object/from16 v6, p4

    .line 36
    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStartIntentsType()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStartTasksType()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 37
    :cond_6
    iget-object v2, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppPairController;->handleAutoPipIfNeededLocked(Landroid/window/WindowContainerTransaction;)V

    .line 38
    :cond_7
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->changeTransitionRequested()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 39
    iget-object v2, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChangeTransitionRequest()I

    move-result v4

    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "handleChangeTransitionRequest: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-static {v4}, Landroid/window/WindowContainerTransaction;->changeTransitRequestToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 44
    const-string v9, "ChangeTransitionController"

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v15, :cond_8

    .line 45
    invoke-virtual {v2, v11}, Lcom/android/server/wm/ChangeTransitionController;->handleRequestFullscreenToSplitScreen(Z)V

    goto :goto_4

    :cond_8
    if-ne v4, v3, :cond_9

    .line 46
    invoke-virtual {v2, v15}, Lcom/android/server/wm/ChangeTransitionController;->handleRequestFullscreenToSplitScreen(Z)V

    .line 47
    :cond_9
    :goto_4
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->displayChangeTransitionRequested()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 48
    iget-object v2, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getDisplayIdForChangeTransition()I

    move-result v4

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getDisplayChangeTransitionReason()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-virtual {v2, v4, v5, v11}, Lcom/android/server/wm/ChangeTransitionController;->requestDisplayChangeTransition(ILjava/lang/String;Z)V

    .line 52
    :cond_a
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v2, :cond_b

    if-eqz v8, :cond_b

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getAdditionalFlags()I

    move-result v2

    .line 54
    iput v2, v8, Lcom/android/server/wm/Transition;->mAdditionalFlags:I

    .line 55
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v9

    .line 56
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v8, :cond_f

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 58
    :cond_c
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual/range {v18 .. v18}, Landroid/window/WindowContainerTransaction$Change;->getConfigAtTransitionEnd()Z

    move-result v18

    if-nez v18, :cond_d

    goto :goto_5

    .line 61
    :cond_d
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 62
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v18

    if-nez v18, :cond_e

    goto :goto_5

    .line 63
    :cond_e
    new-instance v15, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda12;

    const/4 v3, 0x0

    invoke-direct {v15, v3, v8}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v15}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 64
    invoke-virtual {v8, v4}, Lcom/android/server/wm/Transition;->snapshotStartState(Lcom/android/server/wm/WindowContainer;)V

    .line 65
    iget-object v3, v8, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    iget v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    const/4 v3, 0x3

    const/4 v15, 0x1

    goto :goto_5

    .line 66
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 67
    iget-object v3, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-nez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_6

    :cond_10
    move v3, v11

    .line 68
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChangeList()Ljava/util/List;

    move-result-object v4

    .line 69
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, "Attempt to operate on detached container: "

    if-nez v15, :cond_11

    .line 70
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_12

    :cond_11
    move/from16 v24, v5

    move-object v6, v7

    move-object/from16 v25, v9

    move-object v5, v10

    move-object v13, v11

    const/4 v0, 0x0

    const/4 v7, 0x3

    move-object v9, v8

    goto/16 :goto_18

    .line 71
    :cond_12
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v4, :cond_14

    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$HierarchyOp;

    if-nez v3, :cond_13

    .line 72
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v4

    const/4 v15, 0x2

    if-ne v4, v15, :cond_13

    .line 73
    iget-object v2, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :cond_14
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStagePositionChanged()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v2, :cond_15

    .line 75
    :try_start_4
    iget-object v2, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v15, 0x0

    .line 76
    :try_start_5
    iput-boolean v15, v2, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :catchall_1
    move-exception v0

    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_15
    const/4 v15, 0x0

    .line 77
    :goto_8
    :try_start_6
    iget-object v2, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 78
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 79
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 80
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->hasChildTaskInSideStage()Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const-string/jumbo v3, "wct"

    if-nez v2, :cond_18

    :try_start_7
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-nez v2, :cond_18

    move v2, v15

    .line 81
    :goto_9
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_17

    .line 82
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 83
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v6

    move-object/from16 v20, v7

    const/4 v7, 0x7

    if-ne v6, v7, :cond_16

    .line 84
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 85
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 86
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 87
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v0

    or-int/2addr v15, v0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, p4

    move-object/from16 v7, v20

    goto :goto_9

    :cond_17
    move-object/from16 v20, v7

    if-lez v15, :cond_19

    const/4 v0, 0x3

    if-ge v15, v0, :cond_19

    .line 88
    iget-object v0, v12, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_a

    :cond_18
    move-object/from16 v20, v7

    .line 89
    :cond_19
    :goto_a
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStartTaskAndIntentType()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-nez v0, :cond_1a

    .line 90
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStartTasksFromRecentType()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v0, :cond_1c

    .line 91
    :cond_1a
    :try_start_a
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v0, :cond_1c

    .line 92
    :try_start_b
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 93
    const-string/jumbo v0, "split(edge_all_apps)"

    invoke-virtual {v4, v0}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 94
    iget-object v0, v4, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_1b

    .line 95
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_b

    :cond_1b
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_1c

    .line 96
    iget-object v2, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 97
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 98
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 99
    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 100
    :cond_1c
    :try_start_c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_STANDALONE_LAUNCH_POLICY:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v0, :cond_1d

    .line 101
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isUpdateDesktopModeActive()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 102
    iget-object v0, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mNewDexController:Lcom/android/server/wm/NewDexController;

    .line 103
    iget-object v0, v0, Lcom/android/server/wm/NewDexController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 104
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_1d
    if-lez v5, :cond_1f

    .line 105
    :try_start_e
    iget-object v0, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    move-result v0

    move v15, v1

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v5, :cond_1e

    .line 106
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getErrorCallbackToken()Landroid/os/IBinder;

    move-result-object v19

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v21

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isDismissSplit()Z

    move-result v22
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object/from16 v1, p0

    move-object v6, v3

    move v3, v15

    move-object/from16 v23, v4

    move/from16 v4, p2

    move/from16 v24, v5

    move-object v5, v8

    move-object v14, v6

    move v6, v0

    move-object/from16 p3, v20

    move/from16 v20, v7

    move-object/from16 v7, p4

    move-object v13, v8

    move-object/from16 v8, v19

    move/from16 v19, v0

    move-object/from16 v25, v9

    const/4 v0, 0x0

    move-object/from16 v9, v21

    move-object/from16 v26, v10

    move-object/from16 v10, p5

    move-object/from16 v17, v13

    move-object v13, v11

    move/from16 v11, v22

    .line 110
    :try_start_f
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/WindowOrganizerController;->applyHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;IILcom/android/server/wm/Transition;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/Transition;Z)I

    move-result v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    or-int/2addr v15, v1

    add-int/lit8 v7, v20, 0x1

    move-object/from16 v20, p3

    move-object v11, v13

    move-object v3, v14

    move-object/from16 v8, v17

    move/from16 v0, v19

    move-object/from16 v4, v23

    move/from16 v5, v24

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    move/from16 v13, p2

    move-object/from16 v14, p5

    goto :goto_c

    :catchall_2
    move-exception v0

    :goto_d
    move-object/from16 v10, v17

    goto/16 :goto_24

    :catchall_3
    move-exception v0

    move-object/from16 v17, v8

    goto :goto_d

    :cond_1e
    move-object v14, v3

    move-object/from16 v23, v4

    move-object/from16 v17, v8

    move-object/from16 v26, v10

    move-object v13, v11

    move-object/from16 p3, v20

    const/4 v0, 0x0

    move v1, v15

    goto :goto_e

    :cond_1f
    move-object v14, v3

    move-object/from16 v23, v4

    move-object/from16 v17, v8

    move-object/from16 v26, v10

    move-object v13, v11

    move-object/from16 p3, v20

    const/4 v0, 0x0

    .line 111
    :goto_e
    :try_start_10
    iget-object v2, v12, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_20

    .line 112
    :try_start_11
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/TaskDisplayArea;->hasChildTaskInSideStage()Z

    move-result v2

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v3

    if-ne v2, v3, :cond_20

    .line 113
    invoke-virtual {v12, v14}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 114
    :cond_20
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 115
    :cond_21
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    if-eqz v3, :cond_29

    .line 116
    :try_start_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 118
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-nez v5, :cond_22

    goto/16 :goto_13

    .line 119
    :cond_22
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 120
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeSurfaceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v4, :cond_21

    .line 121
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_21

    if-nez v3, :cond_23

    goto :goto_f

    .line 122
    :cond_23
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v5

    if-nez v5, :cond_26

    .line 123
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-eqz v5, :cond_24

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    goto :goto_10

    :cond_24
    move-object v9, v0

    :goto_10
    if-eqz v9, :cond_25

    .line 124
    iget-boolean v5, v9, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_25

    goto :goto_11

    .line 125
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t manipulate non-organized task surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_26
    :goto_11
    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 127
    iget-object v6, v4, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 128
    iget v7, v3, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 129
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_27

    .line 130
    invoke-virtual {v5, v6, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_12

    .line 131
    :cond_27
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v5, v6, v7, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 132
    :goto_12
    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction$1(Landroid/view/SurfaceControl$Transaction;)V

    goto/16 :goto_f

    .line 133
    :cond_28
    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v26

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v26, v5

    goto/16 :goto_f

    :cond_29
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2a

    .line 134
    iget-object v0, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v3, 0x0

    .line 135
    iput-boolean v3, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 136
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 137
    iget-object v0, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    goto :goto_16

    :cond_2a
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2c

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_14
    if-ltz v2, :cond_2c

    move-object/from16 v6, p3

    .line 139
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 140
    iget-boolean v4, v3, Lcom/android/server/wm/Task;->mPendingEnsureVisibleForPopOver:Z

    if-eqz v4, :cond_2b

    const/4 v4, 0x0

    .line 141
    iput-boolean v4, v3, Lcom/android/server/wm/Task;->mPendingEnsureVisibleForPopOver:Z

    const/4 v4, 0x1

    .line 142
    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_15

    .line 143
    :cond_2b
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    new-instance v4, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :goto_15
    add-int/lit8 v2, v2, -0x1

    move-object/from16 p3, v6

    goto :goto_14

    :cond_2c
    :goto_16
    if-eqz v1, :cond_2d

    .line 144
    iget-object v0, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :cond_2d
    if-eqz v16, :cond_2e

    move-object/from16 v9, v17

    .line 145
    iget-object v0, v9, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 146
    iget v2, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    .line 147
    invoke-virtual {v9}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 148
    :cond_2e
    iget-object v0, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    const/4 v3, 0x0

    .line 149
    iput-boolean v3, v2, Lcom/android/server/wm/AppPairController;->mShouldAutoPipByAppPair:Z

    .line 150
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 151
    iput-boolean v3, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 152
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return v1

    :catchall_4
    move-exception v0

    move-object/from16 v9, v17

    :goto_17
    move-object v10, v9

    goto/16 :goto_24

    :catchall_5
    move-exception v0

    move-object v9, v8

    goto :goto_17

    .line 153
    :goto_18
    :try_start_14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2f

    const/4 v8, 0x0

    .line 154
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/window/WindowContainerTransaction$ContainerChange;

    .line 155
    new-instance v11, Lcom/android/server/wm/WindowOrganizerController$1;

    invoke-direct {v11, v10}, Lcom/android/server/wm/WindowOrganizerController$1;-><init>(Landroid/window/WindowContainerTransaction$ContainerChange;)V

    .line 156
    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_19

    :catchall_6
    move-exception v0

    goto :goto_17

    .line 157
    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Ljava/util/Map$Entry;

    .line 158
    :goto_19
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v8}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    if-eqz v8, :cond_30

    .line 159
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v10

    if-nez v10, :cond_31

    :cond_30
    move-object/from16 v14, p5

    move-object/from16 v20, v2

    move-object v10, v9

    move/from16 v7, v24

    move/from16 v9, p2

    goto/16 :goto_23

    :cond_31
    if-nez v3, :cond_32

    .line 160
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v10}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v10

    const/high16 v13, 0x20000000

    and-int/2addr v10, v13

    if-eqz v10, :cond_32

    .line 161
    iget-object v3, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10, v3}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    move-object v10, v9

    const/4 v3, 0x1

    :goto_1a
    move/from16 v9, p2

    goto :goto_1b

    :cond_32
    move-object v10, v9

    goto :goto_1a

    :goto_1b
    if-ltz v9, :cond_33

    .line 162
    :try_start_15
    invoke-virtual {v12, v9, v8}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    goto :goto_1c

    :catchall_7
    move-exception v0

    goto/16 :goto_24

    :cond_33
    :goto_1c
    if-eqz v10, :cond_34

    const/4 v13, 0x0

    .line 163
    invoke-virtual {v10, v8, v13}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 164
    :cond_34
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v13}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v13

    and-int/lit8 v13, v13, 0x40

    move-object/from16 v14, p5

    if-eqz v13, :cond_36

    if-eqz v14, :cond_35

    const/4 v13, 0x0

    .line 165
    iput-boolean v13, v14, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    goto :goto_1d

    :cond_35
    const/4 v13, 0x0

    if-eqz v10, :cond_36

    .line 166
    iput-boolean v13, v10, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    .line 167
    :cond_36
    :goto_1d
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v13

    if-eqz v13, :cond_3a

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v13

    if-eqz v13, :cond_3a

    .line 168
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v13}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    move-result v13

    const/4 v15, 0x2

    if-eq v13, v15, :cond_3a

    move/from16 v7, v24

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_1e
    if-ge v13, v7, :cond_39

    move-object/from16 v0, v25

    .line 169
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-object/from16 v25, v0

    .line 170
    invoke-virtual/range {v19 .. v19}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v0

    move-object/from16 v20, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_37

    goto :goto_1f

    .line 171
    :cond_37
    invoke-virtual/range {v19 .. v19}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    .line 172
    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 173
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_1f

    .line 174
    :cond_38
    invoke-virtual/range {v19 .. v19}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    move v15, v0

    :goto_1f
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v20

    const/4 v0, 0x0

    goto :goto_1e

    :cond_39
    move-object/from16 v20, v2

    goto :goto_20

    :cond_3a
    move-object/from16 v20, v2

    move/from16 v7, v24

    const/4 v15, 0x0

    :goto_20
    if-eqz v15, :cond_3b

    .line 175
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 176
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v13, 0x0

    .line 177
    invoke-virtual {v0, v2, v13}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(ZLcom/android/server/wm/ActivityRecord;)V

    .line 178
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v2, "force-stop-on-removing-pip"

    move/from16 v17, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v13, v3, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V

    goto :goto_21

    :cond_3b
    move/from16 v17, v3

    const/4 v13, 0x0

    .line 179
    :goto_21
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerTransaction$Change;

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getErrorCallbackToken()Landroid/os/IBinder;

    move-result-object v2

    .line 181
    invoke-virtual {v12, v8, v0, v2}, Lcom/android/server/wm/WindowOrganizerController;->applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I

    move-result v0

    or-int/2addr v1, v0

    if-eqz v15, :cond_3c

    .line 182
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v11, 0x0

    invoke-virtual {v2, v3, v11}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    :cond_3c
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_3d

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3d

    .line 183
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3d
    move-object/from16 v0, p1

    move v13, v9

    move-object v8, v10

    move/from16 v3, v17

    :goto_22
    move-object/from16 v2, v20

    move-object/from16 v9, v25

    const/4 v11, 0x0

    move-object v10, v5

    move v5, v7

    move-object v7, v6

    move-object/from16 v6, p4

    goto/16 :goto_7

    .line 184
    :goto_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    move-object/from16 v0, p1

    move v13, v9

    move-object v8, v10

    goto :goto_22

    :goto_24
    if-eqz v16, :cond_3e

    .line 185
    iget-object v1, v10, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 186
    iget v2, v1, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/wm/Transition$ReadyTrackerOld;->mDeferReadyDepth:I

    .line 187
    invoke-virtual {v10}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 188
    :cond_3e
    iget-object v1, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    const/4 v3, 0x0

    .line 189
    iput-boolean v3, v2, Lcom/android/server/wm/AppPairController;->mShouldAutoPipByAppPair:Z

    .line 190
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 191
    iput-boolean v3, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 192
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 193
    throw v0
.end method

.method public final applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)I
    .locals 6

    if-eqz p5, :cond_0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 12
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 13
    const-string p1, "WindowOrganizerController"

    const-string p2, "Failed to execute deferred applyTransaction"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)I

    move-result p0

    return p0
.end method

.method public final applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 1
    const-string v0, "applyTransaction()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2
    new-instance v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v5}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 5
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)I

    .line 6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 8
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 9
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10
    throw p0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null transaction passed to applyTransaction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I
    .locals 10

    .line 1
    instance-of v0, p1, Lcom/android/server/wm/TaskFragment;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p1, Lcom/android/server/wm/DisplayArea;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 11
    .line 12
    const-string p1, "Invalid token in task fragment or displayArea transaction"

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x2

    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-array p3, v2, [I

    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    aput p0, p3, v3

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    and-int/lit8 p0, p0, 0x20

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getIgnoreOrientationRequest()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayArea;->setIgnoreOrientationRequest(Z)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    aget p0, p3, v3

    .line 58
    .line 59
    or-int/2addr p0, v1

    .line 60
    aput p0, p3, v3

    .line 61
    .line 62
    :cond_2
    new-instance p0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;

    .line 63
    .line 64
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;-><init>(Landroid/window/WindowContainerTransaction$Change;[I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 68
    .line 69
    .line 70
    aget p0, p3, v3

    .line 71
    .line 72
    return p0

    .line 73
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_11

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    if-eqz p3, :cond_4

    .line 88
    .line 89
    invoke-virtual {p1, p3}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction$1(Landroid/view/SurfaceControl$Transaction;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    and-int/lit8 v0, v0, 0x8

    .line 101
    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    or-int/lit8 p3, p3, 0x2

    .line 115
    .line 116
    :cond_5
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    and-int/lit16 v0, v0, 0x80

    .line 121
    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getForceTranslucent()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iget-boolean v4, p1, Lcom/android/server/wm/TaskFragment;->mForceTranslucent:Z

    .line 129
    .line 130
    if-ne v4, v0, :cond_6

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_6
    iput-boolean v0, p1, Lcom/android/server/wm/TaskFragment;->mForceTranslucent:Z

    .line 134
    .line 135
    or-int/lit8 p3, p3, 0x2

    .line 136
    .line 137
    :cond_7
    :goto_1
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    and-int/lit16 v0, v0, 0x100

    .line 142
    .line 143
    if-eqz v0, :cond_8

    .line 144
    .line 145
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getDragResizing()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setDragResizing(Z)V

    .line 150
    .line 151
    .line 152
    :cond_8
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getActivityWindowingMode()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-nez v4, :cond_b

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-ne v4, v1, :cond_b

    .line 167
    .line 168
    if-eq v0, v1, :cond_9

    .line 169
    .line 170
    if-nez v0, :cond_b

    .line 171
    .line 172
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v5, "Task and activity windowing modes match, so remove any timeout abort PiP callbacks scheduled if needed; task_win_mode="

    .line 175
    .line 176
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v5, ", activity_win_mode="

    .line 187
    .line 188
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    const-string v5, "WindowOrganizerController"

    .line 199
    .line 200
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 204
    .line 205
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 206
    .line 207
    iget-object v5, v4, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    .line 208
    .line 209
    if-nez v5, :cond_a

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_a
    iget-object v6, v4, Lcom/android/server/wm/RootWindowContainer;->mHandler:Lcom/android/server/wm/RootWindowContainer$MyHandler;

    .line 213
    .line 214
    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    .line 216
    .line 217
    const/4 v5, 0x0

    .line 218
    iput-object v5, v4, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    .line 219
    .line 220
    :cond_b
    :goto_2
    const/4 v4, -0x1

    .line 221
    if-le v0, v4, :cond_c

    .line 222
    .line 223
    new-instance v4, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda10;

    .line 224
    .line 225
    invoke-direct {v4, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda10;-><init>(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 229
    .line 230
    .line 231
    :cond_c
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getEnterPipBounds()Landroid/graphics/Rect;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    if-eqz v0, :cond_e

    .line 236
    .line 237
    iget-object v4, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 238
    .line 239
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 240
    .line 241
    iget-boolean v5, v4, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    .line 242
    .line 243
    if-nez v5, :cond_d

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_d
    iput-boolean v2, v4, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    .line 247
    .line 248
    new-instance v5, Landroid/graphics/Rect;

    .line 249
    .line 250
    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 251
    .line 252
    .line 253
    iput-object v5, v4, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    .line 254
    .line 255
    iget-object v0, v4, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 256
    .line 257
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-nez v0, :cond_e

    .line 264
    .line 265
    invoke-virtual {v4}, Lcom/android/server/wm/PinnedTaskController;->continueOrientationChange()V

    .line 266
    .line 267
    .line 268
    :cond_e
    :goto_3
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    if-ne p2, v1, :cond_10

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 275
    .line 276
    .line 277
    move-result p2

    .line 278
    if-nez p2, :cond_10

    .line 279
    .line 280
    invoke-virtual {p1, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    if-eqz p1, :cond_10

    .line 285
    .line 286
    iget-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 287
    .line 288
    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 289
    .line 290
    const-string v0, "applyTaskChanges"

    .line 291
    .line 292
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;ZZ)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_f

    .line 297
    .line 298
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 299
    .line 300
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 301
    .line 302
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityClientController;->requestPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    :cond_f
    if-nez v0, :cond_10

    .line 307
    .line 308
    iput-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 309
    .line 310
    :cond_10
    return p3

    .line 311
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    if-eqz v0, :cond_20

    .line 316
    .line 317
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iget-boolean v0, v0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 322
    .line 323
    if-eqz v0, :cond_20

    .line 324
    .line 325
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_12

    .line 334
    .line 335
    goto/16 :goto_a

    .line 336
    .line 337
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds0:Landroid/graphics/Rect;

    .line 338
    .line 339
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 344
    .line 345
    .line 346
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds1:Landroid/graphics/Rect;

    .line 347
    .line 348
    iget-object v4, p1, Lcom/android/server/wm/TaskFragment;->mRelativeEmbeddedBounds:Landroid/graphics/Rect;

    .line 349
    .line 350
    if-eqz v4, :cond_1f

    .line 351
    .line 352
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 353
    .line 354
    .line 355
    iput-boolean v2, p1, Lcom/android/server/wm/TaskFragment;->mDelayOrganizedTaskFragmentSurfaceUpdate:Z

    .line 356
    .line 357
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getRelativeBounds()Landroid/graphics/Rect;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    if-eqz v0, :cond_16

    .line 362
    .line 363
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    if-eqz v4, :cond_13

    .line 368
    .line 369
    goto :goto_4

    .line 370
    :cond_13
    new-array v4, v2, [I

    .line 371
    .line 372
    new-array v5, v2, [I

    .line 373
    .line 374
    new-instance v6, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;

    .line 375
    .line 376
    const/4 v7, 0x2

    .line 377
    invoke-direct {v6, v7, v4, v5}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p1, v6}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 381
    .line 382
    .line 383
    new-instance v6, Landroid/graphics/Point;

    .line 384
    .line 385
    aget v4, v4, v3

    .line 386
    .line 387
    aget v5, v5, v3

    .line 388
    .line 389
    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 393
    .line 394
    .line 395
    move-result v4

    .line 396
    iget v5, v6, Landroid/graphics/Point;->x:I

    .line 397
    .line 398
    if-lt v4, v5, :cond_14

    .line 399
    .line 400
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 401
    .line 402
    .line 403
    move-result v4

    .line 404
    iget v5, v6, Landroid/graphics/Point;->y:I

    .line 405
    .line 406
    if-ge v4, v5, :cond_15

    .line 407
    .line 408
    :cond_14
    new-instance v9, Ljava/lang/SecurityException;

    .line 409
    .line 410
    new-instance v4, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    const-string v5, "The requested relative bounds:"

    .line 413
    .line 414
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    const-string v5, " does not satisfy minimum dimensions:"

    .line 421
    .line 422
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    invoke-direct {v9, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    iget-object v5, p1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 436
    .line 437
    const/16 v8, 0x9

    .line 438
    .line 439
    move-object v4, p0

    .line 440
    move-object v6, p3

    .line 441
    move-object v7, p1

    .line 442
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 446
    .line 447
    .line 448
    :cond_15
    :goto_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 449
    .line 450
    .line 451
    move-result-object p3

    .line 452
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 453
    .line 454
    .line 455
    move-result-object p3

    .line 456
    invoke-virtual {p1, v0, p3}, Lcom/android/server/wm/TaskFragment;->translateRelativeBoundsToAbsoluteBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 457
    .line 458
    .line 459
    move-result-object p3

    .line 460
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 465
    .line 466
    invoke-virtual {v4, p3}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->setRelativeEmbeddedBounds(Landroid/graphics/Rect;)V

    .line 470
    .line 471
    .line 472
    :cond_16
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    .line 473
    .line 474
    .line 475
    move-result p3

    .line 476
    and-int/lit8 p3, p3, 0x8

    .line 477
    .line 478
    if-eqz p3, :cond_17

    .line 479
    .line 480
    const/4 p3, 0x4

    .line 481
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    invoke-virtual {p1, p3, v0}, Lcom/android/server/wm/TaskFragment;->setForceHidden(IZ)Z

    .line 486
    .line 487
    .line 488
    move-result p3

    .line 489
    if-eqz p3, :cond_17

    .line 490
    .line 491
    move p3, v1

    .line 492
    goto :goto_5

    .line 493
    :cond_17
    move p3, v3

    .line 494
    :goto_5
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    and-int/lit16 v0, v0, 0x80

    .line 499
    .line 500
    if-eqz v0, :cond_19

    .line 501
    .line 502
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getForceTranslucent()Z

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    iget-boolean v4, p1, Lcom/android/server/wm/TaskFragment;->mForceTranslucent:Z

    .line 507
    .line 508
    if-ne v4, v0, :cond_18

    .line 509
    .line 510
    move v0, v3

    .line 511
    goto :goto_6

    .line 512
    :cond_18
    iput-boolean v0, p1, Lcom/android/server/wm/TaskFragment;->mForceTranslucent:Z

    .line 513
    .line 514
    move v0, v2

    .line 515
    :goto_6
    if-eqz v0, :cond_19

    .line 516
    .line 517
    goto :goto_7

    .line 518
    :cond_19
    move v1, p3

    .line 519
    :goto_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    .line 520
    .line 521
    .line 522
    move-result p2

    .line 523
    or-int/2addr p2, v1

    .line 524
    iget-object p3, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds0:Landroid/graphics/Rect;

    .line 525
    .line 526
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds1:Landroid/graphics/Rect;

    .line 527
    .line 528
    iget-object v1, p1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 529
    .line 530
    if-eqz v1, :cond_1c

    .line 531
    .line 532
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->canStartChangeTransition()Z

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    if-nez v1, :cond_1a

    .line 537
    .line 538
    goto :goto_8

    .line 539
    :cond_1a
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 540
    .line 541
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    if-eqz v1, :cond_1b

    .line 546
    .line 547
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 552
    .line 553
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 562
    .line 563
    .line 564
    move-result v4

    .line 565
    if-ne v1, v4, :cond_1d

    .line 566
    .line 567
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 572
    .line 573
    .line 574
    move-result p3

    .line 575
    if-eq v0, p3, :cond_1c

    .line 576
    .line 577
    goto :goto_9

    .line 578
    :cond_1b
    iget-object p3, p1, Lcom/android/server/wm/TaskFragment;->mRelativeEmbeddedBounds:Landroid/graphics/Rect;

    .line 579
    .line 580
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    move-result p3

    .line 584
    xor-int/2addr v2, p3

    .line 585
    goto :goto_9

    .line 586
    :cond_1c
    :goto_8
    move v2, v3

    .line 587
    :cond_1d
    :goto_9
    if-eqz v2, :cond_1e

    .line 588
    .line 589
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTmpBounds0:Landroid/graphics/Rect;

    .line 590
    .line 591
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->initializeChangeTransition(Landroid/graphics/Rect;)V

    .line 592
    .line 593
    .line 594
    :cond_1e
    iput-boolean v3, p1, Lcom/android/server/wm/TaskFragment;->mDelayOrganizedTaskFragmentSurfaceUpdate:Z

    .line 595
    .line 596
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurface()V

    .line 597
    .line 598
    .line 599
    move v3, p2

    .line 600
    :goto_a
    return v3

    .line 601
    :cond_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 602
    .line 603
    const-string p1, "The TaskFragment is not embedded"

    .line 604
    .line 605
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    throw p0

    .line 609
    :cond_20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I

    .line 610
    .line 611
    .line 612
    move-result p0

    .line 613
    return p0
.end method

.method public final enforceTaskFragmentOrganized(Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/wm/TaskFragment;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-interface {p2}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 23
    .line 24
    invoke-interface {p0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p1, p0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string p1, "Permission Denial: applyTaskFragmentTransaction() from pid="

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, ", uid="

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, " trying to modify TaskFragment not belonging to the TaskFragmentOrganizer="

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string p1, "WindowOrganizerController"

    .line 74
    .line 75
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    new-instance p1, Ljava/lang/SecurityException;

    .line 79
    .line 80
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_1
    :goto_0
    return-void
.end method

.method public final finishAllTransitions(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransaction;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const-string v0, "finishAllTransitions()"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 17
    .line 18
    .line 19
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    :try_start_1
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction;->getTransferTransitionTokens()Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_4

    .line 30
    :cond_0
    move-object v4, v3

    .line 31
    :goto_0
    if-eqz p3, :cond_1

    .line 32
    .line 33
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction;->getMergedTransitionTokens()Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object p3, v3

    .line 39
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Landroid/os/IBinder;

    .line 54
    .line 55
    invoke-virtual {p0, v5, v3}, Lcom/android/server/wm/WindowOrganizerController;->finishTransitionInner(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->finishTransitionInner(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_3

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Landroid/os/IBinder;

    .line 77
    .line 78
    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/WindowOrganizerController;->finishTransitionInner(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    .line 88
    .line 89
    goto :goto_6

    .line 90
    :catchall_1
    move-exception p0

    .line 91
    goto :goto_5

    .line 92
    :goto_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 94
    .line 95
    .line 96
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 97
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_4
    :goto_6
    return-void
.end method

.method public final finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V
    .locals 9

    .line 1
    const-string v0, "finishTransition()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 7
    .line 8
    invoke-direct {v5}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v7

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 18
    .line 19
    .line 20
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    invoke-static {p1}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 28
    .line 29
    iput-object p1, v1, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    .line 30
    .line 31
    const/4 v3, -0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    move-object v1, p0

    .line 34
    move-object v2, p2

    .line 35
    move-object v6, p1

    .line 36
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Lcom/android/server/wm/TransitionController;->finishTransition(Lcom/android/server/wm/Transition;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    .line 51
    .line 52
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    .line 55
    .line 56
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_1
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 64
    .line 65
    .line 66
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 67
    :goto_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    throw p0
.end method

.method public final finishTransitionInner(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V
    .locals 6

    .line 1
    new-instance v4, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 2
    .line 3
    invoke-direct {v4}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 13
    .line 14
    iput-object p1, v0, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    move-object v0, p0

    .line 19
    move-object v1, p2

    .line 20
    move-object v5, p1

    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Lcom/android/server/wm/TransitionController;->finishTransition(Lcom/android/server/wm/Transition;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    .line 33
    .line 34
    return-void
.end method

.method public final getApplyToken()Landroid/os/IBinder;
    .locals 0

    .line 1
    const-string p0, "getApplyToken()"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/view/SurfaceControl$Transaction;->getDefaultApplyToken()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;
    .locals 1

    .line 1
    const-string v0, "getDisplayAreaOrganizerController()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 7
    .line 8
    return-object p0
.end method

.method public final getTaskFragmentOrganizerController()Landroid/window/ITaskFragmentOrganizerController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTaskOrganizerController()Landroid/window/ITaskOrganizerController;
    .locals 1

    .line 1
    const-string v0, "getTaskOrganizerController()"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 7
    .line 8
    return-object p0
.end method

.method public final getTransitionMetricsReporter()Landroid/window/ITransitionMetricsReporter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    .line 4
    .line 5
    return-object p0
.end method

.method public final isLockTaskModeViolation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;Z)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_3

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 12
    .line 13
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-nez p3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    :cond_1
    if-eqz p3, :cond_2

    .line 34
    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "Can\'t support the operation since in lock task mode violation.  Task: "

    .line 38
    .line 39
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p2, " Parent : "

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string p1, "WindowOrganizerController"

    .line 58
    .line 59
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_2
    return p3

    .line 63
    :cond_3
    :goto_0
    return v0
.end method

.method public final onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/window/IWindowOrganizerController$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const-string p1, "WindowOrganizerController"

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public final onTransactionReady(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    int-to-long v0, p2

    .line 9
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    const/4 v5, 0x1

    .line 20
    const/4 v6, 0x0

    .line 21
    const-wide v3, 0x5aed84692c233a99L    # 1.0230191066375382E130

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/window/IWindowContainerTransactionCallback;

    .line 40
    .line 41
    :try_start_0
    invoke-interface {v0, p2, p1}, Landroid/window/IWindowContainerTransactionCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "Failed to notify transaction ("

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, ") ready"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "WindowOrganizerController"

    .line 66
    .line 67
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "registerTransitionPlayer()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 20
    .line 21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 22
    .line 23
    .line 24
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 26
    .line 27
    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 32
    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TransitionController;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;Lcom/android/server/wm/WindowProcessController;)V

    .line 34
    .line 35
    .line 36
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 49
    .line 50
    .line 51
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 52
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final reparentChildrenTasksHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/Transition;IZZ)I
    .locals 18

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move-object/from16 v11, p2

    .line 6
    .line 7
    move/from16 v12, p3

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 41
    :goto_1
    if-nez v0, :cond_3

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v2, "reparentChildrenTasksHierarchyOp: "

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_3
    :goto_2
    if-nez v0, :cond_5

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :cond_4
    :goto_3
    move-object v14, v0

    .line 82
    move-object v15, v1

    .line 83
    goto :goto_4

    .line 84
    :cond_5
    if-nez v1, :cond_4

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    goto :goto_3

    .line 99
    :goto_4
    const-string v0, "WindowOrganizerController"

    .line 100
    .line 101
    const/4 v8, 0x0

    .line 102
    if-ne v14, v15, :cond_6

    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string/jumbo v2, "reparentChildrenTasksHierarchyOp parent not changing: "

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    return v8

    .line 123
    :cond_6
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    const-string v2, " hop="

    .line 128
    .line 129
    if-nez v1, :cond_7

    .line 130
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string/jumbo v3, "reparentChildrenTasksHierarchyOp currentParent detached="

    .line 134
    .line 135
    .line 136
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    return v8

    .line 156
    :cond_7
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_8

    .line 161
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string/jumbo v3, "reparentChildrenTasksHierarchyOp newParent detached="

    .line 165
    .line 166
    .line 167
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    return v8

    .line 187
    :cond_8
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_9

    .line 192
    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string/jumbo v3, "reparentChildrenTasksHierarchyOp newParent in PIP="

    .line 196
    .line 197
    .line 198
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    return v8

    .line 218
    :cond_9
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    if-eqz v1, :cond_a

    .line 227
    .line 228
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    :goto_5
    move-object v4, v1

    .line 237
    goto :goto_6

    .line 238
    :cond_a
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    goto :goto_5

    .line 243
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    const-string/jumbo v5, "reparentChildrenTasksHierarchyOp currentParent="

    .line 246
    .line 247
    .line 248
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v5, " newParent="

    .line 255
    .line 256
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    new-instance v7, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .line 279
    .line 280
    new-instance v6, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;

    .line 281
    .line 282
    move-object v0, v6

    .line 283
    move-object/from16 v1, p0

    .line 284
    .line 285
    move-object v2, v14

    .line 286
    move-object/from16 v5, p1

    .line 287
    .line 288
    move-object v13, v6

    .line 289
    move-object v6, v15

    .line 290
    move-object/from16 v17, v7

    .line 291
    .line 292
    move/from16 v7, p4

    .line 293
    .line 294
    move v10, v8

    .line 295
    move-object/from16 v8, v17

    .line 296
    .line 297
    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/WindowContainer;ZLjava/util/ArrayList;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v14, v13}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    .line 301
    .line 302
    .line 303
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    move v8, v10

    .line 308
    const/4 v13, 0x0

    .line 309
    const/16 v16, 0x0

    .line 310
    .line 311
    :goto_7
    if-ge v8, v0, :cond_16

    .line 312
    .line 313
    move-object/from16 v1, v17

    .line 314
    .line 315
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    check-cast v2, Lcom/android/server/wm/Task;

    .line 320
    .line 321
    if-ltz v12, :cond_b

    .line 322
    .line 323
    invoke-virtual {v9, v12, v2}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 324
    .line 325
    .line 326
    :cond_b
    if-eqz v11, :cond_c

    .line 327
    .line 328
    invoke-virtual {v11, v2, v10}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 329
    .line 330
    .line 331
    :cond_c
    instance-of v3, v15, Lcom/android/server/wm/TaskDisplayArea;

    .line 332
    .line 333
    if-eqz v3, :cond_12

    .line 334
    .line 335
    const/4 v3, 0x1

    .line 336
    if-nez v13, :cond_d

    .line 337
    .line 338
    move-object v4, v15

    .line 339
    check-cast v4, Lcom/android/server/wm/TaskDisplayArea;

    .line 340
    .line 341
    invoke-virtual {v4, v3, v10}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 342
    .line 343
    .line 344
    move-result-object v13

    .line 345
    :cond_d
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_TASK_ORDERING:Z

    .line 346
    .line 347
    if-eqz v4, :cond_f

    .line 348
    .line 349
    if-eqz v13, :cond_f

    .line 350
    .line 351
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    if-eqz v4, :cond_f

    .line 356
    .line 357
    invoke-virtual {v13, v10}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    if-eqz v4, :cond_f

    .line 362
    .line 363
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 364
    .line 365
    invoke-virtual {v4}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 370
    .line 371
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    .line 372
    .line 373
    .line 374
    move-result v4

    .line 375
    if-nez v4, :cond_e

    .line 376
    .line 377
    goto :goto_8

    .line 378
    :cond_e
    move v4, v10

    .line 379
    goto :goto_9

    .line 380
    :cond_f
    :goto_8
    move v4, v3

    .line 381
    :goto_9
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    if-eqz v5, :cond_10

    .line 386
    .line 387
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    if-eqz v6, :cond_10

    .line 392
    .line 393
    if-eq v5, v13, :cond_10

    .line 394
    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    .line 396
    .line 397
    .line 398
    move-result v6

    .line 399
    if-eqz v6, :cond_10

    .line 400
    .line 401
    if-eqz v4, :cond_10

    .line 402
    .line 403
    move-object v4, v15

    .line 404
    check-cast v4, Lcom/android/server/wm/TaskDisplayArea;

    .line 405
    .line 406
    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 407
    .line 408
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    add-int/2addr v4, v8

    .line 413
    add-int/2addr v4, v3

    .line 414
    invoke-virtual {v2, v15, v4}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 415
    .line 416
    .line 417
    goto :goto_a

    .line 418
    :cond_10
    move-object v3, v15

    .line 419
    check-cast v3, Lcom/android/server/wm/TaskDisplayArea;

    .line 420
    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 426
    .line 427
    .line 428
    :cond_11
    :goto_a
    move-object/from16 v2, v16

    .line 429
    .line 430
    goto :goto_c

    .line 431
    :cond_12
    move-object v3, v15

    .line 432
    check-cast v3, Lcom/android/server/wm/Task;

    .line 433
    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    .line 435
    .line 436
    .line 437
    move-result v4

    .line 438
    if-eqz v4, :cond_13

    .line 439
    .line 440
    const v4, 0x7fffffff

    .line 441
    .line 442
    .line 443
    goto :goto_b

    .line 444
    :cond_13
    const/high16 v4, -0x80000000

    .line 445
    .line 446
    :goto_b
    const-string/jumbo v5, "processChildrenTaskReparentHierarchyOp"

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2, v4, v3, v5, v10}, Lcom/android/server/wm/Task;->reparent(ILcom/android/server/wm/Task;Ljava/lang/String;Z)V

    .line 450
    .line 451
    .line 452
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    .line 453
    .line 454
    .line 455
    move-result v3

    .line 456
    if-eqz v3, :cond_11

    .line 457
    .line 458
    if-eqz p5, :cond_11

    .line 459
    .line 460
    :goto_c
    if-eqz v2, :cond_15

    .line 461
    .line 462
    iget-object v3, v9, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 463
    .line 464
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 465
    .line 466
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 467
    .line 468
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    if-eqz v4, :cond_14

    .line 476
    .line 477
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    .line 482
    .line 483
    .line 484
    move-result v4

    .line 485
    goto :goto_d

    .line 486
    :cond_14
    move v4, v10

    .line 487
    :goto_d
    const/high16 v5, 0x800000

    .line 488
    .line 489
    and-int/2addr v4, v5

    .line 490
    if-ne v4, v5, :cond_15

    .line 491
    .line 492
    iget-object v4, v3, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 493
    .line 494
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v4

    .line 498
    if-eqz v4, :cond_15

    .line 499
    .line 500
    iget-object v4, v3, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 501
    .line 502
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    check-cast v4, Lcom/android/server/wm/Task;

    .line 507
    .line 508
    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    .line 509
    .line 510
    iget v5, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 511
    .line 512
    if-eq v4, v5, :cond_15

    .line 513
    .line 514
    iget-object v4, v3, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 515
    .line 516
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    iget-object v3, v3, Lcom/android/server/wm/RecentTasks;->mTasks:Ljava/util/ArrayList;

    .line 520
    .line 521
    invoke-virtual {v3, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 522
    .line 523
    .line 524
    :cond_15
    add-int/lit8 v8, v8, 0x1

    .line 525
    .line 526
    move-object/from16 v17, v1

    .line 527
    .line 528
    move-object/from16 v16, v2

    .line 529
    .line 530
    goto/16 :goto_7

    .line 531
    .line 532
    :cond_16
    if-eqz v11, :cond_17

    .line 533
    .line 534
    invoke-virtual {v11, v15, v10}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 535
    .line 536
    .line 537
    :cond_17
    const/4 v0, 0x2

    .line 538
    return v0
.end method

.method public final sanitizeAndApplyHierarchyOp(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_14

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "WindowOrganizerController"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p2, "Container is no longer attached: "

    .line 19
    .line 20
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return v2

    .line 34
    :cond_0
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/high16 v4, -0x80000000

    .line 39
    .line 40
    const v5, 0x7fffffff

    .line 41
    .line 42
    .line 43
    if-eqz v3, :cond_d

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    iget-boolean p0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 60
    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 65
    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v0, "Reparenting leaf Tasks is not supported now. "

    .line 69
    .line 70
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    if-nez p0, :cond_3

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    :goto_1
    if-nez p0, :cond_4

    .line 104
    .line 105
    const-string p0, "Can\'t resolve parent window from token"

    .line 106
    .line 107
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    return v2

    .line 111
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eq v0, p0, :cond_a

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_3

    .line 135
    .line 136
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-eqz v0, :cond_9

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_7

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_7

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    const-string v3, " task="

    .line 159
    .line 160
    if-eqz v0, :cond_6

    .line 161
    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v0, "Can\'t support moving a task to another PIP window... newParent="

    .line 165
    .line 166
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    return v2

    .line 186
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-nez v0, :cond_7

    .line 199
    .line 200
    new-instance p2, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v0, "Can\'t support task that doesn\'t support multi-window mode in multi-window mode... newParent="

    .line 203
    .line 204
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    return v2

    .line 224
    :cond_7
    check-cast p0, Lcom/android/server/wm/Task;

    .line 225
    .line 226
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    if-eqz p2, :cond_8

    .line 231
    .line 232
    move v4, v5

    .line 233
    :cond_8
    const-string/jumbo p2, "sanitizeAndApplyHierarchyOp"

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v4, p0, p2, v2}, Lcom/android/server/wm/Task;->reparent(ILcom/android/server/wm/Task;Ljava/lang/String;Z)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_3

    .line 240
    .line 241
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 242
    .line 243
    new-instance p2, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    const-string v0, "Can only reparent task to another task or taskDisplayArea, but not "

    .line 246
    .line 247
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw p1

    .line 261
    :cond_a
    instance-of v0, p0, Lcom/android/server/wm/TaskDisplayArea;

    .line 262
    .line 263
    if-nez v0, :cond_b

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    :goto_2
    check-cast p0, Lcom/android/server/wm/Task;

    .line 271
    .line 272
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    .line 277
    .line 278
    .line 279
    move-result p2

    .line 280
    if-eqz p2, :cond_c

    .line 281
    .line 282
    move v4, v5

    .line 283
    :cond_c
    invoke-virtual {p1, v4, p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_3

    .line 287
    .line 288
    :cond_d
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    const/4 v3, 0x0

    .line 293
    if-eqz v1, :cond_e

    .line 294
    .line 295
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_e

    .line 300
    .line 301
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-static {v1}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-static {v1, p1, v3, v3}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 314
    .line 315
    .line 316
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    if-eqz v6, :cond_f

    .line 325
    .line 326
    move v4, v5

    .line 327
    :cond_f
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->includingParents()Z

    .line 328
    .line 329
    .line 330
    move-result v5

    .line 331
    invoke-virtual {v1, v4, p1, v5}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    .line 339
    .line 340
    if-eqz v4, :cond_11

    .line 341
    .line 342
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 343
    .line 344
    if-eqz v0, :cond_11

    .line 345
    .line 346
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mIsFlexPanel:Z

    .line 347
    .line 348
    if-eqz v0, :cond_11

    .line 349
    .line 350
    if-eqz v1, :cond_11

    .line 351
    .line 352
    iget-object v0, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 353
    .line 354
    iget-object v4, v1, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    .line 355
    .line 356
    if-eqz v4, :cond_10

    .line 357
    .line 358
    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    :cond_10
    if-eqz v0, :cond_11

    .line 363
    .line 364
    if-eqz v3, :cond_11

    .line 365
    .line 366
    iget-boolean v2, v3, Lcom/android/server/wm/ActivityRecord;->mIsFlexPanel:Z

    .line 367
    .line 368
    if-eqz v2, :cond_11

    .line 369
    .line 370
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 371
    .line 372
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 373
    .line 374
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(I)V

    .line 375
    .line 376
    .line 377
    :cond_11
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    .line 378
    .line 379
    .line 380
    move-result p2

    .line 381
    if-eqz p2, :cond_13

    .line 382
    .line 383
    if-eqz v1, :cond_13

    .line 384
    .line 385
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 386
    .line 387
    .line 388
    move-result p2

    .line 389
    if-eqz p2, :cond_13

    .line 390
    .line 391
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 392
    .line 393
    .line 394
    move-result p2

    .line 395
    invoke-virtual {v1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    .line 396
    .line 397
    .line 398
    move-result-object p2

    .line 399
    if-eqz p2, :cond_13

    .line 400
    .line 401
    iget-object p2, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 402
    .line 403
    iget-object p2, p2, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    .line 404
    .line 405
    if-eqz p2, :cond_12

    .line 406
    .line 407
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-virtual {p2, v0}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    .line 412
    .line 413
    .line 414
    move-result p2

    .line 415
    if-eqz p2, :cond_12

    .line 416
    .line 417
    goto :goto_3

    .line 418
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 419
    .line 420
    .line 421
    move-result p1

    .line 422
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInStageType(I)Lcom/android/server/wm/Task;

    .line 423
    .line 424
    .line 425
    move-result-object p1

    .line 426
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 427
    .line 428
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 429
    .line 430
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(I)V

    .line 431
    .line 432
    .line 433
    :cond_13
    :goto_3
    const/4 p0, 0x2

    .line 434
    return p0

    .line 435
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 436
    .line 437
    const-string p1, "Invalid container in hierarchy op"

    .line 438
    .line 439
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw p0
.end method

.method public final sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V
    .locals 13

    .line 1
    move-object v2, p1

    .line 2
    move-object/from16 v3, p3

    .line 3
    .line 4
    if-eqz v2, :cond_1

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-object v11, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-boolean v0, v3, Lcom/android/server/wm/TaskFragment;->mTaskFragmentVanishedSent:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v11, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->validateAndGetState(Landroid/window/ITaskFragmentOrganizer;)Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 22
    .line 23
    .line 24
    const-string v0, "TaskFragmentOrganizerController"

    .line 25
    .line 26
    const-string/jumbo v1, "onTaskFragmentError "

    .line 27
    .line 28
    .line 29
    move-object/from16 v6, p5

    .line 30
    .line 31
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    new-instance v12, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v1, 0x4

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x0

    .line 41
    move-object v0, v12

    .line 42
    move-object v2, p1

    .line 43
    move-object/from16 v3, p3

    .line 44
    .line 45
    move-object v5, p2

    .line 46
    move-object/from16 v6, p5

    .line 47
    .line 48
    move/from16 v10, p4

    .line 49
    .line 50
    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;-><init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v11, v12}, Lcom/android/server/wm/TaskFragmentOrganizerController;->addPendingEvent(Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v11, Lcom/android/server/wm/TaskFragmentOrganizerController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string v1, "Not allowed to operate with invalid organizer"

    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0
.end method

.method public final setAllReadyIfNeeded(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x5

    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-ge v0, v1, :cond_4

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const/16 v3, 0x11

    .line 69
    .line 70
    if-ne v2, v3, :cond_3

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroid/window/TaskFragmentOperation;->getOpType()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentOperation()Landroid/window/TaskFragmentOperation;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/window/TaskFragmentOperation;->getTaskFragmentCreationParams()Landroid/window/TaskFragmentCreationParams;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 96
    .line 97
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lcom/android/server/wm/TaskFragment;

    .line 102
    .line 103
    if-eqz v1, :cond_3

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isReadyToTransit()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_3

    .line 110
    .line 111
    return-void

    .line 112
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->setAllReady()V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public setSyncReady(I)V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    int-to-long v2, p1

    .line 9
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v9

    .line 19
    const-wide v5, 0x603e95f9b0c32d8L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const/4 v7, 0x1

    .line 25
    const/4 v8, 0x0

    .line 26
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 34
    .line 35
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final startLegacyTransition(ILandroid/view/RemoteAnimationAdapter;Landroid/window/IWindowContainerTransactionCallback;Landroid/window/WindowContainerTransaction;)I
    .locals 9

    .line 1
    const-string/jumbo v0, "startLegacyTransition()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    .line 8
    .line 9
    invoke-direct {v5}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v7

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 17
    .line 18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 19
    .line 20
    .line 21
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    if-ltz p1, :cond_2

    .line 23
    .line 24
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 51
    .line 52
    .line 53
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    const/4 p0, -0x1

    .line 57
    return p0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    :try_start_2
    iget v3, v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    .line 61
    .line 62
    iget v4, v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    .line 63
    .line 64
    invoke-virtual {p2, v3, v4}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 68
    .line 69
    .line 70
    iget-object p1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;ZZ)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowOrganizerController;->startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const/4 v6, 0x0

    .line 81
    const/4 v4, 0x0

    .line 82
    move-object v1, p0

    .line 83
    move-object v2, p4

    .line 84
    move v3, p1

    .line 85
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    .line 89
    .line 90
    .line 91
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    .line 94
    .line 95
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    .line 97
    .line 98
    return p1

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    :try_start_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    const-string p1, "Can\'t use legacy transitions in when shell transitions are enabled."

    .line 104
    .line 105
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    const-string p1, "Can\'t create transition with no type"

    .line 112
    .line 113
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 119
    .line 120
    .line 121
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 122
    :goto_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    .line 124
    .line 125
    throw p0
.end method

.method public final startNewTransition(ILandroid/window/WindowContainerTransaction;)Landroid/os/IBinder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/WindowOrganizerController;->startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Lcom/android/server/wm/Transition$Token;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 11
    .line 12
    iget v2, v0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    .line 13
    .line 14
    add-int/lit8 v3, v2, 0x1

    .line 15
    .line 16
    iput v3, v0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    .line 17
    .line 18
    const-string v3, "Organizer"

    .line 19
    .line 20
    invoke-direct {v1, v0, p0, v2, v3}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;-><init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    .line 24
    .line 25
    iget v2, v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 39
    .line 40
    const-wide/16 v3, 0x1388

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, v1, v3, v4, p1}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V

    .line 44
    .line 45
    .line 46
    return v2
.end method

.method public final startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Lcom/android/server/wm/Transition$Token;
    .locals 10

    .line 2
    const-string/jumbo v0, "startTransition()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3
    new-instance v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v5}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-static {p2}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object p2

    .line 7
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v1

    const/4 v7, 0x0

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    .line 8
    const-string p1, "WindowOrganizerController"

    const-string p2, "Using shell transitions API for legacy transitions."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    .line 9
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)I

    .line 10
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v7

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 12
    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t use legacy transitions in compatibility mode with no WCT."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p3, :cond_2

    move-object v4, p3

    goto :goto_0

    .line 13
    :cond_2
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    move-object v4, v1

    :goto_0
    if-nez p2, :cond_6

    if-ltz p1, :cond_5

    .line 14
    new-instance v6, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string/jumbo p2, "start WCT applied"

    invoke-direct {v6, p2}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_4

    .line 15
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction;->avoidReady()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    const/4 p3, 0x1

    move v7, p3

    goto :goto_1

    :cond_4
    move v7, p2

    .line 17
    :goto_1
    new-instance p3, Lcom/android/server/wm/Transition;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {p3, p1, p2, v1, v2}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 18
    iget-object p1, p3, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {p1, v6}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    .line 19
    invoke-virtual {p3, v4}, Lcom/android/server/wm/Transition;->calcParallelCollectType(Landroid/window/WindowContainerTransaction;)V

    .line 20
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    new-instance p2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;Z)V

    invoke-virtual {p1, p3, p2}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    .line 21
    iget-object p0, p3, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    .line 22
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :goto_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 24
    :cond_5
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t create transition with no type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-eqz p3, :cond_7

    .line 25
    new-instance p1, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string/jumbo p3, "start WCT applied"

    invoke-direct {p1, p3}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object p3, p2, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    goto :goto_3

    :cond_7
    move-object p1, v7

    .line 27
    :goto_3
    invoke-virtual {p2}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result p3

    if-nez p3, :cond_9

    .line 28
    iget-boolean p3, p2, Lcom/android/server/wm/Transition;->mForcePlaying:Z

    if-nez p3, :cond_9

    .line 29
    const-string p3, "WindowOrganizerController"

    const-string v1, "Trying to start a transition that isn\'t collecting. This probably means Shell took too long to respond to a request. WM State may be incorrect now, please file a bug"

    invoke-static {p3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    const/4 p3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v4

    move-object v4, p3

    .line 30
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)I

    if-eqz p1, :cond_8

    .line 31
    invoke-virtual {p1}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 32
    :cond_8
    iget-object p0, p2, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    .line 33
    monitor-exit v0

    goto :goto_2

    .line 34
    :cond_9
    iget-object p3, p2, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iput-object v4, p3, Lcom/android/server/wm/TransitionController$Logger;->mStartWCT:Landroid/window/WindowContainerTransaction;

    .line 35
    invoke-virtual {p2}, Lcom/android/server/wm/Transition;->shouldApplyOnDisplayThread()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 36
    iget-object p3, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v7, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition$ReadyCondition;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 37
    :cond_a
    invoke-virtual {p2}, Lcom/android/server/wm/Transition;->start()V

    const/4 v6, 0x0

    const/4 v3, -0x1

    move-object v1, p0

    move-object v2, v4

    move-object v4, p2

    .line 38
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)I

    if-eqz p1, :cond_b

    .line 39
    invoke-virtual {p1}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 40
    :cond_b
    :goto_4
    iget-object p0, p2, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    .line 41
    monitor-exit v0

    goto :goto_2

    .line 42
    :goto_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 43
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    throw p0
.end method

.method public final startTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Lcom/android/server/wm/Transition$Token;

    return-void
.end method

.method public final unregisterTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "unregisterTransitionPlayer()"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->unregisterTransitionPlayer(Landroid/window/ITransitionPlayer;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p0

    .line 33
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 38
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final validateTaskFragment(Lcom/android/server/wm/TaskFragment;ILandroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    if-ne p2, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, v2, v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v1, "Not allowed to apply operation on PIP TaskFragment"

    .line 29
    .line 30
    invoke-direct {v8, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v3, p0

    .line 34
    move-object v4, p4

    .line 35
    move-object v5, p3

    .line 36
    move-object v6, p1

    .line 37
    move v7, p2

    .line 38
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    return v0

    .line 42
    :cond_2
    return v2

    .line 43
    :cond_3
    :goto_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string v1, "Not allowed to apply operation on invalid fragment tokens opType="

    .line 46
    .line 47
    invoke-static {p2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v7, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    move-object v2, p0

    .line 55
    move-object v3, p4

    .line 56
    move-object v4, p3

    .line 57
    move-object v5, p1

    .line 58
    move v6, p2

    .line 59
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    return v0
.end method

.method public final waitAsyncStart(Ljava/util/function/IntSupplier;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    filled-new-array {v0}, [Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 30
    .line 31
    :goto_0
    new-instance v2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda18;

    .line 32
    .line 33
    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/WindowOrganizerController;[Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    :catch_0
    :goto_1
    const/4 p1, 0x0

    .line 40
    aget-object p1, v0, p1

    .line 41
    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0
.end method
