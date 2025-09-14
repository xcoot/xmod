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

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 9
    const-string p1, ""

    .line 11
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 11

    .line 1
    const-string p1, "InputMethodManagerService"

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v1, "onChange "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const-string/jumbo p1, "show_ime_with_hard_keyboard"

    .line 24
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    move-result-object p1

    .line 28
    const-string v0, "accessibility_soft_keyboard_mode"

    .line 30
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    move-result-object v0

    .line 34
    const-string/jumbo v1, "stylus_handwriting_enabled"

    .line 37
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 40
    move-result-object v1

    .line 41
    const-string/jumbo v2, "sip_keyboard_type_mouse_id_list"

    .line 44
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    move-result-object v2

    .line 48
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    .line 50
    monitor-enter v3

    .line 51
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_0

    .line 57
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 59
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 61
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->updateKeyboardFromSettingsLocked()V

    .line 64
    goto/16 :goto_1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto/16 :goto_2

    .line 69
    :cond_0
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result p1

    .line 73
    const/4 v0, 0x1

    .line 74
    const/4 v4, 0x0

    .line 75
    if-eqz p1, :cond_4

    .line 77
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 79
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 84
    move-result-object p1

    .line 85
    const-string p2, "accessibility_soft_keyboard_mode"

    .line 87
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 89
    invoke-static {p1, p2, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 92
    move-result p1

    .line 93
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 95
    iget-object p2, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 97
    iget-object p2, p2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 99
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    and-int/lit8 p1, p1, 0x3

    .line 104
    if-ne p1, v0, :cond_1

    .line 106
    move v4, v0

    .line 107
    :cond_1
    iput-boolean v4, p2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mA11yRequestingNoSoftKeyboard:Z

    .line 109
    if-eqz v4, :cond_2

    .line 111
    iput-boolean v0, p2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mPendingA11yRequestingHideKeyboard:Z

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 115
    iget-object p2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 117
    iget-object p2, p2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 119
    iget-boolean p2, p2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mA11yRequestingNoSoftKeyboard:Z

    .line 121
    if-eqz p2, :cond_3

    .line 123
    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 125
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 127
    const/16 p2, 0x10

    .line 129
    invoke-virtual {p1, p2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/IBinder;)Z

    .line 132
    goto :goto_1

    .line 133
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow()Z

    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_8

    .line 139
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 141
    iget-object p0, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 143
    iget-object v5, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 145
    const/16 v10, 0x9

    .line 147
    invoke-virtual {v4, v10, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IZ)Landroid/view/inputmethod/ImeTracker$Token;

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

    .line 157
    goto :goto_1

    .line 158
    :cond_4
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_5

    .line 164
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalStylusHandwritingAvailabilityCaches()V

    .line 167
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalConnectionlessStylusHandwritingAvailabilityCaches()V

    .line 170
    goto :goto_1

    .line 171
    :cond_5
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_6

    .line 177
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 179
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildKeyboardTypeMouseList(Landroid/content/Context;)V

    .line 184
    goto :goto_1

    .line 185
    :cond_6
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 187
    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 189
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 199
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result p2

    .line 203
    if-nez p2, :cond_7

    .line 205
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 207
    goto :goto_0

    .line 208
    :cond_7
    move v0, v4

    .line 209
    :goto_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

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

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 7
    if-ne v0, p1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 12
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    move-result-object v0

    .line 18
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 23
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 25
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 34
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 36
    :cond_1
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 38
    if-eq v1, p1, :cond_2

    .line 40
    const-string v1, ""

    .line 42
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 44
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 46
    :cond_2
    const-string/jumbo v1, "default_input_method"

    .line 49
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 56
    const-string/jumbo v1, "enabled_input_methods"

    .line 59
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 66
    const-string/jumbo v1, "selected_input_method_subtype"

    .line 69
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 76
    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    .line 79
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 86
    const-string v1, "accessibility_soft_keyboard_mode"

    .line 88
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 95
    const-string/jumbo v1, "stylus_handwriting_enabled"

    .line 98
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 105
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 107
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 112
    move-result-object v1

    .line 113
    sget-object v3, Lcom/android/server/inputmethod/InputMethodManagerService;->DEX_CONTENT_URI:Landroid/net/Uri;

    .line 115
    const-string/jumbo v4, "touch_keyboard"

    .line 118
    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 121
    move-result-object v3

    .line 122
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 124
    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mDeXDualViewChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 126
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 129
    const-string/jumbo v1, "sip_keyboard_type_mouse_id_list"

    .line 132
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 139
    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 142
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "SettingsObserver{mUserId="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " mRegistered="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, " mLastEnabled="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 30
    const-string/jumbo v1, "}"

    .line 33
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
