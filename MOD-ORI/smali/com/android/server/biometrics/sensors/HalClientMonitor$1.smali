.class public final Lcom/android/server/biometrics/sensors/HalClientMonitor$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/HalClientMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/HalClientMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
