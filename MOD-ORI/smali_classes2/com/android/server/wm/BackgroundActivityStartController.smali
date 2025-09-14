.class public final Lcom/android/server/wm/BackgroundActivityStartController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ACTIVITY_OPTIONS_SYSTEM_DEFINED:Landroid/app/ActivityOptions;


# instance fields
.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTaskIdToFinishedActivity:Ljava/util/HashMap;

.field public mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->ACTIVITY_OPTIONS_SYSTEM_DEFINED:Landroid/app/ActivityOptions;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 17
    .line 18
    return-void
.end method

.method public static balCodeToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string v1, "Unexpected value: "

    .line 7
    .line 8
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0

    .line 16
    :pswitch_0
    const-string p0, "BAL_ALLOW_NON_APP_VISIBLE_WINDOW"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_1
    const-string p0, "BAL_ALLOW_SDK_SANDBOX"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_2
    const-string p0, "BAL_ALLOW_FOREGROUND"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_3
    const-string p0, "BAL_ALLOW_GRACE_PERIOD"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_4
    const-string p0, "BAL_ALLOW_SAW_PERMISSION"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_5
    const-string p0, "BAL_ALLOW_PERMISSION"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :pswitch_6
    const-string p0, "BAL_ALLOW_PENDING_INTENT"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_7
    const-string p0, "BAL_ALLOW_VISIBLE_WINDOW"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_8
    const-string p0, "BAL_ALLOW_ALLOWLISTED_COMPONENT"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_9
    const-string p0, "BAL_ALLOW_ALLOWLISTED_UID"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_a
    const-string p0, "BAL_ALLOW_DEFAULT"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_b
    const-string p0, "BAL_BLOCK"

    .line 50
    .line 51
    :goto_0
    return-object p0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDebugStringForActivityRecord(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, " :: visible="

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ", visibleRequested="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", finishing="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", alwaysOnTop="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", lastLaunchTime="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", lastVisibleTime="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", taskFragment="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method


# virtual methods
.method public final abortLaunch(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Background activity launch blocked! "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "ActivityTaskManager"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/android/window/flags/Flags;->balShowToastsBlocked()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    :cond_0
    const-string v0, "BAL blocked. goo.gle/android-bal"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 48
    .line 49
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final checkActivityAllowedToClearTask(Lcom/android/server/wm/Task;II)V
    .locals 33

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    move/from16 v15, p2

    .line 6
    .line 7
    const/16 v0, 0x3e8

    .line 8
    .line 9
    if-eq v15, v0, :cond_d

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_d

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_9

    .line 24
    .line 25
    :cond_0
    iget-object v12, v13, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 26
    .line 27
    iget-object v0, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    new-instance v11, Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 38
    .line 39
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 40
    .line 41
    .line 42
    move-result-object v16

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v5, -0x1

    .line 46
    const/4 v6, -0x1

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    const/16 v17, 0x0

    .line 50
    .line 51
    move-object v0, v11

    .line 52
    move-object/from16 v1, p0

    .line 53
    .line 54
    move/from16 v2, p2

    .line 55
    .line 56
    move/from16 v3, p3

    .line 57
    .line 58
    move-object/from16 v30, v11

    .line 59
    .line 60
    move-object/from16 v11, v17

    .line 61
    .line 62
    move-object/from16 v31, v12

    .line 63
    .line 64
    move-object/from16 v12, v16

    .line 65
    .line 66
    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 67
    .line 68
    .line 69
    move-object/from16 v0, v30

    .line 70
    .line 71
    invoke-virtual {v13, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStartAllowedByCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/4 v1, 0x2

    .line 76
    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    .line 77
    .line 78
    if-eq v0, v1, :cond_d

    .line 79
    .line 80
    const/4 v1, 0x3

    .line 81
    if-eq v0, v1, :cond_d

    .line 82
    .line 83
    const/4 v1, 0x6

    .line 84
    if-eq v0, v1, :cond_d

    .line 85
    .line 86
    const/4 v1, 0x7

    .line 87
    if-eq v0, v1, :cond_d

    .line 88
    .line 89
    const/4 v1, 0x4

    .line 90
    if-eq v0, v1, :cond_d

    .line 91
    .line 92
    const/16 v1, 0xb

    .line 93
    .line 94
    if-ne v0, v1, :cond_1

    .line 95
    .line 96
    goto/16 :goto_9

    .line 97
    .line 98
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-nez v0, :cond_2

    .line 103
    .line 104
    return-void

    .line 105
    :cond_2
    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 106
    .line 107
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 108
    .line 109
    .line 110
    const/4 v2, 0x0

    .line 111
    invoke-virtual {v13, v14, v15, v2, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-boolean v3, v1, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    .line 116
    .line 117
    if-eqz v3, :cond_3

    .line 118
    .line 119
    return-void

    .line 120
    :cond_3
    new-instance v3, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;

    .line 121
    .line 122
    const/4 v4, 0x0

    .line 123
    invoke-direct {v3, v4}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v14, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    if-nez v3, :cond_4

    .line 131
    .line 132
    const/4 v4, -0x1

    .line 133
    :goto_0
    move/from16 v18, v4

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    goto :goto_0

    .line 141
    :goto_1
    if-nez v3, :cond_5

    .line 142
    .line 143
    move-object/from16 v19, v2

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_5
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 147
    .line 148
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 149
    .line 150
    move-object/from16 v19, v3

    .line 151
    .line 152
    :goto_2
    const/16 v26, 0xb

    .line 153
    .line 154
    const/16 v27, 0x0

    .line 155
    .line 156
    const/16 v3, 0x1ef

    .line 157
    .line 158
    const/16 v17, 0x0

    .line 159
    .line 160
    const/16 v20, 0x0

    .line 161
    .line 162
    const/16 v21, -0x1

    .line 163
    .line 164
    const/16 v22, 0x0

    .line 165
    .line 166
    const/16 v23, 0x0

    .line 167
    .line 168
    const/16 v24, 0x0

    .line 169
    .line 170
    const/16 v25, 0x4

    .line 171
    .line 172
    const/16 v28, -0x1

    .line 173
    .line 174
    const/16 v29, 0x0

    .line 175
    .line 176
    move v4, v15

    .line 177
    move v15, v3

    .line 178
    move/from16 v16, p2

    .line 179
    .line 180
    invoke-static/range {v15 .. v29}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIIZILjava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldRestrictActivitySwitch(I)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_6

    .line 188
    .line 189
    iget-boolean v1, v1, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    .line 190
    .line 191
    if-eqz v1, :cond_6

    .line 192
    .line 193
    const/4 v1, 0x1

    .line 194
    :goto_3
    move-object/from16 v3, v31

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_6
    const/4 v1, 0x0

    .line 198
    goto :goto_3

    .line 199
    :goto_4
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 200
    .line 201
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    if-nez v5, :cond_7

    .line 210
    .line 211
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    move-object v3, v5

    .line 216
    goto :goto_6

    .line 217
    :cond_7
    const-wide/16 v6, 0x0

    .line 218
    .line 219
    :try_start_0
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 228
    .line 229
    .line 230
    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_5

    .line 232
    :catch_0
    move-object v3, v5

    .line 233
    :goto_5
    move-object/from16 v32, v5

    .line 234
    .line 235
    move-object v5, v3

    .line 236
    move-object/from16 v3, v32

    .line 237
    .line 238
    :goto_6
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->shouldShowToast(I)Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_9

    .line 243
    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v6, "go/android-asm"

    .line 247
    .line 248
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    if-eqz v1, :cond_8

    .line 252
    .line 253
    const-string v6, " returned home due to "

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_8
    const-string v6, " would return home due to "

    .line 257
    .line 258
    :goto_7
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-virtual {v13, v4}, Lcom/android/server/wm/BackgroundActivityStartController;->showToast(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    :cond_9
    const-string v4, " is not on top of task t: "

    .line 272
    .line 273
    const-string v5, "ActivityTaskManager"

    .line 274
    .line 275
    if-eqz v1, :cond_c

    .line 276
    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    const-string v6, "[ASM] Return to home as source: "

    .line 280
    .line 281
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    iget-object v1, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 301
    .line 302
    iget v1, v1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    .line 303
    .line 304
    iget-object v3, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 305
    .line 306
    if-nez v3, :cond_a

    .line 307
    .line 308
    goto :goto_8

    .line 309
    :cond_a
    new-instance v2, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;

    .line 310
    .line 311
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 312
    .line 313
    .line 314
    const-class v4, Lcom/android/server/wm/ActivityRecord;

    .line 315
    .line 316
    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-static {v2, v4, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 333
    .line 334
    .line 335
    :goto_8
    const-string/jumbo v1, "taskRemoved"

    .line 336
    .line 337
    .line 338
    if-nez v2, :cond_b

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    goto :goto_9

    .line 344
    :cond_b
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 345
    .line 346
    .line 347
    goto :goto_9

    .line 348
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    const-string v1, "[ASM] Would return to home as source: "

    .line 351
    .line 352
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    :cond_d
    :goto_9
    return-void
.end method

.method public final checkBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 15

    .line 1
    move-object v13, p0

    .line 2
    if-nez p11, :cond_0

    .line 3
    .line 4
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController;->ACTIVITY_OPTIONS_SYSTEM_DEFINED:Landroid/app/ActivityOptions;

    .line 5
    .line 6
    move-object v12, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object/from16 v12, p11

    .line 9
    .line 10
    :goto_0
    new-instance v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;

    .line 11
    .line 12
    move-object v0, v14

    .line 13
    move-object v1, p0

    .line 14
    move/from16 v2, p1

    .line 15
    .line 16
    move/from16 v3, p2

    .line 17
    .line 18
    move-object/from16 v4, p3

    .line 19
    .line 20
    move/from16 v5, p4

    .line 21
    .line 22
    move/from16 v6, p5

    .line 23
    .line 24
    move-object/from16 v7, p6

    .line 25
    .line 26
    move-object/from16 v8, p7

    .line 27
    .line 28
    move-object/from16 v9, p8

    .line 29
    .line 30
    move-object/from16 v10, p9

    .line 31
    .line 32
    move-object/from16 v11, p10

    .line 33
    .line 34
    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController$BalState;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 35
    .line 36
    .line 37
    iget v0, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    .line 38
    .line 39
    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const-string/jumbo v2, "mResultForRealCaller can only be set once"

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    const/4 v4, 0x0

    .line 48
    iget-object v5, v13, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-static {v0}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v5, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->hasActiveVisibleWindow(I)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 63
    .line 64
    const/16 v1, 0xa

    .line 65
    .line 66
    invoke-direct {v0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 70
    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    move v3, v4

    .line 75
    :goto_1
    invoke-static {v3, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 79
    .line 80
    invoke-virtual {p0, v0, v14}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_2
    invoke-virtual {p0, v14}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStartAllowedByCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget-object v6, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 89
    .line 90
    if-nez v6, :cond_3

    .line 91
    .line 92
    move v6, v3

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    move v6, v4

    .line 95
    :goto_2
    const-string/jumbo v7, "mResultForCaller can only be set once"

    .line 96
    .line 97
    .line 98
    invoke-static {v6, v7}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iput-object v1, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 102
    .line 103
    const/4 v6, -0x1

    .line 104
    if-eq v0, v6, :cond_4

    .line 105
    .line 106
    move v7, v3

    .line 107
    goto :goto_3

    .line 108
    :cond_4
    move v7, v4

    .line 109
    :goto_3
    sget-object v8, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 110
    .line 111
    if-nez v7, :cond_6

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    iget-object v0, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 120
    .line 121
    invoke-virtual {p0, v0, v14}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    .line 122
    .line 123
    .line 124
    return-object v0

    .line 125
    :cond_5
    invoke-virtual {p0, v14}, Lcom/android/server/wm/BackgroundActivityStartController;->abortLaunch(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    .line 126
    .line 127
    .line 128
    return-object v8

    .line 129
    :cond_6
    iget v7, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    .line 130
    .line 131
    const/4 v9, 0x2

    .line 132
    if-ne v7, v0, :cond_7

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-eqz v7, :cond_7

    .line 139
    .line 140
    move-object v5, v1

    .line 141
    goto/16 :goto_9

    .line 142
    .line 143
    :cond_7
    iget v7, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAppSwitchState:I

    .line 144
    .line 145
    if-eq v7, v9, :cond_9

    .line 146
    .line 147
    if-eq v7, v3, :cond_9

    .line 148
    .line 149
    iget-object v7, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPackage:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p0, v0, v7}, Lcom/android/server/wm/BackgroundActivityStartController;->isHomeApp(ILjava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-eqz v7, :cond_8

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_8
    move v7, v4

    .line 159
    goto :goto_5

    .line 160
    :cond_9
    :goto_4
    move v7, v3

    .line 161
    :goto_5
    invoke-static {}, Lcom/android/window/flags/Flags;->balImproveRealCallerVisibilityCheck()Z

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    const/4 v11, 0x4

    .line 166
    iget-boolean v12, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasAnyVisibleWindow:Z

    .line 167
    .line 168
    if-eqz v10, :cond_b

    .line 169
    .line 170
    if-eqz v7, :cond_a

    .line 171
    .line 172
    if-eqz v12, :cond_a

    .line 173
    .line 174
    new-instance v5, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 175
    .line 176
    invoke-direct {v5, v11}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_8

    .line 180
    .line 181
    :cond_a
    iget-object v7, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 182
    .line 183
    invoke-virtual {v7, v0}, Lcom/android/server/wm/MirrorActiveUids;->hasNonAppVisibleWindow(I)Z

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    if-eqz v7, :cond_c

    .line 188
    .line 189
    new-instance v5, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 190
    .line 191
    const/16 v7, 0xb

    .line 192
    .line 193
    invoke-direct {v5, v7}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_8

    .line 197
    .line 198
    :cond_b
    if-eqz v12, :cond_c

    .line 199
    .line 200
    new-instance v5, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 201
    .line 202
    invoke-direct {v5, v11}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_8

    .line 206
    .line 207
    :cond_c
    iget-object v7, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 208
    .line 209
    sget v10, Lcom/android/server/am/PendingIntentRecord;->$r8$clinit:I

    .line 210
    .line 211
    if-nez v7, :cond_d

    .line 212
    .line 213
    move v7, v4

    .line 214
    goto :goto_6

    .line 215
    :cond_d
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->isPendingIntentBackgroundActivityLaunchAllowedByPermission()Z

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    :goto_6
    if-eqz v7, :cond_e

    .line 220
    .line 221
    iget v7, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPid:I

    .line 222
    .line 223
    invoke-virtual {p0, v0, v7}, Lcom/android/server/wm/BackgroundActivityStartController;->hasBalPermission(II)Z

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    if-eqz v7, :cond_e

    .line 228
    .line 229
    new-instance v5, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 230
    .line 231
    const/4 v7, 0x6

    .line 232
    invoke-direct {v5, v7}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 233
    .line 234
    .line 235
    goto :goto_8

    .line 236
    :cond_e
    iget-object v7, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mForcedBalByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 237
    .line 238
    invoke-virtual {v7}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    if-eqz v7, :cond_f

    .line 243
    .line 244
    iget-boolean v7, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsRealCallingUidPersistentSystemProcess:Z

    .line 245
    .line 246
    if-eqz v7, :cond_f

    .line 247
    .line 248
    new-instance v5, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 249
    .line 250
    invoke-direct {v5, v9}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 251
    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_f
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    .line 259
    .line 260
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    check-cast v5, Landroid/util/ArrayMap;

    .line 265
    .line 266
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    check-cast v5, Ljava/util/Set;

    .line 271
    .line 272
    if-nez v5, :cond_10

    .line 273
    .line 274
    move v5, v4

    .line 275
    goto :goto_7

    .line 276
    :cond_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    :goto_7
    if-eqz v5, :cond_11

    .line 285
    .line 286
    new-instance v5, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 287
    .line 288
    const/4 v7, 0x3

    .line 289
    invoke-direct {v5, v7}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 290
    .line 291
    .line 292
    goto :goto_8

    .line 293
    :cond_11
    iget-object v5, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallerApp:Lcom/android/server/wm/WindowProcessController;

    .line 294
    .line 295
    invoke-virtual {p0, v5, v14}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    invoke-virtual {v5}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    if-eqz v7, :cond_12

    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_12
    move-object v5, v8

    .line 307
    :goto_8
    invoke-virtual {v5}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->setBasedOnRealCaller()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    :goto_9
    iget-object v7, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 312
    .line 313
    if-nez v7, :cond_13

    .line 314
    .line 315
    move v7, v3

    .line 316
    goto :goto_a

    .line 317
    :cond_13
    move v7, v4

    .line 318
    :goto_a
    invoke-static {v7, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iput-object v5, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 322
    .line 323
    iget-object v2, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mOriginatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 324
    .line 325
    if-eqz v2, :cond_14

    .line 326
    .line 327
    if-eq v0, v6, :cond_14

    .line 328
    .line 329
    move v0, v3

    .line 330
    goto :goto_b

    .line 331
    :cond_14
    move v0, v4

    .line 332
    :goto_b
    if-eqz v0, :cond_17

    .line 333
    .line 334
    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_16

    .line 339
    .line 340
    iget v0, v5, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    .line 341
    .line 342
    if-nez v0, :cond_15

    .line 343
    .line 344
    move v0, v3

    .line 345
    goto :goto_c

    .line 346
    :cond_15
    move v0, v4

    .line 347
    :goto_c
    if-eqz v0, :cond_16

    .line 348
    .line 349
    move v0, v3

    .line 350
    goto :goto_d

    .line 351
    :cond_16
    move v0, v4

    .line 352
    :goto_d
    iput-boolean v0, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mOnlyCreatorAllows:Z

    .line 353
    .line 354
    :cond_17
    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-eqz v0, :cond_1b

    .line 359
    .line 360
    iget-boolean v0, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInCaller:Z

    .line 361
    .line 362
    if-eqz v0, :cond_19

    .line 363
    .line 364
    iget-object v0, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 365
    .line 366
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-ne v0, v9, :cond_18

    .line 371
    .line 372
    move v0, v3

    .line 373
    goto :goto_e

    .line 374
    :cond_18
    move v0, v4

    .line 375
    :goto_e
    xor-int/2addr v0, v3

    .line 376
    goto :goto_f

    .line 377
    :cond_19
    iget-object v0, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 378
    .line 379
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    if-ne v0, v3, :cond_1a

    .line 384
    .line 385
    move v0, v3

    .line 386
    goto :goto_f

    .line 387
    :cond_1a
    move v0, v4

    .line 388
    :goto_f
    if-eqz v0, :cond_1b

    .line 389
    .line 390
    iget-object v0, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 391
    .line 392
    invoke-virtual {p0, v0, v14}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    .line 393
    .line 394
    .line 395
    return-object v0

    .line 396
    :cond_1b
    invoke-virtual {v5}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-eqz v0, :cond_1f

    .line 401
    .line 402
    iget-object v0, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAutoOptInReason:Ljava/lang/String;

    .line 403
    .line 404
    if-eqz v0, :cond_1d

    .line 405
    .line 406
    iget-object v0, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 407
    .line 408
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-ne v0, v9, :cond_1c

    .line 413
    .line 414
    move v0, v3

    .line 415
    goto :goto_10

    .line 416
    :cond_1c
    move v0, v4

    .line 417
    :goto_10
    xor-int/2addr v0, v3

    .line 418
    goto :goto_11

    .line 419
    :cond_1d
    iget-object v0, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 420
    .line 421
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    if-ne v0, v3, :cond_1e

    .line 426
    .line 427
    move v0, v3

    .line 428
    goto :goto_11

    .line 429
    :cond_1e
    move v0, v4

    .line 430
    :goto_11
    if-eqz v0, :cond_1f

    .line 431
    .line 432
    iget-object v0, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 433
    .line 434
    invoke-virtual {p0, v0, v14}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    .line 435
    .line 436
    .line 437
    return-object v0

    .line 438
    :cond_1f
    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_21

    .line 443
    .line 444
    iget-object v0, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 445
    .line 446
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-ne v0, v9, :cond_20

    .line 451
    .line 452
    move v0, v3

    .line 453
    goto :goto_12

    .line 454
    :cond_20
    move v0, v4

    .line 455
    :goto_12
    if-nez v0, :cond_21

    .line 456
    .line 457
    move v0, v3

    .line 458
    goto :goto_13

    .line 459
    :cond_21
    move v0, v4

    .line 460
    :goto_13
    invoke-virtual {v5}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    if-eqz v1, :cond_23

    .line 465
    .line 466
    iget-object v1, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 467
    .line 468
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    if-ne v1, v9, :cond_22

    .line 473
    .line 474
    move v1, v3

    .line 475
    goto :goto_14

    .line 476
    :cond_22
    move v1, v4

    .line 477
    :goto_14
    if-nez v1, :cond_23

    .line 478
    .line 479
    goto :goto_15

    .line 480
    :cond_23
    move v3, v4

    .line 481
    :goto_15
    const-string v1, "ActivityTaskManager"

    .line 482
    .line 483
    if-eqz v0, :cond_24

    .line 484
    .line 485
    iget-object v2, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    .line 486
    .line 487
    invoke-virtual {v2}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    if-eqz v2, :cond_24

    .line 492
    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    const-string v2, "With Android 15 BAL hardening this activity start may be blocked if the PI creator upgrades target_sdk to 35+!  (missing opt in by PI creator)!"

    .line 496
    .line 497
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    iget-object v0, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 511
    .line 512
    invoke-virtual {p0, v0, v14}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    .line 513
    .line 514
    .line 515
    return-object v0

    .line 516
    :cond_24
    if-eqz v3, :cond_25

    .line 517
    .line 518
    iget-object v2, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 519
    .line 520
    invoke-virtual {v2}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    .line 521
    .line 522
    .line 523
    move-result v2

    .line 524
    if-eqz v2, :cond_25

    .line 525
    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    const-string v2, "With Android 14 BAL hardening this activity start will be blocked if the PI sender upgrades target_sdk to 34+!  (missing opt in by PI sender)!"

    .line 529
    .line 530
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .line 542
    .line 543
    iget-object v0, v14, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 544
    .line 545
    invoke-virtual {p0, v0, v14}, Lcom/android/server/wm/BackgroundActivityStartController;->statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    .line 546
    .line 547
    .line 548
    return-object v0

    .line 549
    :cond_25
    if-nez v0, :cond_26

    .line 550
    .line 551
    if-eqz v3, :cond_27

    .line 552
    .line 553
    :cond_26
    const-string v0, "Without BAL hardening this activity start would be allowed"

    .line 554
    .line 555
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .line 557
    .line 558
    :cond_27
    invoke-virtual {p0, v14}, Lcom/android/server/wm/BackgroundActivityStartController;->abortLaunch(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    .line 559
    .line 560
    .line 561
    return-object v8
.end method

.method public final checkBackgroundActivityStartAllowedByCaller(Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 9

    .line 1
    iget v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAppSwitchState:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget v4, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 20
    .line 21
    iget-object v5, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 22
    .line 23
    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v0, v5}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasAnyVisibleWindow:Z

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 74
    .line 75
    const/4 p1, 0x4

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_1
    iget-object v0, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 81
    .line 82
    invoke-virtual {v0, v4}, Lcom/android/server/wm/MirrorActiveUids;->hasNonAppVisibleWindow(I)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 89
    .line 90
    const/16 p1, 0xb

    .line 91
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 93
    .line 94
    .line 95
    return-object p0

    .line 96
    :cond_2
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v4, :cond_10

    .line 101
    .line 102
    const/16 v5, 0x3e8

    .line 103
    .line 104
    if-eq v0, v5, :cond_10

    .line 105
    .line 106
    const/16 v5, 0x403

    .line 107
    .line 108
    if-ne v0, v5, :cond_3

    .line 109
    .line 110
    goto/16 :goto_1

    .line 111
    .line 112
    :cond_3
    iget-object v1, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p0, v4, v1}, Lcom/android/server/wm/BackgroundActivityStartController;->isHomeApp(ILjava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    const/4 v6, 0x3

    .line 119
    if-eqz v5, :cond_4

    .line 120
    .line 121
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 122
    .line 123
    invoke-direct {p0, v6}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 124
    .line 125
    .line 126
    return-object p0

    .line 127
    :cond_4
    iget-object v5, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 128
    .line 129
    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    if-eqz v5, :cond_5

    .line 134
    .line 135
    iget v5, v5, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 136
    .line 137
    if-ne v0, v5, :cond_5

    .line 138
    .line 139
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 140
    .line 141
    invoke-direct {p0, v6}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 142
    .line 143
    .line 144
    return-object p0

    .line 145
    :cond_5
    iget-boolean v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIsCallingUidPersistentSystemProcess:Z

    .line 146
    .line 147
    if-eqz v0, :cond_6

    .line 148
    .line 149
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 150
    .line 151
    invoke-direct {p0, v6}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 152
    .line 153
    .line 154
    return-object p0

    .line 155
    :cond_6
    iget v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPid:I

    .line 156
    .line 157
    invoke-virtual {p0, v4, v0}, Lcom/android/server/wm/BackgroundActivityStartController;->hasBalPermission(II)Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    const/4 v7, 0x6

    .line 162
    if-eqz v5, :cond_7

    .line 163
    .line 164
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 165
    .line 166
    invoke-direct {p0, v7}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 167
    .line 168
    .line 169
    return-object p0

    .line 170
    :cond_7
    iget-object v5, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 171
    .line 172
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 173
    .line 174
    iget v5, v5, Lcom/android/server/wm/RecentTasks;->mRecentsUid:I

    .line 175
    .line 176
    invoke-static {v4, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_8

    .line 181
    .line 182
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 183
    .line 184
    invoke-direct {p0, v6}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 185
    .line 186
    .line 187
    return-object p0

    .line 188
    :cond_8
    if-ltz v4, :cond_9

    .line 189
    .line 190
    iget v5, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    .line 191
    .line 192
    if-ne v5, v4, :cond_9

    .line 193
    .line 194
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 195
    .line 196
    invoke-direct {p0, v6}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 197
    .line 198
    .line 199
    return-object p0

    .line 200
    :cond_9
    if-ltz v4, :cond_a

    .line 201
    .line 202
    iget-object v5, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileOwnerUids:Ljava/util/Set;

    .line 203
    .line 204
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-eqz v5, :cond_a

    .line 213
    .line 214
    invoke-static {}, Landroid/app/admin/DeviceStateCache;->getInstance()Landroid/app/admin/DeviceStateCache;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    invoke-virtual {v5, v8}, Landroid/app/admin/DeviceStateCache;->hasAffiliationWithDevice(I)Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-eqz v5, :cond_a

    .line 227
    .line 228
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 229
    .line 230
    invoke-direct {p0, v6}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 231
    .line 232
    .line 233
    return-object p0

    .line 234
    :cond_a
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    iget-object v8, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    .line 239
    .line 240
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    check-cast v8, Landroid/util/ArrayMap;

    .line 245
    .line 246
    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    check-cast v5, Ljava/util/Set;

    .line 251
    .line 252
    if-nez v5, :cond_b

    .line 253
    .line 254
    const/4 v5, 0x0

    .line 255
    goto :goto_0

    .line 256
    :cond_b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    :goto_0
    if-eqz v5, :cond_c

    .line 265
    .line 266
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 267
    .line 268
    invoke-direct {p0, v6}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 269
    .line 270
    .line 271
    return-object p0

    .line 272
    :cond_c
    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_d

    .line 277
    .line 278
    new-instance p0, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    const-string p1, "Background activity start for "

    .line 281
    .line 282
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string p1, " allowed because SYSTEM_ALERT_WINDOW permission is granted."

    .line 289
    .line 290
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    const-string p1, "ActivityTaskManager"

    .line 298
    .line 299
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 303
    .line 304
    const/4 p1, 0x7

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 306
    .line 307
    .line 308
    return-object p0

    .line 309
    :cond_d
    const-string/jumbo v0, "system_exempt_from_activity_bg_start_restriction_enabled"

    .line 310
    .line 311
    .line 312
    const-string/jumbo v5, "window_manager"

    .line 313
    .line 314
    .line 315
    invoke-static {v5, v0, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_e

    .line 320
    .line 321
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    const/16 v2, 0x82

    .line 326
    .line 327
    invoke-virtual {v0, v2, v4, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-nez v0, :cond_e

    .line 332
    .line 333
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 334
    .line 335
    invoke-direct {p0, v7}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 336
    .line 337
    .line 338
    return-object p0

    .line 339
    :cond_e
    iget-object v0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    .line 340
    .line 341
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/BackgroundActivityStartController;->checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    if-eqz p1, :cond_f

    .line 350
    .line 351
    return-object p0

    .line 352
    :cond_f
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 353
    .line 354
    return-object p0

    .line 355
    :cond_10
    :goto_1
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 356
    .line 357
    invoke-direct {p0, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(I)V

    .line 358
    .line 359
    .line 360
    return-object p0
.end method

.method public final checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .locals 4

    .line 1
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-boolean v0, p3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    .line 9
    .line 10
    return-object p3

    .line 11
    :cond_0
    iget-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->mAllowCrossUidActivitySwitchFromBelow:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iput-boolean v1, p3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    .line 17
    .line 18
    iput-boolean v0, p3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    .line 19
    .line 20
    return-object p3

    .line 21
    :cond_1
    const/16 p2, 0x3e8

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_3

    .line 28
    .line 29
    invoke-static {}, Landroid/security/Flags;->asmOptSystemIntoEnforcement()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p3, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-object p3

    .line 39
    :cond_3
    const-wide/32 v2, 0xdbe868a

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-static {v2, v3, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-nez p2, :cond_4

    .line 51
    .line 52
    return-object p3

    .line 53
    :cond_4
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 54
    .line 55
    const-string v0, " not found."

    .line 56
    .line 57
    const-string v2, "Package name: "

    .line 58
    .line 59
    const-string v3, "ActivityTaskManager"

    .line 60
    .line 61
    if-nez p2, :cond_5

    .line 62
    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v3, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)V

    .line 82
    .line 83
    .line 84
    return-object p3

    .line 85
    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    :try_start_0
    invoke-virtual {p0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 94
    .line 95
    .line 96
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->allowCrossUidActivitySwitchFromBelow:Z

    .line 98
    .line 99
    if-eqz p0, :cond_6

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_6
    invoke-virtual {p3, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    return-object p3

    .line 106
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {v3, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)V

    .line 125
    .line 126
    .line 127
    return-object p3
.end method

.method public checkProcessAllowsBal(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget v1, p2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAppSwitchState:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(IZ)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessControllerMap;->mUidMap:Ljava/util/Map;

    .line 25
    .line 26
    iget v1, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast p0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroid/util/ArraySet;

    .line 39
    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    :goto_0
    if-ltz v1, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lcom/android/server/wm/WindowProcessController;

    .line 55
    .line 56
    if-eq v3, p1, :cond_2

    .line 57
    .line 58
    iget v4, p2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mAppSwitchState:I

    .line 59
    .line 60
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(IZ)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    return-object v3

    .line 71
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    return-object v0
.end method

.method public final checkTopActivityForAsm(Lcom/android/server/wm/Task;ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iput-boolean v0, p4, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    .line 11
    .line 12
    return-object p4

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string p2, "Activities for task: "

    .line 22
    .line 23
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, " not found."

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string p1, "ActivityTaskManager"

    .line 39
    .line 40
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p4, v1}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->optedIn(Lcom/android/server/wm/ActivityRecord;)V

    .line 44
    .line 45
    .line 46
    return-object p4

    .line 47
    :cond_1
    invoke-virtual {p0, v1, p2, p4}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    iget-boolean v1, p4, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    return-object p4

    .line 56
    :cond_2
    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;

    .line 57
    .line 58
    invoke-direct {v1, p2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    iput-boolean v0, p4, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    .line 68
    .line 69
    return-object p4

    .line 70
    :cond_3
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda4;

    .line 71
    .line 72
    invoke-direct {v0, p3}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-nez p1, :cond_4

    .line 80
    .line 81
    return-object p4

    .line 82
    :cond_4
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    iget-boolean p4, p3, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    .line 87
    .line 88
    if-eqz p4, :cond_5

    .line 89
    .line 90
    return-object p3

    .line 91
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-nez p1, :cond_6

    .line 96
    .line 97
    return-object p3

    .line 98
    :cond_6
    iget-object p1, p1, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 99
    .line 100
    if-nez p1, :cond_7

    .line 101
    .line 102
    return-object p3

    .line 103
    :cond_7
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-nez p1, :cond_8

    .line 108
    .line 109
    return-object p3

    .line 110
    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/BackgroundActivityStartController;->checkCrossUidActivitySwitchFromBelow(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0
.end method

.method public final getDebugInfoForActivitySecurity(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;IIZZZZLcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move-object/from16 v2, p2

    .line 5
    .line 6
    move-object/from16 v3, p3

    .line 7
    .line 8
    move-object/from16 v4, p4

    .line 9
    .line 10
    move-object/from16 v5, p5

    .line 11
    .line 12
    move/from16 v6, p7

    .line 13
    .line 14
    move/from16 v7, p8

    .line 15
    .line 16
    new-instance v8, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;

    .line 17
    .line 18
    invoke-direct {v8, v2, v5, v3}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 19
    .line 20
    .line 21
    new-instance v9, Ljava/util/StringJoiner;

    .line 22
    .line 23
    const-string v10, "\n"

    .line 24
    .line 25
    invoke-direct {v9, v10}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    new-instance v10, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v11, "[ASM] ------ Activity Security "

    .line 31
    .line 32
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v12, " Debug Logging Start ------"

    .line 39
    .line 40
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    invoke-virtual {v9, v10}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 48
    .line 49
    .line 50
    new-instance v10, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v12, "[ASM] Block Enabled: "

    .line 53
    .line 54
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    invoke-virtual {v9, v10}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 65
    .line 66
    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v12, 0x1

    .line 69
    if-nez v7, :cond_1

    .line 70
    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v13, "[ASM] Feature Flag Enabled: "

    .line 74
    .line 75
    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroid/security/Flags;->asmRestrictionsEnabled()Z

    .line 79
    .line 80
    .line 81
    move-result v13

    .line 82
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v9, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 90
    .line 91
    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v13, "[ASM] Mendel Override: "

    .line 95
    .line 96
    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sget v13, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmRestrictionsEnabled:I

    .line 100
    .line 101
    const/4 v14, 0x2

    .line 102
    if-ne v13, v14, :cond_0

    .line 103
    .line 104
    move v13, v12

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    move v13, v10

    .line 107
    :goto_0
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v9, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 115
    .line 116
    .line 117
    :cond_1
    const-string v7, "[ASM] ASM Version: 11"

    .line 118
    .line 119
    invoke-virtual {v9, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 120
    .line 121
    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v13, "[ASM] System Time: "

    .line 125
    .line 126
    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 130
    .line 131
    .line 132
    move-result-wide v13

    .line 133
    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-virtual {v9, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 141
    .line 142
    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v13, "[ASM] Activity Opted In: "

    .line 146
    .line 147
    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    move-object/from16 v13, p12

    .line 151
    .line 152
    invoke-virtual {v8, v13}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    check-cast v13, Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-virtual {v9, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 166
    .line 167
    .line 168
    if-eqz v4, :cond_2

    .line 169
    .line 170
    if-eqz v2, :cond_2

    .line 171
    .line 172
    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 173
    .line 174
    if-ne v7, v4, :cond_2

    .line 175
    .line 176
    move v10, v12

    .line 177
    :cond_2
    iget-object v7, v0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 178
    .line 179
    if-nez v2, :cond_3

    .line 180
    .line 181
    new-instance v12, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v13, "[ASM] Source Package: "

    .line 184
    .line 185
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v13, v3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v12

    .line 197
    invoke-virtual {v9, v12}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 198
    .line 199
    .line 200
    iget-object v12, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    move/from16 v13, p6

    .line 207
    .line 208
    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    new-instance v13, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v14, "[ASM] Real Calling Uid Package: "

    .line 215
    .line 216
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v12

    .line 226
    invoke-virtual {v9, v12}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v13, "[ASM] Source Record: "

    .line 233
    .line 234
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v8, v2}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v13

    .line 241
    check-cast v13, Ljava/lang/String;

    .line 242
    .line 243
    const-string v14, "[ASM] Source Launch Package: "

    .line 244
    .line 245
    invoke-static {v13, v14, v12, v9}, Landroid/hardware/broadcastradio/AmFmRegionConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    move-result-object v12

    .line 249
    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 250
    .line 251
    const-string v14, "[ASM] Source Launch Intent: "

    .line 252
    .line 253
    invoke-static {v13, v14, v12, v9}, Landroid/hardware/broadcastradio/AmFmRegionConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    move-result-object v12

    .line 257
    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 258
    .line 259
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v12

    .line 266
    invoke-virtual {v9, v12}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 267
    .line 268
    .line 269
    if-eqz v10, :cond_4

    .line 270
    .line 271
    new-instance v12, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v13, "[ASM] Source/Target Task: "

    .line 274
    .line 275
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 279
    .line 280
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v12

    .line 287
    invoke-virtual {v9, v12}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 288
    .line 289
    .line 290
    const-string v12, "[ASM] Source/Target Task Stack: "

    .line 291
    .line 292
    invoke-virtual {v9, v12}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 293
    .line 294
    .line 295
    goto :goto_1

    .line 296
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v13, "[ASM] Source Task: "

    .line 299
    .line 300
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 304
    .line 305
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v12

    .line 312
    invoke-virtual {v9, v12}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 313
    .line 314
    .line 315
    const-string v12, "[ASM] Source Task Stack: "

    .line 316
    .line 317
    invoke-virtual {v9, v12}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 318
    .line 319
    .line 320
    :goto_1
    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 321
    .line 322
    new-instance v13, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda6;

    .line 323
    .line 324
    const/4 v14, 0x0

    .line 325
    invoke-direct {v13, v9, v8, v14}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda6;-><init>(Ljava/util/StringJoiner;Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v12, v13}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 329
    .line 330
    .line 331
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    const-string v13, "[ASM] Target Task Top: "

    .line 334
    .line 335
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v8, v5}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    check-cast v5, Ljava/lang/String;

    .line 343
    .line 344
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    invoke-virtual {v9, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 352
    .line 353
    .line 354
    if-nez v10, :cond_5

    .line 355
    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    const-string v10, "[ASM] Target Task: "

    .line 359
    .line 360
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    invoke-virtual {v9, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 371
    .line 372
    .line 373
    if-eqz v4, :cond_5

    .line 374
    .line 375
    const-string v5, "[ASM] Target Task Stack: "

    .line 376
    .line 377
    invoke-virtual {v9, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 378
    .line 379
    .line 380
    new-instance v5, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda6;

    .line 381
    .line 382
    const/4 v10, 0x1

    .line 383
    invoke-direct {v5, v9, v8, v10}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda6;-><init>(Ljava/util/StringJoiner;Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 387
    .line 388
    .line 389
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    const-string v10, "[ASM] Target Record: "

    .line 392
    .line 393
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v8, v3}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v10

    .line 400
    check-cast v10, Ljava/lang/String;

    .line 401
    .line 402
    const-string v12, "[ASM] Intent: "

    .line 403
    .line 404
    invoke-static {v10, v12, v5, v9}, Landroid/hardware/broadcastradio/AmFmRegionConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 409
    .line 410
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-virtual {v9, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 418
    .line 419
    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    const-string v5, "[ASM] TaskToFront: "

    .line 423
    .line 424
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    move/from16 v5, p9

    .line 428
    .line 429
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    invoke-virtual {v9, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 437
    .line 438
    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    const-string v5, "[ASM] AvoidMoveToFront: "

    .line 442
    .line 443
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    move/from16 v5, p10

    .line 447
    .line 448
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    invoke-virtual {v9, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 456
    .line 457
    .line 458
    invoke-static/range {p7 .. p7}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    const-string v5, "[ASM] BalCode: "

    .line 463
    .line 464
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    invoke-virtual {v9, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 469
    .line 470
    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    const-string v5, "[ASM] Allowed By Grace Period: "

    .line 474
    .line 475
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    move/from16 v5, p11

    .line 479
    .line 480
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    invoke-virtual {v9, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 488
    .line 489
    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    .line 491
    .line 492
    const-string v5, "[ASM] LastResumedActivity: "

    .line 493
    .line 494
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    iget-object v5, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 498
    .line 499
    invoke-virtual {v8, v5}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda5;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v5

    .line 503
    check-cast v5, Ljava/lang/String;

    .line 504
    .line 505
    const-string v7, "[ASM] System opted into enforcement: "

    .line 506
    .line 507
    invoke-static {v5, v7, v3, v9}, Landroid/hardware/broadcastradio/AmFmRegionConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    invoke-static {}, Landroid/security/Flags;->asmOptSystemIntoEnforcement()Z

    .line 512
    .line 513
    .line 514
    move-result v5

    .line 515
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    invoke-virtual {v9, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 523
    .line 524
    .line 525
    iget-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 526
    .line 527
    if-eqz v3, :cond_6

    .line 528
    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    const-string v5, "[ASM] TopFinishedActivity: "

    .line 532
    .line 533
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    iget-object v5, v0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 537
    .line 538
    iget-object v5, v5, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mDebugInfo:Ljava/lang/String;

    .line 539
    .line 540
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    invoke-virtual {v9, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 548
    .line 549
    .line 550
    :cond_6
    iget-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 551
    .line 552
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 553
    .line 554
    .line 555
    move-result v3

    .line 556
    if-nez v3, :cond_7

    .line 557
    .line 558
    const-string v3, "[ASM] TaskIdToFinishedActivity: "

    .line 559
    .line 560
    invoke-virtual {v9, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 561
    .line 562
    .line 563
    iget-object v0, v0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 564
    .line 565
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    new-instance v3, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda8;

    .line 570
    .line 571
    const/4 v5, 0x0

    .line 572
    invoke-direct {v3, v9, v5}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda8;-><init>(Ljava/util/StringJoiner;I)V

    .line 573
    .line 574
    .line 575
    invoke-interface {v0, v3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 576
    .line 577
    .line 578
    :cond_7
    const/4 v0, 0x4

    .line 579
    if-eq v6, v0, :cond_8

    .line 580
    .line 581
    const/16 v0, 0xb

    .line 582
    .line 583
    if-eq v6, v0, :cond_8

    .line 584
    .line 585
    const/16 v0, 0x9

    .line 586
    .line 587
    if-ne v6, v0, :cond_a

    .line 588
    .line 589
    :cond_8
    if-eqz v2, :cond_9

    .line 590
    .line 591
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 592
    .line 593
    move-object v4, v0

    .line 594
    :cond_9
    if-eqz v4, :cond_a

    .line 595
    .line 596
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    if-eqz v0, :cond_a

    .line 601
    .line 602
    const-string v0, "[ASM] Tasks: "

    .line 603
    .line 604
    invoke-virtual {v9, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    new-instance v2, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda8;

    .line 612
    .line 613
    const/4 v3, 0x1

    .line 614
    invoke-direct {v2, v9, v3}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda8;-><init>(Ljava/util/StringJoiner;I)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 618
    .line 619
    .line 620
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 621
    .line 622
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    const-string v1, " Debug Logging End ------"

    .line 629
    .line 630
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    invoke-virtual {v9, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v9}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    return-object v0
.end method

.method public final getTargetSdk(Ljava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getTargetSdkVersion(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p0

    .line 18
    :catch_0
    return v0
.end method

.method public hasBalPermission(II)Z
    .locals 6

    .line 1
    sget-object p0, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v4, -0x1

    .line 4
    const/4 v5, 0x1

    .line 5
    const-string v2, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move v0, p2

    .line 9
    move v1, p1

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
.end method

.method public final isHomeApp(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 12
    .line 13
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 14
    .line 15
    if-ne p1, p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    :goto_0
    return v1

    .line 20
    :cond_1
    if-nez p2, :cond_2

    .line 21
    .line 22
    return v2

    .line 23
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-eqz p0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move v1, v2

    .line 59
    :goto_1
    return v1
.end method

.method public final onActivityRequestedFinishing(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget v1, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mUid:I

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mLaunchCount:I

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    if-le v0, v1, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eq p1, v0, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 49
    .line 50
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;Lcom/android/server/wm/ActivityRecord;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 54
    .line 55
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 56
    .line 57
    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 58
    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 67
    .line 68
    iget-boolean p1, p1, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public final onNewActivityLaunched(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTopFinishedActivity:Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 12
    .line 13
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 14
    .line 15
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 30
    .line 31
    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$FinishedActivityEntry;->mTaskId:I

    .line 32
    .line 33
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 34
    .line 35
    if-ne p1, v0, :cond_2

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController;->mTaskIdToFinishedActivity:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public shouldLogIntentActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .locals 2

    .line 1
    iget-boolean p0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    const/16 v1, 0x2710

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget p0, p2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    .line 10
    .line 11
    if-ge p0, v1, :cond_1

    .line 12
    .line 13
    :goto_0
    move p1, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget p0, p2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    .line 16
    .line 17
    if-ge p0, v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    :goto_1
    return p1
.end method

.method public shouldLogStats(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z
    .locals 2

    .line 1
    iget p0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne p0, v0, :cond_2

    .line 6
    .line 7
    iget-object p0, p2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mOriginatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget p0, p2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    .line 13
    .line 14
    const/4 p2, -0x1

    .line 15
    if-eq p0, p2, :cond_0

    .line 16
    .line 17
    move p0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p0, v0

    .line 20
    :goto_0
    if-nez p0, :cond_1

    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    iget-boolean p0, p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    return v0

    .line 28
    :cond_2
    return v1
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/BackgroundActivityStartController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/BackgroundActivityStartController;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final statsLog(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    .line 8
    .line 9
    if-nez v3, :cond_7

    .line 10
    .line 11
    iget-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->isActivityStartsLoggingEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_7

    .line 20
    .line 21
    iget-object v3, v0, Lcom/android/server/wm/BackgroundActivityStartController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 24
    .line 25
    iget-object v4, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIntent:Landroid/content/Intent;

    .line 26
    .line 27
    iget-object v5, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallerApp:Lcom/android/server/wm/WindowProcessController;

    .line 28
    .line 29
    iget v6, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    .line 30
    .line 31
    iget-object v7, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    .line 32
    .line 33
    iget v8, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidProcState:I

    .line 34
    .line 35
    iget-boolean v9, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUidHasAnyVisibleWindow:Z

    .line 36
    .line 37
    iget v10, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    .line 38
    .line 39
    iget v11, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidProcState:I

    .line 40
    .line 41
    iget-boolean v12, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUidHasAnyVisibleWindow:Z

    .line 42
    .line 43
    iget-object v13, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mOriginatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 44
    .line 45
    if-eqz v13, :cond_0

    .line 46
    .line 47
    const/4 v13, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v13, 0x0

    .line 50
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v16

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v18

    .line 61
    new-instance v14, Landroid/metrics/LogMaker;

    .line 62
    .line 63
    const/16 v15, 0x5e9

    .line 64
    .line 65
    invoke-direct {v14, v15}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    invoke-virtual {v14, v0, v1}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    .line 73
    .line 74
    .line 75
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/16 v1, 0x5ea

    .line 80
    .line 81
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 82
    .line 83
    .line 84
    const/16 v0, 0x5eb

    .line 85
    .line 86
    invoke-virtual {v14, v0, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 87
    .line 88
    .line 89
    invoke-static {v8}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const/16 v1, 0x5ec

    .line 98
    .line 99
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 100
    .line 101
    .line 102
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const/16 v1, 0x5ed

    .line 107
    .line 108
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 109
    .line 110
    .line 111
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const/16 v1, 0x5ee

    .line 116
    .line 117
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 118
    .line 119
    .line 120
    invoke-static {v11}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const/16 v1, 0x5ef

    .line 129
    .line 130
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 131
    .line 132
    .line 133
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const/16 v1, 0x5f0

    .line 138
    .line 139
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 140
    .line 141
    .line 142
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const/16 v1, 0x5f7

    .line 147
    .line 148
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 149
    .line 150
    .line 151
    if-eqz v4, :cond_1

    .line 152
    .line 153
    const/16 v0, 0x5f8

    .line 154
    .line 155
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v14, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    if-eqz v0, :cond_1

    .line 167
    .line 168
    const/16 v1, 0x5f6

    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 175
    .line 176
    .line 177
    :cond_1
    if-eqz v5, :cond_6

    .line 178
    .line 179
    const/16 v0, 0x5f9

    .line 180
    .line 181
    iget-object v1, v5, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v14, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 184
    .line 185
    .line 186
    iget v0, v5, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    .line 187
    .line 188
    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const/16 v1, 0x5fa

    .line 197
    .line 198
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 199
    .line 200
    .line 201
    iget-boolean v0, v5, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    .line 202
    .line 203
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    const/16 v1, 0x5fb

    .line 208
    .line 209
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 210
    .line 211
    .line 212
    iget-boolean v0, v5, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    .line 213
    .line 214
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    const/16 v1, 0x5fc

    .line 219
    .line 220
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 221
    .line 222
    .line 223
    iget-object v0, v5, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 224
    .line 225
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 226
    .line 227
    if-eq v0, v5, :cond_3

    .line 228
    .line 229
    iget v0, v5, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    .line 230
    .line 231
    const/high16 v1, 0x70000

    .line 232
    .line 233
    and-int/2addr v0, v1

    .line 234
    if-eqz v0, :cond_2

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_2
    const/16 v20, 0x0

    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_3
    :goto_1
    const/16 v20, 0x1

    .line 241
    .line 242
    :goto_2
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const/16 v1, 0x5fd

    .line 247
    .line 248
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 249
    .line 250
    .line 251
    iget-boolean v0, v5, Lcom/android/server/wm/WindowProcessController;->mHasTopUi:Z

    .line 252
    .line 253
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    const/16 v1, 0x5fe

    .line 258
    .line 259
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 260
    .line 261
    .line 262
    iget-boolean v0, v5, Lcom/android/server/wm/WindowProcessController;->mHasOverlayUi:Z

    .line 263
    .line 264
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    const/16 v1, 0x5ff

    .line 269
    .line 270
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 271
    .line 272
    .line 273
    iget-boolean v0, v5, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    .line 274
    .line 275
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    const/16 v1, 0x600

    .line 280
    .line 281
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 282
    .line 283
    .line 284
    iget-wide v0, v5, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    .line 285
    .line 286
    const-wide/16 v6, 0x0

    .line 287
    .line 288
    cmp-long v0, v0, v6

    .line 289
    .line 290
    if-eqz v0, :cond_4

    .line 291
    .line 292
    iget-wide v0, v5, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    .line 293
    .line 294
    sub-long v0, v16, v0

    .line 295
    .line 296
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    const/16 v1, 0x601

    .line 301
    .line 302
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 303
    .line 304
    .line 305
    :cond_4
    iget-wide v0, v5, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    .line 306
    .line 307
    cmp-long v0, v0, v6

    .line 308
    .line 309
    if-eqz v0, :cond_5

    .line 310
    .line 311
    iget-wide v0, v5, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    .line 312
    .line 313
    sub-long v16, v16, v0

    .line 314
    .line 315
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    const/16 v1, 0x602

    .line 320
    .line 321
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 322
    .line 323
    .line 324
    :cond_5
    iget-wide v0, v5, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    .line 325
    .line 326
    cmp-long v0, v0, v6

    .line 327
    .line 328
    if-eqz v0, :cond_6

    .line 329
    .line 330
    iget-wide v0, v5, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    .line 331
    .line 332
    sub-long v18, v18, v0

    .line 333
    .line 334
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    const/16 v1, 0x603

    .line 339
    .line 340
    invoke-virtual {v14, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 341
    .line 342
    .line 343
    :cond_6
    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 344
    .line 345
    invoke-virtual {v0, v14}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 346
    .line 347
    .line 348
    :cond_7
    invoke-static {}, Lcom/android/window/flags/Flags;->balImprovedMetrics()Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    const/4 v1, 0x5

    .line 353
    const-string v3, ""

    .line 354
    .line 355
    if-eqz v0, :cond_b

    .line 356
    .line 357
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/wm/BackgroundActivityStartController;->shouldLogStats(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-eqz v0, :cond_11

    .line 362
    .line 363
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/wm/BackgroundActivityStartController;->shouldLogIntentActivity(Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;Lcom/android/server/wm/BackgroundActivityStartController$BalState;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_9

    .line 368
    .line 369
    iget-object v0, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIntent:Landroid/content/Intent;

    .line 370
    .line 371
    if-nez v0, :cond_8

    .line 372
    .line 373
    const-string/jumbo v0, "noIntent"

    .line 374
    .line 375
    .line 376
    :goto_3
    move-object v3, v0

    .line 377
    goto :goto_4

    .line 378
    :cond_8
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    goto :goto_3

    .line 390
    :cond_9
    :goto_4
    move-object/from16 v0, p1

    .line 391
    .line 392
    iget-boolean v4, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    .line 393
    .line 394
    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    .line 395
    .line 396
    if-eqz v4, :cond_a

    .line 397
    .line 398
    if-eqz v0, :cond_a

    .line 399
    .line 400
    move-object/from16 v4, p0

    .line 401
    .line 402
    goto :goto_5

    .line 403
    :cond_a
    move-object/from16 v4, p0

    .line 404
    .line 405
    move v1, v0

    .line 406
    :goto_5
    invoke-virtual {v4, v3, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->writeBalAllowedLog(Ljava/lang/String;ILcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    .line 407
    .line 408
    .line 409
    goto :goto_7

    .line 410
    :cond_b
    move-object/from16 v4, p0

    .line 411
    .line 412
    move-object/from16 v0, p1

    .line 413
    .line 414
    iget-boolean v5, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    .line 415
    .line 416
    iget v0, v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    .line 417
    .line 418
    if-eqz v5, :cond_c

    .line 419
    .line 420
    if-eqz v0, :cond_c

    .line 421
    .line 422
    move v0, v1

    .line 423
    :cond_c
    iget v5, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    .line 424
    .line 425
    iget v6, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    .line 426
    .line 427
    iget-object v7, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mIntent:Landroid/content/Intent;

    .line 428
    .line 429
    if-ne v0, v1, :cond_f

    .line 430
    .line 431
    const/16 v8, 0x2710

    .line 432
    .line 433
    if-lt v5, v8, :cond_d

    .line 434
    .line 435
    if-ge v6, v8, :cond_f

    .line 436
    .line 437
    :cond_d
    if-eqz v7, :cond_e

    .line 438
    .line 439
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    goto :goto_6

    .line 451
    :cond_e
    move-object v5, v3

    .line 452
    :goto_6
    invoke-virtual {v4, v5, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->writeBalAllowedLog(Ljava/lang/String;ILcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    .line 453
    .line 454
    .line 455
    :cond_f
    const/4 v1, 0x6

    .line 456
    if-eq v0, v1, :cond_10

    .line 457
    .line 458
    const/16 v1, 0x9

    .line 459
    .line 460
    if-eq v0, v1, :cond_10

    .line 461
    .line 462
    const/4 v1, 0x7

    .line 463
    if-ne v0, v1, :cond_11

    .line 464
    .line 465
    :cond_10
    invoke-virtual {v4, v3, v0, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->writeBalAllowedLog(Ljava/lang/String;ILcom/android/server/wm/BackgroundActivityStartController$BalState;)V

    .line 466
    .line 467
    .line 468
    :cond_11
    :goto_7
    return-void
.end method

.method public writeBalAllowedLog(Ljava/lang/String;ILcom/android/server/wm/BackgroundActivityStartController$BalState;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p3

    .line 3
    .line 4
    iget v3, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingUid:I

    .line 5
    .line 6
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    move v5, v4

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v2, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    .line 14
    .line 15
    move v5, v2

    .line 16
    :goto_0
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiCreator:Landroid/app/BackgroundStartPrivileges;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v7, 0x1

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    move v8, v7

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v8, v4

    .line 34
    :goto_1
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mResultForRealCaller:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    move v9, v4

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    iget v2, v2, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    .line 41
    .line 42
    move v9, v2

    .line 43
    :goto_2
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mBalAllowedByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCheckedOptions:Landroid/app/ActivityOptions;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getPendingIntentBackgroundActivityStartMode()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    move v11, v7

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    move v11, v4

    .line 60
    :goto_3
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mCallingPackage:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    iget-object v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingPackage:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p0, v2}, Lcom/android/server/wm/BackgroundActivityStartController;->getTargetSdk(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v13

    .line 72
    const/16 v0, 0x278

    .line 73
    .line 74
    iget v4, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalState;->mRealCallingUid:I

    .line 75
    .line 76
    move-object v1, p1

    .line 77
    move/from16 v2, p2

    .line 78
    .line 79
    move v7, v8

    .line 80
    move v8, v9

    .line 81
    move v9, v10

    .line 82
    move v10, v11

    .line 83
    move v11, v12

    .line 84
    move v12, v13

    .line 85
    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIIIZZIZZII)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
