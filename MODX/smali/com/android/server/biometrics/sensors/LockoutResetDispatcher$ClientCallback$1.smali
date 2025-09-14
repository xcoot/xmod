.class public final Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;->this$0:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    .line 3
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;->this$0:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->releaseWakelock()V

    .line 6
    return-void
.end method
