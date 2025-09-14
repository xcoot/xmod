.class public final Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Injector;

.field public final mIsConnectedDisplayErrorHandlingEnabled:Z

.field public mListener:Lcom/android/server/display/notifications/DisplayNotificationManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Injector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mContext:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mInjector:Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Injector;

    .line 8
    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 10
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 13
    move-result p1

    .line 14
    iput-boolean p1, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mIsConnectedDisplayErrorHandlingEnabled:Z

    .line 16
    return-void
.end method


# virtual methods
.method public final onDisplayPortAltModeInfoChanged(Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mListener:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 3
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/usb/DisplayPortAltModeInfo;->getPartnerSinkStatus()I

    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x2

    .line 11
    if-ne v0, p1, :cond_1

    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p2}, Landroid/hardware/usb/DisplayPortAltModeInfo;->getCableStatus()I

    .line 17
    move-result v1

    .line 18
    if-ne p1, v1, :cond_1

    .line 20
    iget-object p0, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mListener:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 22
    invoke-virtual {p0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->onCableNotCapableDisplayPort()V

    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/usb/DisplayPortAltModeInfo;->getLinkTrainingStatus()I

    .line 29
    move-result p1

    .line 30
    if-ne v0, p1, :cond_2

    .line 32
    iget-object p0, p0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mListener:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 34
    invoke-virtual {p0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->onDisplayPortLinkTrainingFailure()V

    .line 37
    :cond_2
    return-void
.end method
