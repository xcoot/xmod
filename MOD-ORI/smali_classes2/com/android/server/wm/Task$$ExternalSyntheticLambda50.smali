.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskFragment;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$3:Landroid/app/ActivityOptions;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskFragment;[ZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;->f$0:Lcom/android/server/wm/TaskFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;->f$1:[Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;->f$2:Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;->f$3:Landroid/app/ActivityOptions;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;->f$4:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;->f$0:Lcom/android/server/wm/TaskFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;->f$1:[Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;->f$2:Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;->f$3:Landroid/app/ActivityOptions;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;->f$4:Z

    .line 10
    .line 11
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    .line 12
    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    aget-boolean v4, v1, v0

    .line 26
    .line 27
    invoke-virtual {p1, v2, v3, p0}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    or-int/2addr p0, v4

    .line 32
    aput-boolean p0, v1, v0

    .line 33
    .line 34
    :goto_0
    return-void
.end method
