.class public final synthetic Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    check-cast p1, Lcom/android/server/accessibility/FlashNotificationsController;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    check-cast p2, Ljava/lang/Integer;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 13
    move-result p0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const-string p2, "FlashNotifController"

    .line 19
    const-string/jumbo v0, "showScreenNotificationOverlayViewMainThread"

    .line 22
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    .line 27
    const/4 v3, -0x1

    .line 28
    const/16 v4, 0x7df

    .line 30
    const/4 v2, -0x1

    .line 31
    const/16 v5, 0x138

    .line 33
    const/4 v6, -0x3

    .line 34
    move-object v1, p2

    .line 35
    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 38
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 40
    or-int/lit8 v0, v0, 0x10

    .line 42
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 44
    const/4 v0, 0x1

    .line 45
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 47
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 49
    or-int/2addr v1, v0

    .line 50
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 52
    iget-object v1, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    .line 54
    const/4 v2, 0x0

    .line 55
    if-nez v1, :cond_0

    .line 57
    new-instance v1, Landroid/widget/FrameLayout;

    .line 59
    iget-object v3, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 70
    iput-object v1, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    .line 72
    iget-object v1, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 74
    const-class v3, Landroid/view/WindowManager;

    .line 76
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/view/WindowManager;

    .line 82
    iget-object v3, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    .line 84
    invoke-interface {v1, v3, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v1, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    .line 89
    invoke-static {v1, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->fadeScreenNotificationOverlayViewMainThread(Landroid/view/View;Z)V

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->getCoverDisplayWindowManager()Landroid/view/WindowManager;

    .line 95
    move-result-object v1

    .line 96
    if-eqz v1, :cond_1

    .line 98
    iget-object v3, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCoverScreenNotificationOverlayView:Landroid/view/View;

    .line 100
    if-nez v3, :cond_1

    .line 102
    new-instance v3, Landroid/widget/FrameLayout;

    .line 104
    iget-object v4, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 106
    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v3, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 112
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 115
    iput-object v3, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCoverScreenNotificationOverlayView:Landroid/view/View;

    .line 117
    invoke-interface {v1, v3, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object p0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCoverScreenNotificationOverlayView:Landroid/view/View;

    .line 122
    invoke-static {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->fadeScreenNotificationOverlayViewMainThread(Landroid/view/View;Z)V

    .line 125
    :cond_1
    return-void

    .line 126
    :pswitch_0
    check-cast p2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 128
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    .line 131
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
