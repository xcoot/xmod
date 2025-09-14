.class public final Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;
.super Landroid/view/OrientationEventListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p2, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 7
    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 3
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mContext:Landroid/content/Context;

    .line 5
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 15
    move-result p1

    .line 16
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 18
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mLastRotation:I

    .line 20
    if-eq p1, v1, :cond_1

    .line 22
    iput p1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mLastRotation:I

    .line 24
    iget-boolean p1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mIsOperationStarted:Z

    .line 26
    if-eqz p1, :cond_1

    .line 28
    iget-object p1, v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->mHandlerMain:Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$1;

    .line 30
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2$$ExternalSyntheticLambda0;

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {v0, v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl$2$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v0, "onOrientationChanged: "

    .line 46
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    const-string p1, "SemFace"

    .line 62
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    :goto_0
    return-void
.end method
