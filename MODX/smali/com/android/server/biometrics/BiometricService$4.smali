.class public final Lcom/android/server/biometrics/BiometricService$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$4;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$4;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 3
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mBiometricNotificationLogger:Lcom/android/server/biometrics/BiometricNotificationLogger;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    new-instance v2, Landroid/content/ComponentName;

    .line 11
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$4;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 13
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p0

    .line 17
    const-class v3, Lcom/android/server/biometrics/BiometricNotificationLogger;

    .line 19
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    const/4 p0, -0x1

    .line 23
    invoke-virtual {v1, v0, v2, p0}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    return-void
.end method
