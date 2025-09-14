.class public final Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 7
    .line 8
    const/16 p1, 0x1a

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 15
    .line 16
    const/16 p1, 0x108

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getLongPressTimeoutMs()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x5

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultLongPressTimeout:J

    .line 24
    .line 25
    :goto_0
    return-wide v0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getMaxMultiPressCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 7
    .line 8
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    :cond_2
    :goto_1
    return v1

    .line 30
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onKeyUp(IIJ)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    if-ne p1, p2, :cond_3

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 12
    .line 13
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, p2, v2, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTasks(IZZI)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x0

    .line 30
    if-lez v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 37
    .line 38
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, 0x2

    .line 45
    invoke-virtual {v0, v3, v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 68
    .line 69
    iget v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 70
    .line 71
    iget v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 72
    .line 73
    if-eq v3, v5, :cond_0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const-string v0, "ActivityTaskManager"

    .line 77
    .line 78
    const-string v1, "No running task found!"

    .line 79
    .line 80
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_2
    move-object v2, v4

    .line 84
    :goto_0
    iput-object v2, p1, Lcom/android/server/policy/PhoneWindowManager;->mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

    .line 85
    .line 86
    iput-object v4, p1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 87
    .line 88
    iget-boolean v0, p1, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnStemPrimary:Z

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    iget v0, p1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    .line 93
    .line 94
    if-ne v0, p2, :cond_3

    .line 95
    .line 96
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 97
    .line 98
    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    invoke-direct {p2, p0, v0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(Ljava/lang/Runnable;J)V

    .line 105
    .line 106
    .line 107
    :cond_3
    return-void

    .line 108
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 109
    .line 110
    iget-boolean p0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnPower:Z

    .line 111
    .line 112
    if-eqz p0, :cond_4

    .line 113
    .line 114
    const/4 p0, 0x1

    .line 115
    if-ne p1, p0, :cond_4

    .line 116
    .line 117
    const/4 v6, 0x0

    .line 118
    const/4 v4, 0x1

    .line 119
    move-wide v2, p3

    .line 120
    move v5, p2

    .line 121
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JIILandroid/view/KeyEvent;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onLongPress(JLandroid/view/KeyEvent;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v3, p1

    .line 4
    .line 5
    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 13
    .line 14
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda3;

    .line 15
    .line 16
    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(Ljava/lang/Runnable;J)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 24
    .line 25
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 26
    .line 27
    iget-boolean v2, v2, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    .line 28
    .line 29
    const-string v5, "WindowManager"

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    const-string v0, "Not support long press power when device is not interactive."

    .line 38
    .line 39
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto/16 :goto_9

    .line 43
    .line 44
    :cond_0
    const/4 v2, 0x1

    .line 45
    iput-boolean v2, v0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const-string/jumbo v6, "powerLongPress: eventTime="

    .line 52
    .line 53
    .line 54
    const-string v7, " mLongPressOnPowerBehavior="

    .line 55
    .line 56
    invoke-static {v6, v3, v4, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    iget v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 61
    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v7, " behavior="

    .line 66
    .line 67
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    sget-boolean v6, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_LONG_PRESS:Z

    .line 81
    .line 82
    const-string v7, "HWB1006"

    .line 83
    .line 84
    const/4 v8, 0x4

    .line 85
    const/4 v9, 0x0

    .line 86
    if-eqz v6, :cond_11

    .line 87
    .line 88
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 89
    .line 90
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    sget-boolean v11, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    .line 94
    .line 95
    iget-object v12, v10, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 96
    .line 97
    const-string v13, "PhoneWindowManagerExt"

    .line 98
    .line 99
    if-nez v11, :cond_1

    .line 100
    .line 101
    sget-boolean v14, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DIGITAL_ASSISTANT:Z

    .line 102
    .line 103
    if-eqz v14, :cond_2

    .line 104
    .line 105
    :cond_1
    sget-boolean v14, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_POWER_OFF_MENU:Z

    .line 106
    .line 107
    if-nez v14, :cond_2

    .line 108
    .line 109
    invoke-virtual {v12}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    if-nez v14, :cond_2

    .line 114
    .line 115
    iget-object v0, v10, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    new-instance v3, Landroid/content/Intent;

    .line 118
    .line 119
    const-string v4, "com.sec.android.app.secsetupwizard.POWER_OFF_GUIDE"

    .line 120
    .line 121
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 125
    .line 126
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 127
    .line 128
    .line 129
    const-string/jumbo v0, "startActivity, power off guide"

    .line 130
    .line 131
    .line 132
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    goto/16 :goto_5

    .line 136
    .line 137
    :cond_2
    iget-object v14, v10, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    .line 138
    .line 139
    const/16 v15, 0x1a

    .line 140
    .line 141
    invoke-virtual {v14, v15, v8}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    .line 142
    .line 143
    .line 144
    move-result v14

    .line 145
    if-eqz v14, :cond_3

    .line 146
    .line 147
    const-string/jumbo v0, "skip long press power, requestedSystemKey"

    .line 148
    .line 149
    .line 150
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    goto/16 :goto_5

    .line 154
    .line 155
    :cond_3
    const/high16 v14, 0x20000000

    .line 156
    .line 157
    and-int v14, p4, v14

    .line 158
    .line 159
    if-eqz v14, :cond_4

    .line 160
    .line 161
    move v14, v2

    .line 162
    goto :goto_0

    .line 163
    :cond_4
    move v14, v9

    .line 164
    :goto_0
    if-eq v0, v2, :cond_f

    .line 165
    .line 166
    const-string v14, ")"

    .line 167
    .line 168
    packed-switch v0, :pswitch_data_1

    .line 169
    .line 170
    .line 171
    const-string v10, "Invalid side key long press info"

    .line 172
    .line 173
    invoke-static {v13, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    goto/16 :goto_6

    .line 177
    .line 178
    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DIGITAL_ASSISTANT:Z

    .line 179
    .line 180
    if-eqz v0, :cond_10

    .line 181
    .line 182
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_DICTATION_SAMSUNG_KEYBOARD:Z

    .line 183
    .line 184
    if-eqz v0, :cond_5

    .line 185
    .line 186
    invoke-virtual {v10, v15, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->openDictationIfNeeded(IZ)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_5

    .line 191
    .line 192
    iput-boolean v2, v10, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    .line 193
    .line 194
    goto/16 :goto_4

    .line 195
    .line 196
    :cond_5
    invoke-virtual {v12}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    if-eqz v0, :cond_7

    .line 201
    .line 202
    const-string v3, "invocation_type"

    .line 203
    .line 204
    const/4 v4, 0x6

    .line 205
    invoke-static {v4, v3}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 210
    .line 211
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 212
    .line 213
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 214
    .line 215
    if-eqz v0, :cond_6

    .line 216
    .line 217
    :try_start_0
    invoke-interface {v0, v3}, Lcom/android/internal/statusbar/IStatusBar;->startAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .line 219
    .line 220
    :catch_0
    :cond_6
    const-string/jumbo v0, "run digital assistant."

    .line 221
    .line 222
    .line 223
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_7
    const-string/jumbo v0, "statusBar is null"

    .line 228
    .line 229
    .line 230
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    :goto_1
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 234
    .line 235
    if-eqz v0, :cond_10

    .line 236
    .line 237
    iget-object v0, v10, Lcom/android/server/policy/PhoneWindowManagerExt;->mAssistantAppName:Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    const-string v3, "Digital Assistant"

    .line 244
    .line 245
    if-eqz v0, :cond_8

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_8
    iget-object v0, v10, Lcom/android/server/policy/PhoneWindowManagerExt;->mAssistantAppName:Ljava/lang/String;

    .line 249
    .line 250
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    if-nez v0, :cond_9

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string v4, "Digital Assistant ("

    .line 260
    .line 261
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    :goto_2
    invoke-static {v7, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_4

    .line 282
    .line 283
    :pswitch_2
    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 284
    .line 285
    iget-object v11, v10, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 286
    .line 287
    invoke-virtual {v11, v8, v15}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    if-nez v11, :cond_a

    .line 292
    .line 293
    const-string/jumbo v10, "powerLongPress, info is null"

    .line 294
    .line 295
    .line 296
    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    goto/16 :goto_6

    .line 300
    .line 301
    :cond_a
    iget v0, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 302
    .line 303
    move-object/from16 v3, p3

    .line 304
    .line 305
    invoke-virtual {v10, v0, v3, v15}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(ILandroid/view/KeyEvent;I)Z

    .line 306
    .line 307
    .line 308
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 309
    .line 310
    if-eqz v0, :cond_10

    .line 311
    .line 312
    iget v0, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 313
    .line 314
    invoke-static {v0}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_b

    .line 319
    .line 320
    const-string v0, "Knox"

    .line 321
    .line 322
    goto :goto_3

    .line 323
    :cond_b
    iget v0, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 324
    .line 325
    const/16 v3, 0x7d3

    .line 326
    .line 327
    if-ne v0, v3, :cond_c

    .line 328
    .line 329
    iget-object v0, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 330
    .line 331
    goto :goto_3

    .line 332
    :cond_c
    const/4 v0, 0x0

    .line 333
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    if-nez v3, :cond_10

    .line 338
    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    const-string v4, "Customization ("

    .line 342
    .line 343
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-static {v7, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    goto :goto_4

    .line 360
    :pswitch_3
    if-eqz v11, :cond_e

    .line 361
    .line 362
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_DICTATION_SAMSUNG_KEYBOARD:Z

    .line 363
    .line 364
    if-eqz v0, :cond_d

    .line 365
    .line 366
    invoke-virtual {v10, v15, v9}, Lcom/android/server/policy/PhoneWindowManagerExt;->openDictationIfNeeded(IZ)Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_d

    .line 371
    .line 372
    iput-boolean v2, v10, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    .line 373
    .line 374
    goto :goto_4

    .line 375
    :cond_d
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 376
    .line 377
    if-eqz v0, :cond_10

    .line 378
    .line 379
    const-string v0, "Wake Bixby"

    .line 380
    .line 381
    invoke-static {v7, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    goto :goto_4

    .line 385
    :cond_e
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 386
    .line 387
    goto :goto_4

    .line 388
    :cond_f
    if-eqz v14, :cond_10

    .line 389
    .line 390
    const-string v10, "Side key long press global action"

    .line 391
    .line 392
    invoke-static {v13, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    goto :goto_6

    .line 396
    :cond_10
    :goto_4
    const-string v0, "consume powerLongPress"

    .line 397
    .line 398
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    :goto_5
    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 402
    .line 403
    goto/16 :goto_9

    .line 404
    .line 405
    :cond_11
    :goto_6
    const/16 v10, 0x2713

    .line 406
    .line 407
    if-eq v0, v2, :cond_19

    .line 408
    .line 409
    const/4 v6, 0x2

    .line 410
    if-eq v0, v6, :cond_15

    .line 411
    .line 412
    const/4 v7, 0x3

    .line 413
    if-eq v0, v7, :cond_15

    .line 414
    .line 415
    if-eq v0, v8, :cond_13

    .line 416
    .line 417
    const/4 v5, 0x5

    .line 418
    if-eq v0, v5, :cond_12

    .line 419
    .line 420
    goto/16 :goto_9

    .line 421
    .line 422
    :cond_12
    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 423
    .line 424
    const/16 v0, 0x2712

    .line 425
    .line 426
    const-string v2, "Power - Long Press - Go To Assistant"

    .line 427
    .line 428
    invoke-virtual {v1, v0, v2, v9}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;Z)Z

    .line 429
    .line 430
    .line 431
    const/4 v2, -0x2

    .line 432
    const/4 v5, 0x6

    .line 433
    const/4 v6, 0x0

    .line 434
    move-object v0, v1

    .line 435
    move v1, v2

    .line 436
    move v2, v5

    .line 437
    move-wide/from16 v3, p1

    .line 438
    .line 439
    move-object v5, v6

    .line 440
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(IIJLjava/lang/String;)V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_9

    .line 444
    .line 445
    :cond_13
    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 446
    .line 447
    const-string v0, "Power - Long Press - Go To Voice Assist"

    .line 448
    .line 449
    invoke-virtual {v1, v10, v0, v9}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;Z)Z

    .line 450
    .line 451
    .line 452
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    .line 453
    .line 454
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 455
    .line 456
    const-string v3, "android.intent.action.VOICE_ASSIST"

    .line 457
    .line 458
    if-eqz v2, :cond_14

    .line 459
    .line 460
    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    if-eqz v2, :cond_14

    .line 465
    .line 466
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 467
    .line 468
    new-instance v1, Landroid/content/Intent;

    .line 469
    .line 470
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 474
    .line 475
    if-eqz v0, :cond_1b

    .line 476
    .line 477
    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    .line 478
    .line 479
    .line 480
    goto :goto_9

    .line 481
    :cond_14
    new-instance v2, Landroid/content/Intent;

    .line 482
    .line 483
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 487
    .line 488
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 489
    .line 490
    .line 491
    goto :goto_9

    .line 492
    :cond_15
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 493
    .line 494
    if-eqz v3, :cond_16

    .line 495
    .line 496
    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mAcquireInProgress:Z

    .line 497
    .line 498
    if-eqz v3, :cond_16

    .line 499
    .line 500
    const-string v0, "Do not shutdown. Maybe power wake lock is delayed."

    .line 501
    .line 502
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .line 504
    .line 505
    goto :goto_9

    .line 506
    :cond_16
    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 507
    .line 508
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    if-eqz v3, :cond_17

    .line 513
    .line 514
    goto :goto_9

    .line 515
    :cond_17
    const-string v3, "Power - Long Press - Shut Off"

    .line 516
    .line 517
    invoke-virtual {v1, v10, v3, v9}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;Z)Z

    .line 518
    .line 519
    .line 520
    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 521
    .line 522
    const-string v4, "globalactions"

    .line 523
    .line 524
    invoke-static {v3, v4}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 528
    .line 529
    if-ne v0, v6, :cond_18

    .line 530
    .line 531
    goto :goto_7

    .line 532
    :cond_18
    move v2, v9

    .line 533
    :goto_7
    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 534
    .line 535
    .line 536
    goto :goto_9

    .line 537
    :cond_19
    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 538
    .line 539
    const-string v0, "Power - Long Press - Global Actions"

    .line 540
    .line 541
    invoke-virtual {v1, v10, v0, v9}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;Z)Z

    .line 542
    .line 543
    .line 544
    if-eqz v6, :cond_1a

    .line 545
    .line 546
    invoke-virtual {v1, v9}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal(I)V

    .line 547
    .line 548
    .line 549
    goto :goto_8

    .line 550
    :cond_1a
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    .line 551
    .line 552
    .line 553
    :goto_8
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 554
    .line 555
    if-eqz v0, :cond_1b

    .line 556
    .line 557
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 558
    .line 559
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    .line 561
    .line 562
    const-string v0, "Power off menu"

    .line 563
    .line 564
    invoke-static {v7, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    :cond_1b
    :goto_9
    return-void

    .line 568
    nop

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onMultiPress(JIILandroid/view/KeyEvent;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p4, 0x3

    .line 7
    iget-object p5, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 8
    .line 9
    if-ne p3, p4, :cond_2

    .line 10
    .line 11
    iget p4, p5, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p4, v0, :cond_2

    .line 15
    .line 16
    iget-object p0, p5, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    .line 19
    .line 20
    const/16 p1, 0x108

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mActions:Ljava/util/List;

    .line 31
    .line 32
    check-cast p0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-boolean p0, p5, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnStemPrimary:Z

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    iget p0, p5, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    .line 42
    .line 43
    if-ne p0, v0, :cond_1

    .line 44
    .line 45
    iget-object p0, p5, Lcom/android/server/policy/PhoneWindowManager;->mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 46
    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    :try_start_0
    iget-object p1, p5, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    .line 50
    .line 51
    iget p0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-interface {p1, p0, p2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string p2, "Failed to start task "

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p5, Lcom/android/server/policy/PhoneWindowManager;->mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 67
    .line 68
    iget p2, p2, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p2, " from recents"

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string p2, "WindowManager"

    .line 83
    .line 84
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    invoke-static {p5, p3}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    iget-object p4, p5, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 92
    .line 93
    new-instance p5, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda2;

    .line 94
    .line 95
    invoke-direct {p5, p0, p3}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p4, p5, p1, p2}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(Ljava/lang/Runnable;J)V

    .line 99
    .line 100
    .line 101
    :goto_1
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 103
    .line 104
    move-wide v1, p1

    .line 105
    move v3, p3

    .line 106
    move v4, p4

    .line 107
    move-object v5, p5

    .line 108
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JIILandroid/view/KeyEvent;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPress(JLandroid/view/KeyEvent;I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 7
    .line 8
    iget-boolean p4, p3, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnStemPrimary:Z

    .line 9
    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    iget p4, p3, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p4, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p3, p3, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    .line 19
    .line 20
    new-instance p4, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-direct {p4, p0, v0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p4, p1, p2}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(Ljava/lang/Runnable;J)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 31
    .line 32
    iget-boolean p0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnPower:Z

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v4, 0x1

    .line 38
    move-wide v2, p1

    .line 39
    move v5, p4

    .line 40
    move-object v6, p3

    .line 41
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JIILandroid/view/KeyEvent;)V

    .line 42
    .line 43
    .line 44
    :goto_1
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onVeryLongPress()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->prepareForPossibleShutdown()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 15
    .line 16
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const-string v1, "Power - Very Long Press - Show Global Actions"

    .line 26
    .line 27
    const/16 v2, 0x2713

    .line 28
    .line 29
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final supportLongPress()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0

    .line 16
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    :goto_1
    return p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public supportVeryLongPress()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 12
    .line 13
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
