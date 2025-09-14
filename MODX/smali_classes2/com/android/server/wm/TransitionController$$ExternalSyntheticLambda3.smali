.class public final synthetic Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TransitionController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/wm/Transition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TransitionController;ZLcom/android/server/wm/Transition;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/TransitionController;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/wm/Transition;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;->f$1:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/wm/Transition;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/android/server/wm/AsyncRotationController;->canBeAsync(Lcom/android/server/wm/WindowToken;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    :cond_0
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method
