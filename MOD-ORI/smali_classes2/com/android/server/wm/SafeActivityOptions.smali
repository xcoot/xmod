.class public final Lcom/android/server/wm/SafeActivityOptions;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCallerOptions:Landroid/app/ActivityOptions;

.field public final mOriginalCallingPid:I

.field public final mOriginalCallingUid:I

.field public final mOriginalOptions:Landroid/app/ActivityOptions;

.field public mRealCallingPid:I

.field public mRealCallingUid:I

.field public mShouldCheckFreeform:Z


# direct methods
.method public constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mShouldCheckFreeform:Z

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    .line 5
    iput-object p1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityOptions;II)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mShouldCheckFreeform:Z

    .line 8
    iput p2, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    .line 9
    iput p3, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    .line 10
    iput-object p1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    return-void
.end method

.method public static abort(Lcom/android/server/wm/SafeActivityOptions;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-static {p0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public static cloneLaunchingOptions(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchTaskDisplayArea(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getCallerDisplayId()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setCallerDisplayId(I)Landroid/app/ActivityOptions;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchRootTask(Landroid/window/WindowContainerToken;)Landroid/app/ActivityOptions;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->setRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :goto_0
    return-object p0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/wm/SafeActivityOptions;

    .line 4
    .line 5
    invoke-static {p0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return-object v0
.end method

.method public static getIntentString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p0, "(no intent)"

    .line 9
    .line 10
    :goto_0
    return-object p0
.end method

.method public static isAssistant(ILcom/android/server/wm/ActivityTaskManagerService;)Z
    .locals 5

    .line 1
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const-wide/32 v3, 0x10000000

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, p1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    .line 23
    .line 24
    .line 25
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-ne p1, p0, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :catch_0
    :cond_1
    return v0
.end method


# virtual methods
.method public final checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;II)V
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move/from16 v9, p6

    .line 8
    .line 9
    move/from16 v10, p7

    .line 10
    .line 11
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const-string v11, " (pid="

    .line 16
    .line 17
    const-string v12, " from "

    .line 18
    .line 19
    const-string v13, "Permission Denial: starting "

    .line 20
    .line 21
    const-string v14, "ActivityTaskManager"

    .line 22
    .line 23
    const-string v15, ", uid="

    .line 24
    .line 25
    const/4 v8, -0x1

    .line 26
    if-ne v3, v8, :cond_1

    .line 27
    .line 28
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getDisableStartingWindow()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v0, v8

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 38
    .line 39
    iget v3, v3, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 40
    .line 41
    invoke-static {v10, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_0

    .line 46
    .line 47
    sget-object v3, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    .line 48
    .line 49
    const-string v5, "android.permission.START_TASKS_FROM_RECENTS"

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, -0x1

    .line 53
    const/16 v16, 0x1

    .line 54
    .line 55
    move/from16 v3, p6

    .line 56
    .line 57
    move/from16 v4, p7

    .line 58
    .line 59
    move v0, v8

    .line 60
    move/from16 v8, v16

    .line 61
    .line 62
    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eq v3, v0, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, ") with launchTaskId="

    .line 91
    .line 92
    invoke-static {v9, v10, v15, v1, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    new-instance v1, Ljava/lang/SecurityException;

    .line 110
    .line 111
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v1

    .line 115
    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 122
    .line 123
    iget v3, v3, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 124
    .line 125
    invoke-static {v10, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-nez v3, :cond_3

    .line 130
    .line 131
    sget-object v3, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    .line 132
    .line 133
    const-string v5, "android.permission.MANAGE_ACTIVITY_TASKS"

    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    const/4 v7, -0x1

    .line 137
    const/4 v8, 0x1

    .line 138
    move/from16 v3, p6

    .line 139
    .line 140
    move/from16 v4, p7

    .line 141
    .line 142
    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eq v3, v0, :cond_4

    .line 147
    .line 148
    :cond_3
    move-object/from16 v3, p0

    .line 149
    .line 150
    move-object/from16 v8, p5

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v2, "Permission Denial: starting transient launch from "

    .line 156
    .line 157
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v1, ", pid="

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    new-instance v1, Ljava/lang/SecurityException;

    .line 185
    .line 186
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw v1

    .line 190
    :goto_2
    invoke-virtual {v3, v8, v2}, Lcom/android/server/wm/SafeActivityOptions;->getLaunchTaskDisplayArea(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/TaskDisplayArea;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    move v4, v0

    .line 195
    move-object/from16 v0, p2

    .line 196
    .line 197
    if-eqz v0, :cond_6

    .line 198
    .line 199
    if-eqz v3, :cond_6

    .line 200
    .line 201
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    iget-object v5, v3, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 205
    .line 206
    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 207
    .line 208
    invoke-virtual {v2, v9, v10, v5, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-eqz v5, :cond_5

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v1, ") with launchTaskDisplayArea="

    .line 237
    .line 238
    invoke-static {v9, v10, v15, v1, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    new-instance v1, Ljava/lang/SecurityException;

    .line 252
    .line 253
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v1

    .line 257
    :cond_6
    :goto_3
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-eqz v0, :cond_8

    .line 262
    .line 263
    if-eq v3, v4, :cond_8

    .line 264
    .line 265
    invoke-virtual {v2, v9, v10, v3, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-eqz v4, :cond_7

    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v1, ") with launchDisplayId="

    .line 294
    .line 295
    invoke-static {v9, v10, v15, v1, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    new-instance v1, Ljava/lang/SecurityException;

    .line 309
    .line 310
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw v1

    .line 314
    :cond_8
    :goto_4
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLockTaskMode()Z

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    if-eqz v0, :cond_a

    .line 319
    .line 320
    if-eqz v3, :cond_a

    .line 321
    .line 322
    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 323
    .line 324
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 325
    .line 326
    invoke-static/range {p7 .. p7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 331
    .line 332
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/LockTaskController;->isPackageAllowlisted(ILjava/lang/String;)Z

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    if-eqz v3, :cond_9

    .line 337
    .line 338
    goto :goto_5

    .line 339
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string v1, ") with lockTaskMode=true"

    .line 361
    .line 362
    invoke-static {v9, v10, v15, v1, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    new-instance v1, Ljava/lang/SecurityException;

    .line 370
    .line 371
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    throw v1

    .line 375
    :cond_a
    :goto_5
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getOverrideTaskTransition()Z

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    if-eqz v0, :cond_c

    .line 380
    .line 381
    if-eqz v3, :cond_c

    .line 382
    .line 383
    sget-object v3, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    .line 384
    .line 385
    const-string v5, "android.permission.START_TASKS_FROM_RECENTS"

    .line 386
    .line 387
    const/4 v6, 0x0

    .line 388
    const/4 v7, -0x1

    .line 389
    const/16 v16, 0x1

    .line 390
    .line 391
    move/from16 v3, p6

    .line 392
    .line 393
    move/from16 v4, p7

    .line 394
    .line 395
    move/from16 v8, v16

    .line 396
    .line 397
    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    if-eqz v3, :cond_c

    .line 402
    .line 403
    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 404
    .line 405
    invoke-static {v10, v3}, Lcom/android/server/wm/SafeActivityOptions;->isAssistant(ILcom/android/server/wm/ActivityTaskManagerService;)Z

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    if-eqz v3, :cond_b

    .line 410
    .line 411
    goto :goto_6

    .line 412
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    const-string v1, ") with overrideTaskTransition=true"

    .line 434
    .line 435
    invoke-static {v9, v10, v15, v1, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .line 441
    .line 442
    new-instance v1, Ljava/lang/SecurityException;

    .line 443
    .line 444
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    throw v1

    .line 448
    :cond_c
    :goto_6
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getDismissKeyguardIfInsecure()Z

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    if-eqz v0, :cond_e

    .line 453
    .line 454
    if-eqz v3, :cond_e

    .line 455
    .line 456
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    .line 457
    .line 458
    const-string v5, "android.permission.CONTROL_KEYGUARD"

    .line 459
    .line 460
    const/4 v6, 0x0

    .line 461
    const/4 v7, -0x1

    .line 462
    const/4 v8, 0x1

    .line 463
    move/from16 v3, p6

    .line 464
    .line 465
    move/from16 v4, p7

    .line 466
    .line 467
    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    if-nez v0, :cond_d

    .line 472
    .line 473
    goto :goto_7

    .line 474
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 475
    .line 476
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    const-string v1, ") with dismissKeyguardIfInsecure=true"

    .line 496
    .line 497
    invoke-static {v9, v10, v15, v1, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .line 503
    .line 504
    new-instance v1, Ljava/lang/SecurityException;

    .line 505
    .line 506
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    throw v1

    .line 510
    :cond_e
    :goto_7
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    if-eqz v0, :cond_10

    .line 515
    .line 516
    iget-object v0, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 517
    .line 518
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    .line 519
    .line 520
    const-string v5, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    .line 521
    .line 522
    const/4 v6, 0x0

    .line 523
    const/4 v7, -0x1

    .line 524
    const/4 v8, 0x1

    .line 525
    move/from16 v3, p6

    .line 526
    .line 527
    move/from16 v4, p7

    .line 528
    .line 529
    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    if-nez v0, :cond_f

    .line 534
    .line 535
    goto :goto_8

    .line 536
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    const-string v1, ") with remoteAnimationAdapter"

    .line 558
    .line 559
    invoke-static {v9, v10, v15, v1, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    new-instance v1, Ljava/lang/SecurityException;

    .line 567
    .line 568
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    throw v1

    .line 572
    :cond_10
    :goto_8
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    if-eqz v0, :cond_12

    .line 577
    .line 578
    iget-object v0, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 579
    .line 580
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    .line 581
    .line 582
    const-string v5, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    .line 583
    .line 584
    const/4 v6, 0x0

    .line 585
    const/4 v7, -0x1

    .line 586
    const/4 v8, 0x1

    .line 587
    move/from16 v3, p6

    .line 588
    .line 589
    move/from16 v4, p7

    .line 590
    .line 591
    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    if-nez v0, :cond_11

    .line 596
    .line 597
    goto :goto_9

    .line 598
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 599
    .line 600
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    const-string v1, ") with remoteTransition"

    .line 620
    .line 621
    invoke-static {v9, v10, v15, v1, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    .line 627
    .line 628
    new-instance v1, Ljava/lang/SecurityException;

    .line 629
    .line 630
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    throw v1

    .line 634
    :cond_12
    :goto_9
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchedFromBubble()Z

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    const/16 v8, 0x3e8

    .line 639
    .line 640
    if-eqz v0, :cond_15

    .line 641
    .line 642
    if-ne v10, v8, :cond_13

    .line 643
    .line 644
    goto :goto_a

    .line 645
    :cond_13
    sget-object v0, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    .line 646
    .line 647
    const/4 v7, -0x1

    .line 648
    const/4 v0, 0x1

    .line 649
    const-string v5, "android.permission.STATUS_BAR_SERVICE"

    .line 650
    .line 651
    const/4 v6, 0x0

    .line 652
    move/from16 v3, p6

    .line 653
    .line 654
    move/from16 v4, p7

    .line 655
    .line 656
    move v2, v8

    .line 657
    move v8, v0

    .line 658
    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    if-nez v0, :cond_14

    .line 663
    .line 664
    goto :goto_b

    .line 665
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 666
    .line 667
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v2

    .line 674
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    const-string v1, ") with launchedFromBubble=true"

    .line 687
    .line 688
    invoke-static {v9, v10, v15, v1, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    .line 694
    .line 695
    new-instance v1, Ljava/lang/SecurityException;

    .line 696
    .line 697
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    throw v1

    .line 701
    :cond_15
    :goto_a
    move v2, v8

    .line 702
    :goto_b
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    .line 703
    .line 704
    .line 705
    move-result v0

    .line 706
    if-eqz v0, :cond_19

    .line 707
    .line 708
    if-ne v10, v2, :cond_16

    .line 709
    .line 710
    goto :goto_c

    .line 711
    :cond_16
    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    .line 712
    .line 713
    const/4 v7, -0x1

    .line 714
    const/4 v8, 0x1

    .line 715
    const-string v5, "android.permission.STATUS_BAR_SERVICE"

    .line 716
    .line 717
    const/4 v6, 0x0

    .line 718
    move/from16 v3, p6

    .line 719
    .line 720
    move/from16 v4, p7

    .line 721
    .line 722
    invoke-static/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 723
    .line 724
    .line 725
    move-result v2

    .line 726
    if-nez v2, :cond_17

    .line 727
    .line 728
    goto :goto_c

    .line 729
    :cond_17
    const/4 v2, 0x4

    .line 730
    if-ne v0, v2, :cond_18

    .line 731
    .line 732
    move-object/from16 v0, p4

    .line 733
    .line 734
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 735
    .line 736
    invoke-static {v10, v0}, Lcom/android/server/wm/SafeActivityOptions;->isAssistant(ILcom/android/server/wm/ActivityTaskManagerService;)Z

    .line 737
    .line 738
    .line 739
    move-result v0

    .line 740
    if-eqz v0, :cond_18

    .line 741
    .line 742
    goto :goto_c

    .line 743
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 744
    .line 745
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/SafeActivityOptions;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v2

    .line 752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    const-string v1, ") with launchActivityType="

    .line 765
    .line 766
    invoke-static {v9, v10, v15, v1, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    .line 770
    .line 771
    .line 772
    move-result v1

    .line 773
    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v1

    .line 777
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    .line 786
    .line 787
    new-instance v1, Ljava/lang/SecurityException;

    .line 788
    .line 789
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    throw v1

    .line 793
    :cond_19
    :goto_c
    return-void
.end method

.method public getLaunchTaskDisplayArea(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/TaskDisplayArea;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/wm/TaskDisplayArea;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    if-eqz p0, :cond_1

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayAreaFeatureId()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, -0x1

    .line 27
    if-eq v0, v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ne v2, v1, :cond_2

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    :goto_1
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    new-instance p0, Lcom/android/server/wm/SafeActivityOptions$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    invoke-direct {p0, v0}, Lcom/android/server/wm/SafeActivityOptions$$ExternalSyntheticLambda0;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lcom/android/server/wm/TaskDisplayArea;

    .line 59
    .line 60
    :cond_3
    return-object p0
.end method

.method public final getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;
    .locals 10

    .line 1
    iget-object v5, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    .line 2
    .line 3
    const-string v8, "Safe activity options constructed after clearing calling id"

    .line 4
    .line 5
    const-string v9, "ActivityTaskManager"

    .line 6
    .line 7
    if-eqz v5, :cond_2

    .line 8
    .line 9
    iget v6, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    .line 10
    .line 11
    iget v7, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    move-object v1, p1

    .line 15
    move-object v2, p2

    .line 16
    move-object v3, p3

    .line 17
    move-object v4, p4

    .line 18
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/SafeActivityOptions;->checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;II)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 31
    .line 32
    iget v2, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingPid:I

    .line 33
    .line 34
    if-ne v2, v1, :cond_1

    .line 35
    .line 36
    invoke-static {v9, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalCallingUid:I

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    .line 46
    .line 47
    if-eqz v5, :cond_5

    .line 48
    .line 49
    iget v6, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    .line 50
    .line 51
    iget v7, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    .line 52
    .line 53
    move-object v0, p0

    .line 54
    move-object v1, p1

    .line 55
    move-object v2, p2

    .line 56
    move-object v3, p3

    .line 57
    move-object v4, p4

    .line 58
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/SafeActivityOptions;->checkPermissions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;II)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    .line 62
    .line 63
    iget v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingPid:I

    .line 64
    .line 65
    iget v2, p0, Lcom/android/server/wm/SafeActivityOptions;->mRealCallingUid:I

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    sget v3, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 75
    .line 76
    if-ne v1, v3, :cond_4

    .line 77
    .line 78
    invoke-static {v9, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    invoke-virtual {v0, v1, v2}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/SafeActivityOptions;->mOriginalOptions:Landroid/app/ActivityOptions;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/server/wm/SafeActivityOptions;->mCallerOptions:Landroid/app/ActivityOptions;

    .line 88
    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/SafeActivityOptions;->mergeActivityOptions(Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0
.end method

.method public mergeActivityOptions(Landroid/app/ActivityOptions;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p2

    .line 4
    :cond_0
    if-nez p2, :cond_1

    .line 5
    .line 6
    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
