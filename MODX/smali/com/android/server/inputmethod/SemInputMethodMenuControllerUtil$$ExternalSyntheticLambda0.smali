.class public final synthetic Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    .line 3
    iget-object v0, p0, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    iget v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 7
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "0"

    .line 13
    if-eqz p2, :cond_0

    .line 15
    const-string v3, "1"

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v3, v2

    .line 19
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDexSetting()Z

    .line 22
    move-result v4

    .line 23
    const-string v5, "InputMethodManagerService"

    .line 25
    if-eqz v4, :cond_1

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    const-string/jumbo v4, "setShowImeWithHardKeyboardValue for DEX: "

    .line 32
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    const-string/jumbo v4, "keyboard_dex"

    .line 38
    invoke-virtual {v0, v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 55
    move-result-wide v1

    .line 56
    :try_start_0
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    throw p0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v2, "setShowImeWithHardKeyboardValue for Phone: "

    .line 79
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    .line 85
    move-result v2

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v1, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->setShowImeWithHardKeyboard(Z)V

    .line 99
    :goto_1
    iget-object p0, p0, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mSemInputMethodMenuListener:Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;

    .line 101
    if-eqz p0, :cond_2

    .line 103
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 110
    monitor-enter v0

    .line 111
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V

    .line 114
    monitor-exit v0

    .line 115
    goto :goto_2

    .line 116
    :catchall_1
    move-exception p0

    .line 117
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    throw p0

    .line 119
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    .line 122
    move-result-object p0

    .line 123
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 126
    move-result-object p1

    .line 127
    const-string/jumbo p2, "com.samsung.android.intent.action.ONSCREENKEYBOARD_SWITCH"

    .line 130
    new-instance v0, Ljava/lang/Thread;

    .line 132
    new-instance v1, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda8;

    .line 134
    invoke-direct {v1, p2, p1, p0}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 137
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 140
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 143
    return-void
.end method
