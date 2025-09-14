.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda18;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda18;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda18;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda18;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/wm/WindowManagerService$SettingsObserver;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateSystemUiSettings(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateMaximumObscuringOpacityForTouch()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SettingsObserver;->updateDisableSecureWindows()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast p0, Lcom/android/server/wm/WindowManagerService;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mBlockOutsideTouchWhileSearcleLaunching:Z

    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1
    check-cast p0, Lcom/android/server/wm/WindowManagerService;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    const v2, 0x1040d33

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {v0, v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_2
    check-cast p0, Lcom/android/server/wm/WindowManagerService;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 56
    .line 57
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 58
    .line 59
    .line 60
    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 67
    .line 68
    new-instance v2, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda7;

    .line 69
    .line 70
    const/4 v3, 0x2

    .line 71
    invoke-direct {v2, v3}, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda7;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 80
    .line 81
    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 84
    .line 85
    .line 86
    sget-object p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils$LazyHolder;->sUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

    .line 87
    .line 88
    monitor-enter p0

    .line 89
    const/4 v0, 0x0

    .line 90
    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCached:Z

    .line 91
    .line 92
    monitor-exit p0

    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw v0

    .line 97
    :catchall_1
    move-exception p0

    .line 98
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :pswitch_3
    check-cast p0, Lcom/android/server/wm/WindowManagerService;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 106
    .line 107
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService;->mDispatchedKeyguardLockedState:Z

    .line 114
    .line 115
    if-ne v1, v0, :cond_0

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardLockedStateListeners:Landroid/os/RemoteCallbackList;

    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    const/4 v2, 0x0

    .line 125
    :goto_0
    if-ge v2, v1, :cond_1

    .line 126
    .line 127
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardLockedStateListeners:Landroid/os/RemoteCallbackList;

    .line 128
    .line 129
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Lcom/android/internal/policy/IKeyguardLockedStateListener;

    .line 134
    .line 135
    invoke-interface {v3, v0}, Lcom/android/internal/policy/IKeyguardLockedStateListener;->onKeyguardLockedStateChanged(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 136
    .line 137
    .line 138
    :catch_0
    add-int/lit8 v2, v2, 0x1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mKeyguardLockedStateListeners:Landroid/os/RemoteCallbackList;

    .line 142
    .line 143
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 144
    .line 145
    .line 146
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDispatchedKeyguardLockedState:Z

    .line 147
    .line 148
    :goto_1
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
