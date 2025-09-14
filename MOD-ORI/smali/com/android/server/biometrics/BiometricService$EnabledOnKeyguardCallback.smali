.class public final Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->mCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    .line 7
    .line 8
    :try_start_0
    invoke-interface {p2}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;->asBinder()Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string p1, "BiometricService"

    .line 19
    .line 20
    const-string p2, "Unable to linkToDeath"

    .line 21
    .line 22
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    const-string v0, "BiometricService"

    .line 2
    .line 3
    const-string v1, "Enabled callback binder died"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    .line 11
    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
