.class public final synthetic Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

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
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/MagnificationThumbnail;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->isFlipCoverScreen()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mSubDisplayWindowManager:Landroid/view/WindowManager;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    .line 27
    .line 28
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    .line 37
    .line 38
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const v1, 0x10901af

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/FrameLayout;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    .line 59
    .line 60
    const v1, 0x10201a2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->isFlipCoverScreen()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mSubDisplayWindowManager:Landroid/view/WindowManager;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    .line 91
    .line 92
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    .line 99
    .line 100
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    .line 105
    .line 106
    :cond_4
    return-void

    .line 107
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    .line 108
    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->animateThumbnail(Z)V

    .line 113
    .line 114
    .line 115
    :cond_5
    return-void

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
