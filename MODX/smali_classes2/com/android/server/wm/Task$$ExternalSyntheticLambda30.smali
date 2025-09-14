.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;->f$0:[I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;->f$0:[I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p1, p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    iput-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 26
    .line 27
    iput-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    .line 28
    .line 29
    iput-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    .line 30
    .line 31
    invoke-virtual {p2, v1}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    aget p2, p0, v2

    .line 35
    .line 36
    add-int/2addr p2, v0

    .line 37
    aput p2, p0, v2

    .line 38
    .line 39
    const-string p0, "clear-task-stack"

    .line 40
    .line 41
    invoke-virtual {p1, p0, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 42
    .line 43
    .line 44
    :cond_2
    move v0, v2

    .line 45
    :goto_0
    return v0
.end method
