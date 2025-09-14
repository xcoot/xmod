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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 7
    .line 8
    const/16 v2, 0xb

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_2

    .line 37
    .line 38
    const-wide/32 v3, 0xea60

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 42
    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-wide/16 v3, 0x1388

    .line 51
    .line 52
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 56
    .line 57
    .line 58
    return-void
.end method
