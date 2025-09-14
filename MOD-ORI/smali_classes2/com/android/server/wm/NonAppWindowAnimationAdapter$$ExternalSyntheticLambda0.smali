.class public final synthetic Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerService;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$1:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$2:J

    .line 9
    .line 10
    iput-object p6, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$4:Ljava/util/ArrayList;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-wide v3, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$1:J

    .line 4
    .line 5
    iget-wide v5, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$2:J

    .line 6
    .line 7
    iget-object v7, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/NonAppWindowAnimationAdapter$$ExternalSyntheticLambda0;->f$4:Ljava/util/ArrayList;

    .line 10
    .line 11
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eq p1, v0, :cond_0

    .line 42
    .line 43
    new-instance v0, Lcom/android/server/wm/NonAppWindowAnimationAdapter;

    .line 44
    .line 45
    move-object v1, v0

    .line 46
    move-object v2, p1

    .line 47
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;-><init>(Lcom/android/server/wm/WindowContainer;JJ)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x0

    .line 58
    const/16 v3, 0x10

    .line 59
    .line 60
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method
