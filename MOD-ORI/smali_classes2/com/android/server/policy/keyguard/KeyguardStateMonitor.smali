.class public final Lcom/android/server/policy/keyguard/KeyguardStateMonitor;
.super Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/policy/PhoneWindowManager$1;

.field public mCurrentUserId:I

.field public volatile mInputRestricted:Z

.field public volatile mIsShowing:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public volatile mSimSecure:Z

.field public volatile mTrusted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    .line 13
    .line 14
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 20
    .line 21
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    .line 26
    .line 27
    iput-object p3, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCallback:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 28
    .line 29
    :try_start_0
    invoke-interface {p2, p0}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string p1, "KeyguardStateMonitor"

    .line 35
    .line 36
    const-string p2, "Remote Exception"

    .line 37
    .line 38
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method


# virtual methods
.method public final onInputRestrictedStateChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 2
    .line 3
    return-void
.end method

.method public final onShowingStateChanged(ZI)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    .line 2
    .line 3
    if-eq p2, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCallback:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$1;->onShowingChanged()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onSimSecureStateChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 2
    .line 3
    return-void
.end method

.method public final onTrustedChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCallback:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager$1;->onTrustedChanged()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
