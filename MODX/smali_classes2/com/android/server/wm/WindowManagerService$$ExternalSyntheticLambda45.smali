.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ZZLjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda45;->f$0:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda45;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda45;->f$2:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda45;->f$0:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda45;->f$1:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda45;->f$2:Ljava/util/ArrayList;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :cond_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method
