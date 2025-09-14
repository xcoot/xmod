.class public abstract Lcom/android/server/biometrics/sensors/InvalidationClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ErrorConsumer;


# instance fields
.field public final mAuthenticatorIds:Ljava/util/Map;

.field public final mInvalidationCallback:Landroid/hardware/biometrics/IInvalidationCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;Landroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 13

    .line 1
    move-object v12, p0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v6

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v7, 0x0

    .line 9
    const/4 v11, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move/from16 v5, p3

    .line 14
    .line 15
    move/from16 v8, p4

    .line 16
    .line 17
    move-object/from16 v9, p5

    .line 18
    .line 19
    move-object/from16 v10, p6

    .line 20
    .line 21
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 22
    .line 23
    .line 24
    move-object/from16 v0, p7

    .line 25
    .line 26
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/InvalidationClient;->mAuthenticatorIds:Ljava/util/Map;

    .line 27
    .line 28
    move-object/from16 v0, p8

    .line 29
    .line 30
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/InvalidationClient;->mInvalidationCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final getProtoEnum()I
    .locals 0

    .line 1
    const/16 p0, 0xf

    .line 2
    .line 3
    return p0
.end method

.method public final onAuthenticatorIdInvalidated(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InvalidationClient;->mAuthenticatorIds:Ljava/util/Map;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationClient;->mInvalidationCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    .line 17
    .line 18
    invoke-interface {p1}, Landroid/hardware/biometrics/IInvalidationCallback;->onCompleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    const-string p2, "InvalidationClient"

    .line 24
    .line 25
    const-string v0, "Remote exception"

    .line 26
    .line 27
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 31
    .line 32
    const/4 p2, 0x1

    .line 33
    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onError(II)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationClient;->mInvalidationCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/hardware/biometrics/IInvalidationCallback;->onCompleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    const-string p2, "InvalidationClient"

    .line 9
    .line 10
    const-string v0, "Remote exception"

    .line 11
    .line 12
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->startHalOperation()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final unableToStart()V
    .locals 0

    .line 1
    return-void
.end method
