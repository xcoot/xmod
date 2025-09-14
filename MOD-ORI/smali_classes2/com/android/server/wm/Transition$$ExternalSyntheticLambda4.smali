.class public final synthetic Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Transition;

.field public final synthetic f$1:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/Transition;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/wm/Task;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/Transition;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 8
    .line 9
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    iget-object p0, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mValidateCommitVis:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p0, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object p0, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method
