.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(IZLjava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$0:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$2:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$0:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$1:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$2:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda27;->f$4:I

    .line 10
    .line 11
    check-cast p1, Lcom/android/server/wm/Task;

    .line 12
    .line 13
    iget v4, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    if-ne v4, v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v5

    .line 21
    :goto_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    :cond_1
    invoke-virtual {p1, p0, v3}, Lcom/android/server/wm/Task;->getDumpActivitiesLocked(ILjava/lang/String;)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    :cond_2
    return v5
.end method
