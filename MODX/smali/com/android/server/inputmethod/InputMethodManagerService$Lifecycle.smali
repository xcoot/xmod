.class public final Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.hardware.type.automotive"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v0

    .line 25
    const v1, 0x1110004

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Landroid/view/inputmethod/Flags;->concurrentInputMethods()Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 41
    :goto_0
    move v2, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    goto :goto_0

    .line 45
    :goto_1
    const/4 v5, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    move-object v0, v6

    .line 49
    move-object v1, p1

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;-><init>(Landroid/content/Context;ZLcom/android/server/ServiceThread;Lcom/android/server/ServiceThread;Ljava/util/function/IntFunction;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 58
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 12

    .line 1
    const/16 v0, 0x226

    .line 3
    if-ne p1, v0, :cond_4

    .line 5
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 15
    if-nez v0, :cond_3

    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 20
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 22
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 24
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 30
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v2, :cond_0

    .line 35
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 37
    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 39
    iget-object v2, v2, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 41
    invoke-virtual {v2, v4, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 44
    :cond_0
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 46
    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 48
    invoke-virtual {p0, v2, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 51
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 53
    const v4, 0x11102bb

    .line 56
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 59
    move-result v2

    .line 60
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 62
    if-eqz v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 66
    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;

    .line 68
    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 71
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerInternal;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V

    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto/16 :goto_2

    .line 78
    :cond_1
    :goto_0
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;

    .line 80
    invoke-direct {v2, v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 83
    const-string v4, "Lazily initialize IMMS#mImeDrawsImeNavBarRes"

    .line 85
    invoke-static {v4, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 88
    move-result-object v2

    .line 89
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarResLazyInitFuture:Ljava/util/concurrent/Future;

    .line 91
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    .line 93
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 95
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 97
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    .line 99
    invoke-virtual {v2, v4, v7, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 102
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    .line 104
    invoke-virtual {v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 107
    new-instance v2, Landroid/content/IntentFilter;

    .line 109
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    const-string/jumbo v4, "com.samsung.systemui.statusbar.ANIMATING"

    .line 115
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v4, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 121
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 126
    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;

    .line 128
    const/4 v6, 0x2

    .line 129
    invoke-direct {v5, v6, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 132
    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    new-instance v8, Landroid/content/IntentFilter;

    .line 137
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 142
    invoke-virtual {v8, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 147
    new-instance v6, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;

    .line 149
    const/4 v2, 0x1

    .line 150
    invoke-direct {v6, v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 153
    const/4 v9, 0x0

    .line 154
    const/4 v10, 0x0

    .line 155
    const/4 v11, 0x2

    .line 156
    invoke-virtual/range {v5 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 159
    const-string/jumbo v2, "default_input_method"

    .line 162
    const/4 v4, 0x0

    .line 163
    invoke-static {v2, v4, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 166
    move-result-object v2

    .line 167
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    move-result v2

    .line 171
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 173
    invoke-static {v1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 176
    move-result-object v6

    .line 177
    invoke-static {v5, v1, v6, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILcom/android/server/inputmethod/AdditionalSubtypeMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 180
    move-result-object v5

    .line 181
    invoke-static {v1, v5}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 184
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(Z)V

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 192
    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v5, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 199
    move-result-object v1

    .line 200
    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 203
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda7;

    .line 205
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 208
    const-string v1, "Start AdditionalSubtypeMapRepository\'s writer thread"

    .line 210
    invoke-static {v1, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 213
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mExperimentalConcurrentMultiUserModeEnabled:Z

    .line 215
    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 219
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 222
    move-result-object v0

    .line 223
    array-length v1, v0

    .line 224
    :goto_1
    if-ge v3, v1, :cond_3

    .line 226
    aget v2, v0, v3

    .line 228
    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 230
    if-eq v2, v4, :cond_2

    .line 232
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->experimentalInitializeVisibleBackgroundUserLocked(I)V

    .line 235
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 237
    goto :goto_1

    .line 238
    :cond_3
    monitor-exit p1

    .line 239
    goto :goto_3

    .line 240
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    throw p0

    .line 242
    :cond_4
    :goto_3
    return-void
.end method

.method public final onStart()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    .line 3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;

    .line 10
    invoke-direct {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 13
    const-class v2, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 15
    invoke-static {v2, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Landroid/view/inputmethod/Flags;->useZeroJankProxy()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 24
    new-instance v1, Lcom/android/server/inputmethod/ZeroJankProxy;

    .line 26
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 28
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v3, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;

    .line 33
    invoke-direct {v3, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    .line 36
    invoke-direct {v1, v3, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;-><init>(Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;Lcom/android/server/inputmethod/ZeroJankProxy$Callback;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v1, v0

    .line 41
    :goto_0
    new-instance v2, Lcom/android/server/inputmethod/IInputMethodManagerImpl;

    .line 43
    invoke-direct {v2, v1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl;-><init>(Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;)V

    .line 46
    const/16 v1, 0x15

    .line 48
    const-string/jumbo v3, "input_method"

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-virtual {p0, v3, v2, v4, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 55
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_1

    .line 61
    iget-object p0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 63
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;

    .line 65
    invoke-direct {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 68
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerInternal;->setOnImeRequestedChangedListener(Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;)V

    .line 71
    :cond_1
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    move-result p1

    .line 5
    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    .line 7
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 9
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 15
    invoke-static {v0, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->createImpl(Lcom/android/server/pm/UserManagerInternal;I)Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 22
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 27
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    .line 29
    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/UserDataRepository;->getOrCreate(I)Lcom/android/server/inputmethod/UserDataRepository$UserData;

    .line 32
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 34
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mExperimentalConcurrentMultiUserModeEnabled:Z

    .line 36
    if-eqz v1, :cond_0

    .line 38
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 40
    if-eq v1, p1, :cond_0

    .line 42
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 44
    if-eqz p0, :cond_0

    .line 46
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->experimentalInitializeVisibleBackgroundUserLocked(I)V

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 6
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mExperimentalConcurrentMultiUserModeEnabled:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    monitor-exit p1

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 17
    move-result p2

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 22
    monitor-exit p1

    .line 23
    return-void

    .line 24
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;

    .line 7
    sget-object v2, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    .line 9
    invoke-direct {v1, v0, v2}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    .line 12
    invoke-static {v0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 15
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 17
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 19
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 22
    move-result p1

    .line 23
    const/4 v0, 0x0

    .line 24
    const/16 v1, 0x1388

    .line 26
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 33
    return-void
.end method
