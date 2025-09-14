.class public final Lcom/android/server/biometrics/log/CallbackWithProbe;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final mProbe:Lcom/android/server/biometrics/log/ALSProbe;

.field public final mStartWithClient:Z


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/ALSProbe;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mStartWithClient:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->destroy()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mStartWithClient:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/log/ALSProbe;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->enable()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
