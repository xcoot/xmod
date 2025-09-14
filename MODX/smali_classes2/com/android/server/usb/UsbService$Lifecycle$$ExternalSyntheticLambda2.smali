.class public final synthetic Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usb/UsbService$Lifecycle;

.field public final synthetic f$1:Lcom/android/server/SystemService$TargetUser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbService$Lifecycle;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/usb/UsbService$Lifecycle;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/SystemService$TargetUser;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/usb/UsbService$Lifecycle;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/SystemService$TargetUser;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    sget v1, Lcom/android/server/usb/UsbService;->$r8$clinit:I

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
