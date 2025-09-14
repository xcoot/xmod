.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;->f$0:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;->f$0:J

    .line 7
    .line 8
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/android/server/biometrics/sensors/InvalidationClient;->onAuthenticatorIdInvalidated(J)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;->f$0:J

    .line 15
    .line 16
    check-cast p1, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    .line 17
    .line 18
    invoke-interface {p1, v0, v1}, Lcom/android/server/biometrics/sensors/LockoutConsumer;->onLockoutTimed(J)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlResponseHandler$$ExternalSyntheticLambda2;->f$0:J

    .line 23
    .line 24
    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;

    .line 25
    .line 26
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;->mAuthenticatorIds:Ljava/util/Map;

    .line 27
    .line 28
    iget v2, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-interface {p0, p1, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
