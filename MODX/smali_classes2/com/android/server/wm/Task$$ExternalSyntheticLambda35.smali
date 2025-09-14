.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;->f$0:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;->f$0:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;->f$1:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 13
    .line 14
    if-nez v2, :cond_3

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 29
    .line 30
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 40
    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_0
    return-void
.end method
