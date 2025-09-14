.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/hardware/face/Face;

.field public final synthetic f$1:[I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/face/Face;[III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;->f$0:Landroid/hardware/face/Face;

    .line 5
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;->f$1:[I

    .line 7
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;->f$2:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;->f$0:Landroid/hardware/face/Face;

    .line 8
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;->f$1:[I

    .line 10
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;->f$2:I

    .line 12
    check-cast p1, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 14
    array-length v1, v1

    .line 15
    sub-int/2addr v1, p0

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 18
    invoke-interface {p1, v0, v1}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;->f$0:Landroid/hardware/face/Face;

    .line 24
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;->f$1:[I

    .line 26
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda8;->f$2:I

    .line 28
    check-cast p1, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 30
    array-length v2, v1

    .line 31
    sub-int/2addr v2, p0

    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 34
    invoke-interface {p1, v0, v2}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo v0, "onEnrollmentsRemoved : faceId: "

    .line 42
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    aget v0, v1, p0

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    const-string v0, "AidlResponseHandler"

    .line 56
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 62
    move-result-object p1

    .line 63
    aget p0, v1, p0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    const-string v0, "SemFace"

    .line 70
    const-string/jumbo v1, "onRemovedExt BILG "

    .line 73
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemBioAnalyticsManager;

    .line 78
    if-eqz p1, :cond_0

    .line 80
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 86
    const/4 v1, 0x3

    .line 87
    const-string v2, "FARM"

    .line 89
    const/4 v3, -0x1

    .line 90
    invoke-direct {v0, v3, v1, v2, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 96
    :cond_0
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 99
    move-result-object p0

    .line 100
    const-string p1, ""

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceRemoved(Ljava/lang/String;)V

    .line 105
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
