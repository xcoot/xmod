.class public final synthetic Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    check-cast p1, Lcom/android/server/accessibility/FlashNotificationsController;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    packed-switch p0, :pswitch_data_0

    .line 11
    const-string p0, "FlashNotifController"

    .line 13
    const-string/jumbo v0, "hideScreenNotificationOverlayViewMainThread"

    .line 16
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    .line 21
    const/4 v0, 0x0

    .line 22
    const/16 v1, 0x8

    .line 24
    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object p0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 31
    const-class v2, Landroid/view/WindowManager;

    .line 33
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Landroid/view/WindowManager;

    .line 39
    iget-object v2, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    .line 41
    invoke-interface {p0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 44
    iput-object v0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    .line 46
    :cond_0
    iget-object p0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCoverScreenNotificationOverlayView:Landroid/view/View;

    .line 48
    if-eqz p0, :cond_2

    .line 50
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    invoke-virtual {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->getCoverDisplayWindowManager()Landroid/view/WindowManager;

    .line 56
    move-result-object p0

    .line 57
    if-eqz p0, :cond_1

    .line 59
    iget-object v1, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCoverScreenNotificationOverlayView:Landroid/view/View;

    .line 61
    invoke-interface {p0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 64
    :cond_1
    iput-object v0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCoverScreenNotificationOverlayView:Landroid/view/View;

    .line 66
    :cond_2
    return-void

    .line 67
    :pswitch_0
    const-string p0, "FlashNotifController"

    .line 69
    const-string/jumbo v0, "fadeOutScreenNotificationOverlayViewMainThread"

    .line 72
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    .line 77
    const/4 v0, 0x0

    .line 78
    if-eqz p0, :cond_3

    .line 80
    invoke-static {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->fadeScreenNotificationOverlayViewMainThread(Landroid/view/View;Z)V

    .line 83
    :cond_3
    iget-object p0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCoverScreenNotificationOverlayView:Landroid/view/View;

    .line 85
    if-eqz p0, :cond_4

    .line 87
    invoke-static {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->fadeScreenNotificationOverlayViewMainThread(Landroid/view/View;Z)V

    .line 90
    :cond_4
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
