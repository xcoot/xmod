.class public final synthetic Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskSnapshotController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskSnapshotController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/TaskSnapshotController;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;->f$1:Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/Task;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    iget-object p0, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method
