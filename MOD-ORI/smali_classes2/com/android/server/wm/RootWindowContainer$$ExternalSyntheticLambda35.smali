.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda35;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->resetAdjacentTaskFragment()V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    iput-object p0, p1, Lcom/android/server/wm/TaskFragment;->mCompanionTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 20
    .line 21
    sget-object p0, Landroid/window/TaskFragmentAnimationParams;->DEFAULT:Landroid/window/TaskFragmentAnimationParams;

    .line 22
    .line 23
    iput-object p0, p1, Lcom/android/server/wm/TaskFragment;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    invoke-virtual {p1, p0, p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    new-instance p0, Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskFragment;->setRelativeEmbeddedBounds(Landroid/graphics/Rect;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->updateRequestedOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void

    .line 46
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    .line 47
    .line 48
    iget-object p0, p1, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 49
    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    const-string p0, "ActivityTaskManager"

    .line 53
    .line 54
    const-string v0, "awakeFromSleeping: previously pausing activity didn\'t pause"

    .line 55
    .line 56
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object p0, p1, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void

    .line 66
    :pswitch_1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 67
    .line 68
    const-string p0, "exit_pip"

    .line 69
    .line 70
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->clearWaitForEnteringPinnedMode(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_2
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setSecureLocked(Z)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_3
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 85
    .line 86
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateKeepClearAreas()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_4
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 100
    .line 101
    iget v1, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 102
    .line 103
    const/4 p0, -0x1

    .line 104
    if-ne v1, p0, :cond_3

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 108
    .line 109
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 110
    .line 111
    iget-object v3, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 112
    .line 113
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 114
    .line 115
    const/4 v7, 0x3

    .line 116
    if-eqz p0, :cond_4

    .line 117
    .line 118
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 119
    .line 120
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 121
    .line 122
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-eqz p0, :cond_6

    .line 127
    .line 128
    if-eq p0, v7, :cond_6

    .line 129
    .line 130
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 131
    .line 132
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 133
    .line 134
    iget v0, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 135
    .line 136
    const/4 v1, 0x0

    .line 137
    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const/4 p0, 0x0

    .line 141
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_4
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 148
    .line 149
    const/4 v5, 0x0

    .line 150
    const-string v6, "attempt-to-be-visible"

    .line 151
    .line 152
    const/4 v4, 0x1

    .line 153
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_5

    .line 158
    .line 159
    if-ne p0, v7, :cond_6

    .line 160
    .line 161
    :cond_5
    const/4 p0, 0x1

    .line 162
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 163
    .line 164
    .line 165
    :cond_6
    :goto_1
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
