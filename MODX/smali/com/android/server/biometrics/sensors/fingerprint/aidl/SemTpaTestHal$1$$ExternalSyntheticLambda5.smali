.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/fingerprint/ISessionCallback;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 6
    iput-wide p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda5;->f$1:J

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 3
    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$1$$ExternalSyntheticLambda5;->f$1:J

    .line 5
    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onChallengeRevoked(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 13
    :goto_0
    return-void
.end method
