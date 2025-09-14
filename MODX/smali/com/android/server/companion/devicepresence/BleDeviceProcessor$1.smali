.class public final Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;->this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/os/Handler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    new-instance p2, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$$ExternalSyntheticLambda0;

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-direct {p2, v0, p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    return-void
.end method
