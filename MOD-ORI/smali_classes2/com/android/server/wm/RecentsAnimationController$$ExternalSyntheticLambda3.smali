.class public final synthetic Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/android/server/wm/AnimationAdapter;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda3;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/AnimationAdapter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda3;->f$0:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/AnimationAdapter;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/WindowState;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
