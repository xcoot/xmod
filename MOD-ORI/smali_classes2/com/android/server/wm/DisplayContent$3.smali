.class public final Lcom/android/server/wm/DisplayContent$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public behindTopWindow:Z

.field public final synthetic val$searchBehind:Lcom/android/server/wm/WindowState;

.field public final synthetic val$taskId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowState;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$3;->val$searchBehind:Lcom/android/server/wm/WindowState;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/DisplayContent$3;->val$taskId:I

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$3;->behindTopWindow:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$3;->behindTopWindow:Z

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$3;->val$searchBehind:Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent$3;->behindTopWindow:Z

    .line 14
    .line 15
    :cond_0
    :goto_0
    move v1, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget v0, p0, Lcom/android/server/wm/DisplayContent$3;->val$taskId:I

    .line 18
    .line 19
    const/4 v3, -0x1

    .line 20
    if-ne v0, v3, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget p0, p0, Lcom/android/server/wm/DisplayContent$3;->val$taskId:I

    .line 36
    .line 37
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 38
    .line 39
    if-ne v0, p0, :cond_0

    .line 40
    .line 41
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_4

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    :goto_1
    return v1
.end method
