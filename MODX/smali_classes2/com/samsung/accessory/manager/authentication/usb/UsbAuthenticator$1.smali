.class public final Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "SAccessoryManager_UsbAuthenticator"

    .line 4
    .line 5
    iget v3, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v3, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->$r8$clinit:I

    .line 11
    .line 12
    const-string/jumbo v3, "onAuthenticationStopped"

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    iput-object v3, v2, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mCurrentSession:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 22
    .line 23
    iput v1, v2, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mRetryCounterWhenBusy:I

    .line 24
    .line 25
    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    .line 34
    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    invoke-virtual {p0, v2, v3, v1}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->startAuthentication$1(JZ)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :pswitch_0
    sget v3, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->$r8$clinit:I

    .line 42
    .line 43
    const-string/jumbo v3, "onAuthenticationStarted"

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    .line 50
    .line 51
    iget-boolean v2, v2, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPreparing:Z

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    .line 66
    .line 67
    iput-boolean v1, v2, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mPreparing:Z

    .line 68
    .line 69
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$1;->this$0:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->removeAuthenticationTimeOuts()V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator;->mUsbAuthHandler:Lcom/samsung/accessory/manager/authentication/usb/UsbAuthenticator$UsbAuthHandler;

    .line 75
    .line 76
    const-wide/16 v1, 0x2710

    .line 77
    .line 78
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
