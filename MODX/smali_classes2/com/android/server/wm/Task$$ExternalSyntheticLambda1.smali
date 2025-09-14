.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;->f$0:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;->f$0:Z

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-boolean v1, p1, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    :cond_0
    if-nez p0, :cond_1

    .line 32
    .line 33
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 34
    .line 35
    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 36
    .line 37
    if-nez p0, :cond_2

    .line 38
    .line 39
    :cond_1
    const/4 p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 p0, 0x0

    .line 42
    :goto_0
    return p0
.end method
