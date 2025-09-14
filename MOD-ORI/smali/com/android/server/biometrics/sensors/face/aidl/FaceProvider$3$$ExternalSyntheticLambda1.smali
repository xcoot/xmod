.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;IIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda1;->f$3:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda1;->f$3:J

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 12
    .line 13
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->authStartedFor(IIJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
