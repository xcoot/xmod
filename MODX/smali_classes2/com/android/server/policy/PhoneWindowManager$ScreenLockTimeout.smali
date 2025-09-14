.class public final Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public options:Landroid/os/Bundle;

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-class v1, Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 28
    .line 29
    iput-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 30
    .line 31
    :cond_1
    iget-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    const-class v1, Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 44
    .line 45
    iput-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 46
    .line 47
    :cond_2
    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mPersonaManagerInternal:Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/knox/PersonaManagerInternal;->doKeyguardTimeout()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 59
    .line 60
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->options:Landroid/os/Bundle;

    .line 64
    .line 65
    monitor-exit p0

    .line 66
    return-void

    .line 67
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw v0
.end method
