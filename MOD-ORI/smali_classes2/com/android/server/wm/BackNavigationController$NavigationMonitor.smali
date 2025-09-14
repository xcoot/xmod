.class Lcom/android/server/wm/BackNavigationController$NavigationMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mNavigatingWindow:Lcom/android/server/wm/WindowState;

.field public mObserver:Landroid/os/RemoteCallback;

.field public final synthetic this$0:Lcom/android/server/wm/BackNavigationController;


# direct methods
.method public static -$$Nest$monTransitionReadyWhileNavigate(Lcom/android/server/wm/BackNavigationController$NavigationMonitor;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->isMonitorAnimationOrTransition()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    add-int/lit8 p1, p1, -0x1

    .line 30
    .line 31
    :goto_1
    if-ltz p1, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Lcom/android/server/wm/WindowContainer;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    .line 40
    .line 41
    invoke-virtual {p2, v1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    const-string/jumbo p1, "transitionHappens"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->cancelBackNavigating(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    :goto_2
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/BackNavigationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final cancelBackNavigating(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x797c

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->isMonitorAnimationOrTransition()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackNavigationController;->clearBackAnimations(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    sget p1, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/wm/BackNavigationController;->cancelPendingAnimation()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final isMonitorAnimationOrTransition()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->this$0:Lcom/android/server/wm/BackNavigationController;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method
