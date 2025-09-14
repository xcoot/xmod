.class final Lcom/android/server/wm/WindowManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAnimationDurationScaleUri:Landroid/net/Uri;

.field public final mDevEnableNonResizableMultiWindowUri:Landroid/net/Uri;

.field public final mDisableSecureWindowsUri:Landroid/net/Uri;

.field public final mDisplaySettingsPathUri:Landroid/net/Uri;

.field public final mForceDesktopModeOnExternalDisplaysUri:Landroid/net/Uri;

.field public final mForceResizableUri:Landroid/net/Uri;

.field public final mFreeformWindowUri:Landroid/net/Uri;

.field public final mImmersiveModeConfirmationsUri:Landroid/net/Uri;

.field public final mMaximumObscuringOpacityForTouchUri:Landroid/net/Uri;

.field public final mPolicyControlUri:Landroid/net/Uri;

.field public final mScreenModeUri:Landroid/net/Uri;

.field public final mTransitionAnimationScaleUri:Landroid/net/Uri;

.field public final mWindowAnimationScaleUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    new-instance v2, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "accessibility_display_inversion_enabled"

    .line 16
    .line 17
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string/jumbo v3, "window_animation_scale"

    .line 22
    .line 23
    .line 24
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iput-object v3, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mWindowAnimationScaleUri:Landroid/net/Uri;

    .line 29
    .line 30
    const-string/jumbo v4, "transition_animation_scale"

    .line 31
    .line 32
    .line 33
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mTransitionAnimationScaleUri:Landroid/net/Uri;

    .line 38
    .line 39
    const-string v5, "animator_duration_scale"

    .line 40
    .line 41
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mAnimationDurationScaleUri:Landroid/net/Uri;

    .line 46
    .line 47
    const-string v6, "immersive_mode_confirmations"

    .line 48
    .line 49
    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    iput-object v6, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mImmersiveModeConfirmationsUri:Landroid/net/Uri;

    .line 54
    .line 55
    const-string v7, "disable_secure_windows"

    .line 56
    .line 57
    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    iput-object v7, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisableSecureWindowsUri:Landroid/net/Uri;

    .line 62
    .line 63
    const-string/jumbo v8, "policy_control"

    .line 64
    .line 65
    .line 66
    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    iput-object v8, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mPolicyControlUri:Landroid/net/Uri;

    .line 71
    .line 72
    const-string v9, "force_desktop_mode_on_external_displays"

    .line 73
    .line 74
    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    iput-object v9, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mForceDesktopModeOnExternalDisplaysUri:Landroid/net/Uri;

    .line 79
    .line 80
    const-string v10, "enable_freeform_support"

    .line 81
    .line 82
    invoke-static {v10}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    iput-object v10, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mFreeformWindowUri:Landroid/net/Uri;

    .line 87
    .line 88
    const-string v11, "force_resizable_activities"

    .line 89
    .line 90
    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    iput-object v11, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mForceResizableUri:Landroid/net/Uri;

    .line 95
    .line 96
    const-string v12, "enable_non_resizable_multi_window"

    .line 97
    .line 98
    invoke-static {v12}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    iput-object v12, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDevEnableNonResizableMultiWindowUri:Landroid/net/Uri;

    .line 103
    .line 104
    const-string/jumbo v13, "wm_display_settings_path"

    .line 105
    .line 106
    .line 107
    invoke-static {v13}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    iput-object v13, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisplaySettingsPathUri:Landroid/net/Uri;

    .line 112
    .line 113
    const-string/jumbo v14, "maximum_obscuring_opacity_for_touch"

    .line 114
    .line 115
    .line 116
    invoke-static {v14}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    iput-object v14, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mMaximumObscuringOpacityForTouchUri:Landroid/net/Uri;

    .line 121
    .line 122
    const-string/jumbo v15, "screen_mode_setting"

    .line 123
    .line 124
    .line 125
    invoke-static {v15}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    iput-object v15, v0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mScreenModeUri:Landroid/net/Uri;

    .line 130
    .line 131
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    move-object/from16 v16, v15

    .line 138
    .line 139
    const/4 v15, 0x0

    .line 140
    move-object/from16 v17, v14

    .line 141
    .line 142
    const/4 v14, -0x1

    .line 143
    invoke-virtual {v1, v2, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v3, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v4, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v5, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v6, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v7, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v8, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v9, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v10, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v11, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v12, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v13, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 177
    .line 178
    .line 179
    move-object/from16 v2, v17

    .line 180
    .line 181
    invoke-virtual {v1, v2, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 182
    .line 183
    .line 184
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SCREEN_MODE_SETTING:Z

    .line 185
    .line 186
    if-eqz v2, :cond_0

    .line 187
    .line 188
    move-object/from16 v2, v16

    .line 189
    .line 190
    invoke-virtual {v1, v2, v15, v0, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 191
    .line 192
    .line 193
    :cond_0
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mImmersiveModeConfirmationsUri:Landroid/net/Uri;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x1

    .line 11
    if-nez p1, :cond_14

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mPolicyControlUri:Landroid/net/Uri;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_7

    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mForceDesktopModeOnExternalDisplaysUri:Landroid/net/Uri;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz p1, :cond_4

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "force_desktop_mode_on_external_displays"

    .line 41
    .line 42
    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move v0, v1

    .line 50
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 51
    .line 52
    iget-boolean p1, p0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    .line 53
    .line 54
    if-ne p1, v0, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 58
    .line 59
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 60
    .line 61
    .line 62
    monitor-enter p1

    .line 63
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->updateDisplayImePolicyCache()V

    .line 68
    .line 69
    .line 70
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 72
    .line 73
    .line 74
    :goto_1
    return-void

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mFreeformWindowUri:Landroid/net/Uri;

    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_8

    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 98
    .line 99
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    const-string v2, "android.software.freeform_window_management"

    .line 106
    .line 107
    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-nez p2, :cond_6

    .line 112
    .line 113
    const-string p2, "enable_freeform_support"

    .line 114
    .line 115
    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    move v0, v1

    .line 123
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 124
    .line 125
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 126
    .line 127
    iget-boolean v1, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 128
    .line 129
    if-eq v1, v0, :cond_7

    .line 130
    .line 131
    iput-boolean v0, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 132
    .line 133
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 134
    .line 135
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 136
    .line 137
    .line 138
    monitor-enter p1

    .line 139
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->onSettingsRetrieved()V

    .line 144
    .line 145
    .line 146
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :catchall_1
    move-exception p0

    .line 152
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :cond_7
    :goto_3
    return-void

    .line 158
    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mForceResizableUri:Landroid/net/Uri;

    .line 159
    .line 160
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_a

    .line 165
    .line 166
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 167
    .line 168
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    const-string p2, "force_resizable_activities"

    .line 175
    .line 176
    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_9

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_9
    move v0, v1

    .line 184
    :goto_4
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 185
    .line 186
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 187
    .line 188
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    .line 189
    .line 190
    return-void

    .line 191
    :cond_a
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDevEnableNonResizableMultiWindowUri:Landroid/net/Uri;

    .line 192
    .line 193
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_c

    .line 198
    .line 199
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 200
    .line 201
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const-string p2, "enable_non_resizable_multi_window"

    .line 208
    .line 209
    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-eqz p1, :cond_b

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_b
    move v0, v1

    .line 217
    :goto_5
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 218
    .line 219
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 220
    .line 221
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDevEnableNonResizableMultiWindow:Z

    .line 222
    .line 223
    return-void

    .line 224
    :cond_c
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisplaySettingsPathUri:Landroid/net/Uri;

    .line 225
    .line 226
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-eqz p1, :cond_d

    .line 231
    .line 232
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 233
    .line 234
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    const-string/jumbo p2, "wm_display_settings_path"

    .line 241
    .line 242
    .line 243
    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 248
    .line 249
    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 250
    .line 251
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 252
    .line 253
    .line 254
    monitor-enter v2

    .line 255
    :try_start_4
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 256
    .line 257
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    .line 258
    .line 259
    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->setBaseSettingsFilePath(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 263
    .line 264
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 265
    .line 266
    new-instance p2, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda6;

    .line 267
    .line 268
    const/4 v0, 0x1

    .line 269
    invoke-direct {p2, v0, p0}, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, p2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 273
    .line 274
    .line 275
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 276
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :catchall_2
    move-exception p0

    .line 281
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 282
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 283
    .line 284
    .line 285
    throw p0

    .line 286
    :cond_d
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mMaximumObscuringOpacityForTouchUri:Landroid/net/Uri;

    .line 287
    .line 288
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    if-eqz p1, :cond_e

    .line 293
    .line 294
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateMaximumObscuringOpacityForTouch()V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :cond_e
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mDisableSecureWindowsUri:Landroid/net/Uri;

    .line 299
    .line 300
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    if-eqz p1, :cond_f

    .line 305
    .line 306
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateDisableSecureWindows()V

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    :cond_f
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SCREEN_MODE_SETTING:Z

    .line 311
    .line 312
    if-eqz p1, :cond_10

    .line 313
    .line 314
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mScreenModeUri:Landroid/net/Uri;

    .line 315
    .line 316
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-eqz p1, :cond_10

    .line 321
    .line 322
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 323
    .line 324
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 325
    .line 326
    const/4 p1, 0x0

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfiguration(Landroid/content/res/Configuration;)Z

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :cond_10
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mWindowAnimationScaleUri:Landroid/net/Uri;

    .line 332
    .line 333
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    if-eqz p1, :cond_11

    .line 338
    .line 339
    move v0, v1

    .line 340
    goto :goto_6

    .line 341
    :cond_11
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mTransitionAnimationScaleUri:Landroid/net/Uri;

    .line 342
    .line 343
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-eqz p1, :cond_12

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_12
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->mAnimationDurationScaleUri:Landroid/net/Uri;

    .line 351
    .line 352
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    if-eqz p1, :cond_13

    .line 357
    .line 358
    const/4 v0, 0x2

    .line 359
    :goto_6
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 360
    .line 361
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 362
    .line 363
    const/16 p2, 0x33

    .line 364
    .line 365
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 370
    .line 371
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 372
    .line 373
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 374
    .line 375
    .line 376
    :cond_13
    return-void

    .line 377
    :cond_14
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateSystemUiSettings(Z)V

    .line 378
    .line 379
    .line 380
    return-void
.end method

.method public final updateDisableSecureWindows()V
    .locals 3

    .line 1
    const-string/jumbo v0, "ro.debuggable"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, "disable_secure_windows"

    .line 21
    .line 22
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 30
    .line 31
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisableSecureWindows:Z

    .line 32
    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 39
    .line 40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 41
    .line 42
    .line 43
    monitor-enter v0

    .line 44
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 45
    .line 46
    iput-boolean v1, v2, Lcom/android/server/wm/WindowManagerService;->mDisableSecureWindows:Z

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->refreshSecureSurfaceState()V

    .line 53
    .line 54
    .line 55
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :catch_0
    return-void
.end method

.method public final updateMaximumObscuringOpacityForTouch()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    const-string/jumbo v2, "maximum_obscuring_opacity_for_touch"

    .line 12
    .line 13
    .line 14
    const v3, 0x3f4ccccd    # 0.8f

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mMaximumObscuringOpacityForTouch:F

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 24
    .line 25
    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mMaximumObscuringOpacityForTouch:F

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    cmpg-float v0, v0, v1

    .line 29
    .line 30
    if-ltz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 33
    .line 34
    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mMaximumObscuringOpacityForTouch:F

    .line 35
    .line 36
    const/high16 v1, 0x3f800000    # 1.0f

    .line 37
    .line 38
    cmpl-float v0, v0, v1

    .line 39
    .line 40
    if-lez v0, :cond_1

    .line 41
    .line 42
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 43
    .line 44
    iput v3, p0, Lcom/android/server/wm/WindowManagerService;->mMaximumObscuringOpacityForTouch:F

    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final updateSystemUiSettings(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-boolean v2, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    sget-boolean v2, Landroid/view/ViewRootImpl;->CLIENT_IMMERSIVE_CONFIRMATION:Z

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v2, p1, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 33
    .line 34
    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 37
    .line 38
    iget-object v2, p1, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/android/server/wm/ImmersiveModeConfirmation;->loadSetting(Landroid/content/Context;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    sget-boolean v3, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 47
    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    iget-object p1, p1, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_4

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 60
    .line 61
    iget v2, p1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 62
    .line 63
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->loadSetting(Landroid/content/Context;)Z

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    move v2, v1

    .line 69
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string/jumbo v4, "policy_control"

    .line 79
    .line 80
    .line 81
    const/4 v5, -0x2

    .line 82
    invoke-static {p1, v4, v5}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    sget-object p1, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;

    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :catchall_1
    move-exception p1

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    invoke-static {v3}, Lcom/android/server/wm/PolicyControl;->setFilters(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sput-object v3, Lcom/android/server/wm/PolicyControl;->sSettingValue:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    goto :goto_3

    .line 106
    :goto_2
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v5, "Error loading policy control, value="

    .line 109
    .line 110
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const-string v4, "PolicyControl"

    .line 121
    .line 122
    invoke-static {v4, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .line 124
    .line 125
    :goto_3
    or-int p1, v2, v1

    .line 126
    .line 127
    if-eqz p1, :cond_5

    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 134
    .line 135
    .line 136
    :cond_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 143
    .line 144
    .line 145
    throw p0
.end method
