.class public final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 6
    return-void
.end method


# virtual methods
.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 6
    if-nez p2, :cond_0

    .line 8
    const-string p0, "FingerprintService"

    .line 10
    const-string p1, "Sync virtual enrollments failed"

    .line 12
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    return-void
.end method
