.class public final Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$2:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5$1;->this$2:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5$1;->this$2:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;->this$1:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
