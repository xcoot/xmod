.class public final synthetic Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskDisplayArea;

.field public final synthetic f$1:[Lcom/android/server/wm/Task;

.field public final synthetic f$2:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskDisplayArea;[Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda9;->f$1:[Lcom/android/server/wm/Task;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda9;->f$2:Lcom/android/server/wm/Task;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda9;->f$1:[Lcom/android/server/wm/Task;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda9;->f$2:Lcom/android/server/wm/Task;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/Task;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-boolean v2, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_LAUNCH_POLICY:Z

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mIsFlexPanel:Z

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    aput-object p1, v1, v3

    .line 44
    .line 45
    :cond_0
    if-eqz p0, :cond_1

    .line 46
    .line 47
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    iget-object p0, v0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {p0, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object p0, v0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void
.end method
