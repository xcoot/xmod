.class public final Lcom/android/server/accessibility/FlashNotificationsController$2;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$2;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onCameraClosed(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$2;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

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
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$2;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraOpened:Z

    .line 18
    :cond_0
    return-void
.end method

.method public final onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$2;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 3
    iget-object p2, p2, Lcom/android/server/accessibility/FlashNotificationsController;->mCameraId:Ljava/lang/String;

    .line 5
    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$2;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsCameraOpened:Z

    .line 18
    :cond_0
    return-void
.end method
