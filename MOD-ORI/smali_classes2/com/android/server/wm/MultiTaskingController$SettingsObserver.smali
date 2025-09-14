.class public final Lcom/android/server/wm/MultiTaskingController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEdgeUri:Landroid/net/Uri;

.field public final mFreeformCaptionTypeUri:Landroid/net/Uri;

.field public final mMinimalBatteryUseUri:Landroid/net/Uri;

.field public final mNavigationBarGestureWhileHiddenUri:Landroid/net/Uri;

.field public final mNavigationBarGesturesDetailTypeUri:Landroid/net/Uri;

.field public final mNotificationBubbleUri:Landroid/net/Uri;

.field public final mSmartPopupViewPackageListUri:Landroid/net/Uri;

.field public final mSplitGestureUri:Landroid/net/Uri;

.field public final mSwipeForPopUpViewCornerAreaUri:Landroid/net/Uri;

.field public final mTaskbarStyleUri:Landroid/net/Uri;

.field public final mUriList:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    .line 12
    .line 13
    const-string/jumbo p1, "navigation_bar_gesture_while_hidden"

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNavigationBarGestureWhileHiddenUri:Landroid/net/Uri;

    .line 21
    .line 22
    const-string/jumbo p1, "navigation_bar_gesture_detail_type"

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNavigationBarGesturesDetailTypeUri:Landroid/net/Uri;

    .line 30
    .line 31
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    const-string p1, "floating_noti_package_list"

    .line 36
    .line 37
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    .line 42
    .line 43
    const-string/jumbo p1, "notification_bubbles"

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNotificationBubbleUri:Landroid/net/Uri;

    .line 51
    .line 52
    :cond_0
    const-string p1, "freeform_corner_gesture_level"

    .line 53
    .line 54
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSwipeForPopUpViewCornerAreaUri:Landroid/net/Uri;

    .line 59
    .line 60
    const-string/jumbo p1, "minimal_battery_use"

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mMinimalBatteryUseUri:Landroid/net/Uri;

    .line 68
    .line 69
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    .line 70
    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    const-string p1, "freeform_caption_type"

    .line 74
    .line 75
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mFreeformCaptionTypeUri:Landroid/net/Uri;

    .line 80
    .line 81
    :cond_1
    const-string/jumbo p1, "open_in_split_screen_view"

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSplitGestureUri:Landroid/net/Uri;

    .line 89
    .line 90
    const-string p1, "edge_enable"

    .line 91
    .line 92
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mEdgeUri:Landroid/net/Uri;

    .line 97
    .line 98
    const-string/jumbo p1, "taskbar_style_type"

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mTaskbarStyleUri:Landroid/net/Uri;

    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p0, "MultiTaskingController"

    .line 4
    .line 5
    const-string p1, "SettingsObserver_onChange: uri is null"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->readSettings(ZLandroid/net/Uri;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final readSettings(ZLandroid/net/Uri;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNavigationBarGestureWhileHiddenUri:Landroid/net/Uri;

    .line 20
    .line 21
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_2

    .line 26
    .line 27
    :cond_0
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 28
    .line 29
    const-string/jumbo v6, "navigation_bar_gesture_while_hidden"

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-ne v6, v3, :cond_1

    .line 37
    .line 38
    move v6, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v6, v4

    .line 41
    :goto_0
    iput-boolean v6, v5, Lcom/android/server/wm/MultiTaskingController;->mIsNavigationModeGesture:Z

    .line 42
    .line 43
    :cond_2
    if-nez p1, :cond_3

    .line 44
    .line 45
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNavigationBarGesturesDetailTypeUri:Landroid/net/Uri;

    .line 46
    .line 47
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_5

    .line 52
    .line 53
    :cond_3
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 54
    .line 55
    const-string/jumbo v6, "navigation_bar_gesture_detail_type"

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-ne v6, v3, :cond_4

    .line 63
    .line 64
    move v6, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_4
    move v6, v4

    .line 67
    :goto_1
    iput-boolean v6, v5, Lcom/android/server/wm/MultiTaskingController;->mIsGestureTypeSideAndBottom:Z

    .line 68
    .line 69
    :cond_5
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 70
    .line 71
    if-eqz v5, :cond_7

    .line 72
    .line 73
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 74
    .line 75
    iget-object v5, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 76
    .line 77
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 78
    .line 79
    invoke-virtual {v5}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_7

    .line 84
    .line 85
    if-nez p1, :cond_6

    .line 86
    .line 87
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    .line 88
    .line 89
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-nez v5, :cond_6

    .line 94
    .line 95
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNotificationBubbleUri:Landroid/net/Uri;

    .line 96
    .line 97
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_7

    .line 102
    .line 103
    :cond_6
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 104
    .line 105
    iget-object v5, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 106
    .line 107
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 108
    .line 109
    const-string/jumbo v6, "setting_changed"

    .line 110
    .line 111
    .line 112
    iget-object v7, v5, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 113
    .line 114
    const/16 v8, 0x68

    .line 115
    .line 116
    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    .line 122
    iget-object v5, v5, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 123
    .line 124
    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    .line 126
    .line 127
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 128
    .line 129
    iget-object v5, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 130
    .line 131
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 132
    .line 133
    const-string/jumbo v6, "setting_changed"

    .line 134
    .line 135
    .line 136
    iget-object v7, v5, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 137
    .line 138
    const/16 v8, 0x67

    .line 139
    .line 140
    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    .line 146
    iget-object v5, v5, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 147
    .line 148
    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    .line 150
    .line 151
    :cond_7
    if-nez p1, :cond_8

    .line 152
    .line 153
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSwipeForPopUpViewCornerAreaUri:Landroid/net/Uri;

    .line 154
    .line 155
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-eqz v5, :cond_a

    .line 160
    .line 161
    :cond_8
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 162
    .line 163
    const-string v6, "freeform_corner_gesture_level"

    .line 164
    .line 165
    const/4 v7, 0x2

    .line 166
    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    invoke-static {v6}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getCornerGestureCustomValue(I)I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    iget-object v7, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 175
    .line 176
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 177
    .line 178
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 179
    .line 180
    .line 181
    monitor-enter v7

    .line 182
    :try_start_0
    iget-object v8, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 183
    .line 184
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 185
    .line 186
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getStartedUserIdsLocked()Ljava/util/ArrayList;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    if-eqz v9, :cond_9

    .line 199
    .line 200
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    check-cast v9, Ljava/lang/Integer;

    .line 205
    .line 206
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result v13

    .line 210
    iget-object v9, v5, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 211
    .line 212
    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 213
    .line 214
    iget-object v10, v9, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 215
    .line 216
    const-string v11, "corner_gesture_custom_value"

    .line 217
    .line 218
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    const/16 v16, 0x0

    .line 223
    .line 224
    const/4 v14, 0x1

    .line 225
    const/4 v15, 0x1

    .line 226
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;)V

    .line 227
    .line 228
    .line 229
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateCustomBoundsIfNeeded()V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :catchall_0
    move-exception v0

    .line 234
    goto/16 :goto_a

    .line 235
    .line 236
    :cond_9
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 238
    .line 239
    .line 240
    :cond_a
    if-nez p1, :cond_b

    .line 241
    .line 242
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mMinimalBatteryUseUri:Landroid/net/Uri;

    .line 243
    .line 244
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-eqz v5, :cond_d

    .line 249
    .line 250
    :cond_b
    const-string/jumbo v5, "minimal_battery_use"

    .line 251
    .line 252
    .line 253
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 258
    .line 259
    iget-object v6, v6, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 260
    .line 261
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 262
    .line 263
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 264
    .line 265
    .line 266
    monitor-enter v6

    .line 267
    :try_start_1
    iget-object v7, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 268
    .line 269
    if-ne v5, v3, :cond_c

    .line 270
    .line 271
    move v5, v3

    .line 272
    goto :goto_3

    .line 273
    :cond_c
    move v5, v4

    .line 274
    :goto_3
    iput-boolean v5, v7, Lcom/android/server/wm/MultiTaskingController;->mIsMinimalBatteryUse:Z

    .line 275
    .line 276
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 277
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 278
    .line 279
    .line 280
    :cond_d
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    .line 281
    .line 282
    if-eqz v5, :cond_10

    .line 283
    .line 284
    if-nez p1, :cond_e

    .line 285
    .line 286
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mFreeformCaptionTypeUri:Landroid/net/Uri;

    .line 287
    .line 288
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-eqz v5, :cond_10

    .line 293
    .line 294
    :cond_e
    const-string v5, "freeform_caption_type"

    .line 295
    .line 296
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 301
    .line 302
    iget-object v6, v6, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 303
    .line 304
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 305
    .line 306
    iget-object v7, v6, Lcom/android/server/wm/FreeformController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 307
    .line 308
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 309
    .line 310
    .line 311
    monitor-enter v7

    .line 312
    :try_start_2
    iget v8, v6, Lcom/android/server/wm/FreeformController;->mFreeformCaptionType:I

    .line 313
    .line 314
    if-eq v8, v5, :cond_f

    .line 315
    .line 316
    iput v5, v6, Lcom/android/server/wm/FreeformController;->mFreeformCaptionType:I

    .line 317
    .line 318
    goto :goto_4

    .line 319
    :catchall_1
    move-exception v0

    .line 320
    goto :goto_5

    .line 321
    :cond_f
    :goto_4
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 322
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 323
    .line 324
    .line 325
    goto :goto_6

    .line 326
    :goto_5
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 327
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 328
    .line 329
    .line 330
    throw v0

    .line 331
    :cond_10
    :goto_6
    if-nez p1, :cond_11

    .line 332
    .line 333
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSplitGestureUri:Landroid/net/Uri;

    .line 334
    .line 335
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    if-eqz v5, :cond_13

    .line 340
    .line 341
    :cond_11
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 342
    .line 343
    const-string/jumbo v6, "open_in_split_screen_view"

    .line 344
    .line 345
    .line 346
    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    if-ne v6, v3, :cond_12

    .line 351
    .line 352
    move v6, v3

    .line 353
    goto :goto_7

    .line 354
    :cond_12
    move v6, v4

    .line 355
    :goto_7
    iput-boolean v6, v5, Lcom/android/server/wm/MultiTaskingController;->mIsFullToSplitEnabled:Z

    .line 356
    .line 357
    :cond_13
    if-nez p1, :cond_14

    .line 358
    .line 359
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mEdgeUri:Landroid/net/Uri;

    .line 360
    .line 361
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    if-eqz v5, :cond_17

    .line 366
    .line 367
    :cond_14
    const-string v5, "edge_enable"

    .line 368
    .line 369
    const/4 v6, -0x2

    .line 370
    invoke-static {v2, v5, v4, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 371
    .line 372
    .line 373
    move-result v5

    .line 374
    if-ne v5, v3, :cond_15

    .line 375
    .line 376
    move v5, v3

    .line 377
    goto :goto_8

    .line 378
    :cond_15
    move v5, v4

    .line 379
    :goto_8
    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 380
    .line 381
    iget-object v6, v6, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 382
    .line 383
    iget-object v7, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 384
    .line 385
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 386
    .line 387
    .line 388
    monitor-enter v7

    .line 389
    :try_start_4
    iget-object v6, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 390
    .line 391
    iget-object v6, v6, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 392
    .line 393
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 394
    .line 395
    iget-object v6, v6, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 396
    .line 397
    if-eqz v6, :cond_16

    .line 398
    .line 399
    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 400
    .line 401
    iput-boolean v5, v6, Lcom/android/server/wm/DisplayPolicy;->mEdgeEnabled:Z

    .line 402
    .line 403
    :cond_16
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 404
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 405
    .line 406
    .line 407
    :cond_17
    if-nez p1, :cond_18

    .line 408
    .line 409
    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mTaskbarStyleUri:Landroid/net/Uri;

    .line 410
    .line 411
    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-eqz v1, :cond_1a

    .line 416
    .line 417
    :cond_18
    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 418
    .line 419
    const-string/jumbo v1, "taskbar_style_type"

    .line 420
    .line 421
    .line 422
    invoke-static {v2, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    if-nez v1, :cond_19

    .line 427
    .line 428
    goto :goto_9

    .line 429
    :cond_19
    move v3, v4

    .line 430
    :goto_9
    iput-boolean v3, v0, Lcom/android/server/wm/MultiTaskingController;->mIsTaskbarAutoHideStyle:Z

    .line 431
    .line 432
    :cond_1a
    return-void

    .line 433
    :catchall_2
    move-exception v0

    .line 434
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 435
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 436
    .line 437
    .line 438
    throw v0

    .line 439
    :catchall_3
    move-exception v0

    .line 440
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 441
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 442
    .line 443
    .line 444
    throw v0

    .line 445
    :goto_a
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 446
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 447
    .line 448
    .line 449
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SettingsObserver{mUriList="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string/jumbo p0, "}"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
