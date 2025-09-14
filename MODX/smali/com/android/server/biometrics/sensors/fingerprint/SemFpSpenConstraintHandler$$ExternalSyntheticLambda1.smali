.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    .line 5
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    .line 8
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda1;->f$1:I

    .line 10
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->notifyTspBlockStatusToHal(I)V

    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    .line 16
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$$ExternalSyntheticLambda1;->f$1:I

    .line 18
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->notifyTspBlockStatusToHal(I)V

    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
