.class public final synthetic Lcom/android/server/input/WirelessKeyboardMouseShare$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 6
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 8
    const/16 v2, 0xb

    .line 10
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()V

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_2

    .line 38
    const-wide/32 v3, 0xea60

    .line 41
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 44
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 46
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-wide/16 v3, 0x1388

    .line 52
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 58
    return-void
.end method
