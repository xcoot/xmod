.class public final Lcom/android/server/biometrics/log/BiometricContextProvider$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$4;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayOff()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "BiometricContextProvider"

    .line 6
    .line 7
    const-string/jumbo v1, "onDisplayOff"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$4;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIBiometricContextListener:Lcom/android/server/biometrics/log/BiometricContextProvider$2;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->onDisplayStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public final onDisplayOn()V
    .locals 0

    .line 1
    return-void
.end method
