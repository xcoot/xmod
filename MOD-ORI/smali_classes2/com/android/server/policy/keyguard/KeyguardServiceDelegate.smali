.class public final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/policy/PhoneWindowManager$1;

.field public final mContext:Landroid/content/Context;

.field public mDrawnListenerWhenConnect:Lcom/android/server/policy/PhoneWindowManager$1;

.field public final mDreamManagerStateListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeyguardConnection:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;

.field public mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

.field public final mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

.field public mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    iput-boolean v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 14
    .line 15
    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    .line 16
    .line 17
    iput-boolean v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 18
    .line 19
    iput-boolean v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    .line 20
    .line 21
    iput-boolean v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    .line 22
    .line 23
    iput-boolean v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootAnimFinished:Z

    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDreamManagerStateListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;

    .line 33
    .line 34
    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardConnection:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mCallback:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final bindService(Landroid/content/Context;)V
    .locals 7

    .line 1
    new-instance v1, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v2, 0x104036e

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const/16 v0, 0x100

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardConnection:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;

    .line 34
    .line 35
    iget-object v4, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    move-object v0, p1

    .line 41
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    const-string p1, "KeyguardServiceDelegate"

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "!@BOOT: *** Keyguard: can\'t bind to "

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 70
    .line 71
    iput-boolean v0, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 72
    .line 73
    monitor-enter p1

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 75
    .line 76
    iput-boolean v0, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    .line 77
    .line 78
    monitor-exit p1

    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0

    .line 83
    :cond_0
    const-string p1, "KeyguardServiceDelegate"

    .line 84
    .line 85
    const-string v0, "!@BOOT: *** Keyguard started"

    .line 86
    .line 87
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :goto_0
    const-class p1, Landroid/service/dreams/DreamManagerInternal;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/service/dreams/DreamManagerInternal;

    .line 97
    .line 98
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSUI_GRADLE_BUILD:Z

    .line 99
    .line 100
    if-eqz v0, :cond_1

    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDreamManagerStateListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/service/dreams/DreamManagerInternal;->unregisterDreamManagerStateListener(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDreamManagerStateListener:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;

    .line 108
    .line 109
    invoke-virtual {p1, p0}, Landroid/service/dreams/DreamManagerInternal;->registerDreamManagerStateListener(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final isShowing()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    .line 10
    .line 11
    iput-boolean v0, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 16
    .line 17
    return p0
.end method

.method public final isSimLocked()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v0, "mKeyguardStateMonitor is null caller="

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x5

    .line 17
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "KeyguardServiceWrapper"

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 35
    .line 36
    return p0

    .line 37
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public final onScreenTurningOn(Lcom/android/server/policy/PhoneWindowManager$1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 2
    .line 3
    const-string v1, "KeyguardServiceDelegate"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "onScreenTurnedOn(showListener = "

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ")"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 31
    .line 32
    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;-><init>(Lcom/android/server/policy/PhoneWindowManager$1;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string/jumbo v0, "onScreenTurningOn(): no keyguard service!"

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mDrawnListenerWhenConnect:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 48
    .line 49
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardState:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    iput p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    .line 53
    .line 54
    return-void
.end method
