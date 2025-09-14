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

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/accessibility/FlashNotificationsController;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p2, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string p2, "FlashNotifController"

    .line 18
    .line 19
    const-string/jumbo v0, "showScreenNotificationOverlayViewMainThread"

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    .line 26
    .line 27
    const/4 v3, -0x1

    .line 28
    const/16 v4, 0x7df

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    const/16 v5, 0x138

    .line 32
    .line 33
    const/4 v6, -0x3

    .line 34
    move-object v1, p2

    .line 35
    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 36
    .line 37
    .line 38
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 39
    .line 40
    or-int/lit8 v0, v0, 0x10

    .line 41
    .line 42
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 46
    .line 47
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 48
    .line 49
    or-int/2addr v1, v0

    .line 50
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 51
    .line 52
    iget-object v1, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-nez v1, :cond_0

    .line 56
    .line 57
    new-instance v1, Landroid/widget/FrameLayout;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    .line 71
    .line 72
    iget-object v1, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    const-class v3, Landroid/view/WindowManager;

    .line 75
    .line 76
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/view/WindowManager;

    .line 81
    .line 82
    iget-object v3, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    .line 83
    .line 84
    invoke-interface {v1, v3, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mScreenFlashNotificationOverlayView:Landroid/view/View;

    .line 88
    .line 89
    invoke-static {v1, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->fadeScreenNotificationOverlayViewMainThread(Landroid/view/View;Z)V

    .line 90
    .line 91
    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->getCoverDisplayWindowManager()Landroid/view/WindowManager;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-eqz v1, :cond_1

    .line 97
    .line 98
    iget-object v3, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCoverScreenNotificationOverlayView:Landroid/view/View;

    .line 99
    .line 100
    if-nez v3, :cond_1

    .line 101
    .line 102
    new-instance v3, Landroid/widget/FrameLayout;

    .line 103
    .line 104
    iget-object v4, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 113
    .line 114
    .line 115
    iput-object v3, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCoverScreenNotificationOverlayView:Landroid/view/View;

    .line 116
    .line 117
    invoke-interface {v1, v3, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .line 119
    .line 120
    iget-object p0, p1, Lcom/android/server/accessibility/FlashNotificationsController;->mCoverScreenNotificationOverlayView:Landroid/view/View;

    .line 121
    .line 122
    invoke-static {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->fadeScreenNotificationOverlayViewMainThread(Landroid/view/View;Z)V

    .line 123
    .line 124
    .line 125
    :cond_1
    return-void

    .line 126
    :pswitch_0
    check-cast p2, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/FlashNotificationsController;->startFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    .line 129
    .line 130
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
