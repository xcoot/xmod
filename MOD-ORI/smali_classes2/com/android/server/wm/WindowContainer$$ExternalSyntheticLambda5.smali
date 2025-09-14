.class public final synthetic Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationFinished:Ljava/util/List;

    .line 11
    .line 12
    new-instance p1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-direct {p1, p2}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcom/android/server/wm/WindowContainer;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
