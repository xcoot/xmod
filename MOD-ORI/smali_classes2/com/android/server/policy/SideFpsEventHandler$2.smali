.class public final Lcom/android/server/policy/SideFpsEventHandler$2;
.super Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/SideFpsEventHandler;

.field public final synthetic val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SideFpsEventHandler;Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->isPowerbuttonFps()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$2$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/policy/SideFpsEventHandler$2$1;-><init>(Lcom/android/server/policy/SideFpsEventHandler$2;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
