.class public final Lcom/android/server/accessibility/FlashNotificationsController$1;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$1;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$1;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$1;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 15
    iput-boolean p2, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsTorchOn:Z

    .line 17
    const-string/jumbo p0, "onTorchModeChanged, set mIsTorchOn="

    .line 20
    const-string p1, "FlashNotifController"

    .line 22
    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 25
    :cond_0
    return-void
.end method
