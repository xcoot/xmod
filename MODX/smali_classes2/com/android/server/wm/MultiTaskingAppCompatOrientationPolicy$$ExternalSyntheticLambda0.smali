.class public final synthetic Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/wm/ActivityRecord;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->requestActivityBoundsChangedTransitionIfNeeded(Lcom/android/server/wm/ActivityRecord;Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
