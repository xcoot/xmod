.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 3
    check-cast p1, Landroid/hardware/biometrics/common/OperationContext;

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISession;->onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const-string p1, "FaceAuthenticationClient"

    .line 16
    const-string v0, "Unable to notify context changed"

    .line 18
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :goto_0
    return-void
.end method
