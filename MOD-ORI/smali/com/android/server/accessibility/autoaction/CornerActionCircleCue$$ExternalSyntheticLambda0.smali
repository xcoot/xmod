.class public final synthetic Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

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
    iget v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mProgressImageView:Landroid/widget/ImageView;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mScale:F

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-wide v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->mDurationTime:J

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
