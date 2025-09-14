.class public final Lcom/android/server/policy/PhoneWindowManager$7;
.super Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$7;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 7
    .line 8
    const/16 p1, 0x1a

    .line 9
    .line 10
    const/16 p2, 0x108

    .line 11
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 17
    .line 18
    const/16 p1, 0x19

    .line 19
    .line 20
    const/16 p2, 0x18

    .line 21
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 27
    .line 28
    const/16 p1, 0x19

    .line 29
    .line 30
    const/16 p2, 0x1a

    .line 31
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_2
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 37
    .line 38
    const/16 p1, 0x17

    .line 39
    .line 40
    const/4 p2, 0x4

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_3
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 46
    .line 47
    const/4 p1, 0x4

    .line 48
    const/16 p2, 0x14

    .line 49
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 2
    :pswitch_0
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_GLOBAL_ACTION:Z

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/WmScreenshotController;

    .line 6
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController;->mHandler:Landroid/os/Handler;

    .line 7
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController;->mTakeScreenshotRunnable:Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 8
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 9
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 10
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public cancel(Landroid/view/KeyEvent;Z)V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager$7;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    return-void

    .line 11
    :pswitch_0
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_SCREENSHOT_SIDE_KEY:Z

    if-eqz v1, :cond_a

    .line 12
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 13
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    if-eqz v1, :cond_9

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 14
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyUpTime:[J

    const-string v6, "PhoneWindowManagerExt"

    if-eqz p2, :cond_7

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x1a

    if-ne v7, v8, :cond_1

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    aput-wide v7, v5, v4

    goto :goto_0

    :cond_1
    const/16 v8, 0x19

    if-ne v7, v8, :cond_2

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    aput-wide v7, v5, v3

    .line 18
    :cond_2
    :goto_0
    aget-wide v7, v5, v4

    .line 19
    aget-wide v9, v5, v3

    cmp-long v11, v7, v1

    if-eqz v11, :cond_5

    cmp-long v12, v9, v1

    if-nez v12, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    sget-object v11, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 22
    iget-wide v13, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotTriggeredTime:J

    sub-long v13, v11, v13

    const-wide/16 v15, 0x96

    add-long v17, v7, v15

    cmp-long v17, v11, v17

    if-gtz v17, :cond_4

    add-long/2addr v15, v9

    cmp-long v11, v11, v15

    if-gtz v11, :cond_4

    const-wide/16 v11, 0x3e8

    cmp-long v11, v13, v11

    if-gez v11, :cond_4

    .line 23
    const-string/jumbo v7, "take a screenshot, this is triggered by keyCombination"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object v7, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 25
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {v7, v3, v4}, Lcom/android/server/wm/WindowManagerServiceExt;->sendTakeScreenshotRunnable(II)V

    .line 26
    sget-boolean v7, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v7, :cond_7

    .line 27
    const-string v7, "HWB1007"

    invoke-static {v7}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    goto :goto_3

    .line 28
    :cond_4
    iget-boolean v11, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionsByKeyCombnation:Z

    if-nez v11, :cond_7

    sub-long/2addr v7, v9

    .line 29
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 30
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Screenshot by the key combination is not triggered, time="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 31
    :cond_5
    :goto_1
    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionsByKeyCombnation:Z

    if-nez v0, :cond_a

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Waiting for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v11, :cond_6

    const-string/jumbo v1, "power"

    goto :goto_2

    :cond_6
    const-string/jumbo v1, "volume down"

    :goto_2
    const-string v2, " key up event to take a screenshot"

    .line 33
    invoke-static {v0, v1, v2, v6}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 34
    :cond_7
    :goto_3
    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionsByKeyCombnation:Z

    if-eqz v7, :cond_8

    .line 35
    const-string v7, "The key combination long press event was consumed by global action"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_8
    aput-wide v1, v5, v4

    .line 37
    aput-wide v1, v5, v3

    .line 38
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    .line 39
    iput-wide v1, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotTriggeredTime:J

    .line 40
    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionsByKeyCombnation:Z

    goto :goto_4

    .line 41
    :cond_9
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    :cond_a
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final execute()V
    .locals 7

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager$7;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v4, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 13
    .line 14
    const/16 v1, 0x11

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 34
    .line 35
    iput-boolean v3, v4, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 36
    .line 37
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_GLOBAL_ACTION:Z

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    .line 47
    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    const-string v0, "WindowManager"

    .line 51
    .line 52
    const-string v1, "Global Action is canceled because of factory mode"

    .line 53
    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v5, v4, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 59
    .line 60
    const/16 v6, 0xa

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    .line 64
    .line 65
    iget-object v5, v4, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 66
    .line 67
    invoke-virtual {v5, v6, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 72
    .line 73
    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_SCREENSHOT_SIDE_KEY:Z

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 81
    .line 82
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotEnabled:Z

    .line 83
    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyUpTime:[J

    .line 87
    .line 88
    const-wide/16 v4, 0x0

    .line 89
    .line 90
    aput-wide v4, v1, v2

    .line 91
    .line 92
    aput-wide v4, v1, v3

    .line 93
    .line 94
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    .line 95
    .line 96
    iput-wide v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotTriggeredTime:J

    .line 97
    .line 98
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mGlobalActionsByKeyCombnation:Z

    .line 99
    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsScreenshotTriggered:Z

    .line 103
    .line 104
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    iput-wide v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotTriggeredTime:J

    .line 109
    .line 110
    const-string p0, "PhoneWindowManagerExt"

    .line 111
    .line 112
    const-string v0, "interceptKeyCombinationScreenshotChord triggered"

    .line 113
    .line 114
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    sget-object v0, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mWindowManagerFuncs:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 121
    .line 122
    invoke-virtual {p0, v3, v2}, Lcom/android/server/wm/WindowManagerServiceExt;->sendTakeScreenshotRunnable(II)V

    .line 123
    .line 124
    .line 125
    :cond_3
    :goto_1
    return-void

    .line 126
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 127
    .line 128
    iput-boolean v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 131
    .line 132
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 133
    .line 134
    const/16 v4, 0x12

    .line 135
    .line 136
    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 140
    .line 141
    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 146
    .line 147
    .line 148
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 149
    .line 150
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 155
    .line 156
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    .line 157
    .line 158
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 159
    .line 160
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 161
    .line 162
    const/16 v1, 0x13

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 168
    .line 169
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 174
    .line 175
    .line 176
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    .line 179
    .line 180
    .line 181
    move-result-wide v2

    .line 182
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 187
    .line 188
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 189
    .line 190
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 191
    .line 192
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 193
    .line 194
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScreenshotChordKeyTimeout()J

    .line 199
    .line 200
    .line 201
    move-result-wide v0

    .line 202
    const-string/jumbo v4, "systemui"

    .line 203
    .line 204
    .line 205
    const-string/jumbo v5, "screenshot_keychord_delay"

    .line 206
    .line 207
    .line 208
    invoke-static {v4, v5, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 209
    .line 210
    .line 211
    move-result-wide v0

    .line 212
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 213
    .line 214
    invoke-virtual {v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-eqz v4, :cond_4

    .line 219
    .line 220
    const/high16 v4, 0x40200000    # 2.5f

    .line 221
    .line 222
    long-to-float v0, v0

    .line 223
    mul-float/2addr v0, v4

    .line 224
    float-to-long v0, v0

    .line 225
    :cond_4
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 226
    .line 227
    const/16 v5, 0x10

    .line 228
    .line 229
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    .line 231
    .line 232
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 233
    .line 234
    invoke-virtual {p0, v5, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKeyInterceptDelayMs()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->getKeyInterceptDelayMs()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0

    .line 11
    :pswitch_0
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    return-wide v0

    .line 14
    :pswitch_1
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    return-wide v0

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public preCondition()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->preCondition()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {v0, p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_SCREENSHOT_SIDE_KEY:Z

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$7;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 33
    .line 34
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 35
    .line 36
    const-string/jumbo v1, "setScreenshotEnabled, screenOnFully="

    .line 37
    .line 38
    .line 39
    const-string v2, "PhoneWindowManagerExt"

    .line 40
    .line 41
    invoke-static {v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenshotEnabled:Z

    .line 46
    .line 47
    return v0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
