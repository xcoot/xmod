.class public final synthetic Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda11;->f$1:[I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda11;->f$1:[I

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/Task;

    .line 6
    .line 7
    const-string/jumbo v1, "pauseBackTasks"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/Task;->pauseActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    aget v0, p0, p1

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    aput v0, p0, p1

    .line 22
    .line 23
    :cond_0
    return-void
.end method
