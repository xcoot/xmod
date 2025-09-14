.class public final synthetic Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:Lcom/android/server/wm/TaskFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/wm/TaskFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/wm/TaskFragment;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eq p1, p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method
