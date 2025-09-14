.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$4:Landroid/app/ActivityOptions;

.field public final synthetic f$5:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;[ZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;->f$1:[Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;->f$3:Lcom/android/server/wm/ActivityRecord;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;->f$4:Landroid/app/ActivityOptions;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;->f$5:Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;->f$0:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;->f$1:[Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;->f$2:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;->f$3:Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;->f$4:Landroid/app/ActivityOptions;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda19;->f$5:Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    check-cast p1, Lcom/android/server/wm/Task;

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-virtual {p1, v5}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    if-eqz v7, :cond_3

    .line 25
    .line 26
    if-nez v6, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-ne p1, v0, :cond_1

    .line 30
    .line 31
    aget-boolean p0, v1, v5

    .line 32
    .line 33
    or-int/2addr p0, v2

    .line 34
    aput-boolean p0, v1, v5

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 38
    .line 39
    invoke-virtual {v6, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    if-ne v6, v3, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    aget-boolean p1, v1, v5

    .line 52
    .line 53
    invoke-virtual {v6, p0}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    or-int/2addr p0, p1

    .line 58
    aput-boolean p0, v1, v5

    .line 59
    .line 60
    :cond_3
    :goto_0
    return-void
.end method
