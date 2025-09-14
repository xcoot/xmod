.class public final Lcom/android/server/inputmethod/SystemLocaleWrapper$LocaleChangeListener;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/SystemLocaleWrapper$LocaleChangeListener;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/SystemLocaleWrapper$LocaleChangeListener;->mCallback:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const-string p1, "android.intent.action.LOCALE_CHANGED"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/inputmethod/SystemLocaleWrapper$LocaleChangeListener;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object p2, Lcom/android/server/inputmethod/SystemLocaleWrapper;->sSystemLocale:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Landroid/os/LocaleList;

    .line 35
    .line 36
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_3

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/inputmethod/SystemLocaleWrapper$LocaleChangeListener;->mCallback:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    .line 50
    .line 51
    monitor-enter p1

    .line 52
    :try_start_0
    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 53
    .line 54
    if-nez p2, :cond_1

    .line 55
    .line 56
    monitor-exit p1

    .line 57
    goto :goto_2

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    array-length v0, p2

    .line 67
    const/4 v1, 0x0

    .line 68
    move v2, v1

    .line 69
    :goto_0
    if-ge v2, v0, :cond_2

    .line 70
    .line 71
    aget v3, p2, v2

    .line 72
    .line 73
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {v3}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v4, v3, v5, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILcom/android/server/inputmethod/AdditionalSubtypeMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {v3, v4}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    const/4 p2, 0x1

    .line 90
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(Z)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 99
    .line 100
    .line 101
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsNeedUpdateSubtypeForLocaleChanged:Z

    .line 102
    .line 103
    monitor-exit p1

    .line 104
    goto :goto_2

    .line 105
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw p0

    .line 107
    :cond_3
    :goto_2
    return-void
.end method
