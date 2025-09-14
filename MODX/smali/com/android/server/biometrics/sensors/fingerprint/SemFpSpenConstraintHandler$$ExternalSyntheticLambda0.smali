.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v1, "handleTspBlockAction: "

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mIsTspBlocked:Z

    .line 20
    const-string v2, "SemFpSpenConstraintHandler"

    .line 22
    invoke-static {v2, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mProvider:Landroid/util/Pair;

    .line 27
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 29
    check-cast v0, Ljava/lang/Integer;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->notifyTspBlockStatusToHal(I)V

    .line 38
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mProvider:Landroid/util/Pair;

    .line 40
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 42
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 44
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->mIsTspBlocked:Z

    .line 46
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 48
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->semNotifyTspBlockStateToClient(Z)V

    .line 51
    return-void
.end method
