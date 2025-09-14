.class public final Lcom/android/server/biometrics/sensors/BaseClientMonitor$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# virtual methods
.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    .line 1
    const-string p0, "BaseClientMonitor"

    .line 3
    const-string/jumbo p1, "mCallback onClientFinished: called before set (should not happen)"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return-void
.end method

.method public final onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 1
    const-string p0, "BaseClientMonitor"

    .line 3
    const-string/jumbo p1, "mCallback onClientStarted: called before set (should not happen)"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return-void
.end method
