.class public final Lcom/android/server/biometrics/sensors/iris/IrisService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mServiceWrapper:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    .line 6
    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/iris/IrisService;)V

    .line 9
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/iris/IrisService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    .line 11
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "iris"

    .line 4
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/iris/IrisService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/iris/IrisService$IrisServiceWrapper;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    return-void
.end method
