.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;

    .line 3
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mContext:Landroid/content/Context;

    .line 5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor$Injector;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v0, "any_screen_running"

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, -0x2

    .line 14
    invoke-static {p1, v1, v2, v0, v1}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p1, v0, :cond_0

    .line 21
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 23
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 25
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;

    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-direct {v0, v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    :cond_0
    return-void
.end method
