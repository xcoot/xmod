.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 16
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "package"

    .line 21
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 31
    const-string p1, "authenticator"

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 37
    move-result p1

    .line 38
    const/16 p2, 0x8

    .line 40
    if-ne p1, p2, :cond_0

    .line 42
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 44
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 46
    if-eqz p1, :cond_0

    .line 48
    const-string p1, "FaceAuthenticationClient"

    .line 50
    const-string p2, "Cancel authentication by Notification action"

    .line 52
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 57
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    .line 60
    move-result-object p1

    .line 61
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 63
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    .line 65
    invoke-virtual {p1, p0, v0}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancel(Landroid/hardware/biometrics/common/ICancellationSignal;Z)V

    .line 68
    :cond_0
    return-void
.end method
