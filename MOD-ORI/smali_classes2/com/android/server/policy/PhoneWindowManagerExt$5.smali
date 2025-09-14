.class public final Lcom/android/server/policy/PhoneWindowManagerExt$5;
.super Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$5;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 7
    .line 8
    const/16 p1, 0x18

    .line 9
    .line 10
    const/16 p2, 0x1a

    .line 11
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$5;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 17
    .line 18
    const/16 p1, 0xbb

    .line 19
    .line 20
    const/4 p2, 0x4

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final cancel()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$5;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mStopLockTaskModePinnedChordLongPress:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda7;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$5;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAccessibilityShortcutVolupPower:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAccessibilityShortcutVolupPower:Z

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-class v2, Landroid/app/AppOpsManager;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/app/AppOpsManager;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 41
    .line 42
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 49
    .line 50
    const/16 v3, 0x17

    .line 51
    .line 52
    const/16 v4, 0x3e8

    .line 53
    .line 54
    invoke-virtual {v2, v3, v4, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const-string/jumbo v5, "setAppOpsPermissionIfNeeded code=23 p_name="

    .line 59
    .line 60
    .line 61
    const-string v6, " mode="

    .line 62
    .line 63
    const-string v7, "PhoneWindowManagerExt"

    .line 64
    .line 65
    invoke-static {v2, v5, v1, v6, v7}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 71
    .line 72
    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    :cond_2
    const-string/jumbo v0, "start Accessibility Shortcut Volup + Power"

    .line 76
    .line 77
    .line 78
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAccessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    .line 82
    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    new-instance v0, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-direct {v0, v1}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;-><init>(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAccessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    .line 93
    .line 94
    :cond_3
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mAccessibilityDirectAccessController:Lcom/android/internal/accessibility/AccessibilityDirectAccessController;

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityDirectAccessController;->performAccessibilityDirectAccess()V

    .line 97
    .line 98
    .line 99
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 100
    .line 101
    if-eqz p0, :cond_4

    .line 102
    .line 103
    const-string p0, "HWB1008"

    .line 104
    .line 105
    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->saLogForBasic(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_0
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final execute()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$5;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 7
    .line 8
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v1

    .line 17
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 18
    .line 19
    iget-object v4, v3, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    move v1, v2

    .line 36
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mStopLockTaskModePinnedChordLongPress:Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda7;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mHandler:Lcom/android/server/policy/PhoneWindowManagerExt$PolicyExtHandler;

    .line 53
    .line 54
    const-wide/16 v2, 0x1f4

    .line 55
    .line 56
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    :goto_1
    const-string p0, "Can not stop SystemLockTaskMode. lockTaskModeEnabled="

    .line 61
    .line 62
    const-string v3, " touchExplorationEnabled="

    .line 63
    .line 64
    const-string v4, " interactionControlEnabled="

    .line 65
    .line 66
    invoke-static {p0, v0, v3, v1, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string v0, "PhoneWindowManagerExt"

    .line 71
    .line 72
    invoke-static {v0, p0, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 73
    .line 74
    .line 75
    :goto_2
    return-void

    .line 76
    :pswitch_0
    const/4 v0, 0x1

    .line 77
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$5;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAccessibilityShortcutVolupPower:Z

    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public preCondition()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$5;->$r8$classId:I

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
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
