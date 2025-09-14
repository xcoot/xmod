.class public final Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLastEnabled:Ljava/lang/String;

.field public mRegistered:Z

.field public mUserId:I

.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 8
    .line 9
    const-string p1, ""

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 11

    .line 1
    const-string p1, "InputMethodManagerService"

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "onChange "

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const-string/jumbo p1, "show_ime_with_hard_keyboard"

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "accessibility_soft_keyboard_mode"

    .line 29
    .line 30
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string/jumbo v1, "stylus_handwriting_enabled"

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string/jumbo v2, "sip_keyboard_type_mouse_id_list"

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    .line 49
    .line 50
    monitor-enter v3

    .line 51
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->updateKeyboardFromSettingsLocked()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_0
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/4 v0, 0x1

    .line 74
    const/4 v4, 0x0

    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string p2, "accessibility_soft_keyboard_mode"

    .line 86
    .line 87
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 88
    .line 89
    invoke-static {p1, p2, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 94
    .line 95
    iget-object p2, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 96
    .line 97
    iget-object p2, p2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    and-int/lit8 p1, p1, 0x3

    .line 103
    .line 104
    if-ne p1, v0, :cond_1

    .line 105
    .line 106
    move v4, v0

    .line 107
    :cond_1
    iput-boolean v4, p2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mA11yRequestingNoSoftKeyboard:Z

    .line 108
    .line 109
    if-eqz v4, :cond_2

    .line 110
    .line 111
    iput-boolean v0, p2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mPendingA11yRequestingHideKeyboard:Z

    .line 112
    .line 113
    :cond_2
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 114
    .line 115
    iget-object p2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 116
    .line 117
    iget-object p2, p2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 118
    .line 119
    iget-boolean p2, p2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mA11yRequestingNoSoftKeyboard:Z

    .line 120
    .line 121
    if-eqz p2, :cond_3

    .line 122
    .line 123
    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 124
    .line 125
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 126
    .line 127
    const/16 p2, 0x10

    .line 128
    .line 129
    invoke-virtual {p1, p2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/IBinder;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_8

    .line 138
    .line 139
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 140
    .line 141
    iget-object p0, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 142
    .line 143
    iget-object v5, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 144
    .line 145
    const/16 v10, 0x9

    .line 146
    .line 147
    invoke-virtual {v4, v10, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IZ)Landroid/view/inputmethod/ImeTracker$Token;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    const/4 v9, 0x0

    .line 152
    const/4 v7, 0x1

    .line 153
    const/4 v8, 0x0

    .line 154
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;I)Z

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_4
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_5

    .line 163
    .line 164
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalStylusHandwritingAvailabilityCaches()V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalConnectionlessStylusHandwritingAvailabilityCaches()V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_5
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_6

    .line 176
    .line 177
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 178
    .line 179
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 180
    .line 181
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildKeyboardTypeMouseList(Landroid/content/Context;)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_6
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 186
    .line 187
    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 188
    .line 189
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    if-nez p2, :cond_7

    .line 204
    .line 205
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_7
    move v0, v4

    .line 209
    :goto_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 210
    .line 211
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 212
    .line 213
    .line 214
    :cond_8
    :goto_1
    monitor-exit v3

    .line 215
    return-void

    .line 216
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    throw p0
.end method

.method public final registerContentObserverLocked(I)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 32
    .line 33
    .line 34
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 35
    .line 36
    :cond_1
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 37
    .line 38
    if-eq v1, p1, :cond_2

    .line 39
    .line 40
    const-string v1, ""

    .line 41
    .line 42
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 43
    .line 44
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 45
    .line 46
    :cond_2
    const-string/jumbo v1, "default_input_method"

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 54
    .line 55
    .line 56
    const-string/jumbo v1, "enabled_input_methods"

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 64
    .line 65
    .line 66
    const-string/jumbo v1, "selected_input_method_subtype"

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 74
    .line 75
    .line 76
    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 84
    .line 85
    .line 86
    const-string v1, "accessibility_soft_keyboard_mode"

    .line 87
    .line 88
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v1, "stylus_handwriting_enabled"

    .line 96
    .line 97
    .line 98
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    sget-object v3, Lcom/android/server/inputmethod/InputMethodManagerService;->DEX_CONTENT_URI:Landroid/net/Uri;

    .line 114
    .line 115
    const-string/jumbo v4, "touch_keyboard"

    .line 116
    .line 117
    .line 118
    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 123
    .line 124
    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mDeXDualViewChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 125
    .line 126
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    .line 128
    .line 129
    const-string/jumbo v1, "sip_keyboard_type_mouse_id_list"

    .line 130
    .line 131
    .line 132
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 137
    .line 138
    .line 139
    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 141
    .line 142
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SettingsObserver{mUserId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " mRegistered="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " mLastEnabled="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 29
    .line 30
    const-string/jumbo v1, "}"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
