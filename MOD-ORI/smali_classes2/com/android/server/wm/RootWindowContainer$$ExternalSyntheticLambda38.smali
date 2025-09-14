.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic f$1:Lcom/android/server/wm/TaskDisplayArea;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda38;->f$0:Lcom/android/server/wm/RootWindowContainer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda38;->f$1:Lcom/android/server/wm/TaskDisplayArea;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda38;->f$0:Lcom/android/server/wm/RootWindowContainer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda38;->f$1:Lcom/android/server/wm/TaskDisplayArea;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-ne p1, p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->process(Lcom/android/server/wm/WindowContainer;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, v0, Lcom/android/server/wm/RootWindowContainer;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealRecord:Lcom/android/server/wm/ActivityRecord;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    move-object v1, p0

    .line 26
    :cond_1
    :goto_0
    return-object v1
.end method
