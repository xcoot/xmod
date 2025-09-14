.class public final synthetic Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/usb/UsbPortManager;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/UsbPortManager;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/UsbPortManager;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 13
    .line 14
    const-string v2, "android.permission.MANAGE_USB"

    .line 15
    .line 16
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/UsbPortManager;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 27
    .line 28
    const-string v2, "android.permission.MANAGE_USB"

    .line 29
    .line 30
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
