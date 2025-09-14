.class public final synthetic Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

.field public final synthetic f$1:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$2:Landroid/window/IBackAnimationFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;[Landroid/view/RemoteAnimationTarget;Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;->f$1:[Landroid/view/RemoteAnimationTarget;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;->f$2:Landroid/window/IBackAnimationFinishedCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;->f$1:[Landroid/view/RemoteAnimationTarget;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$$ExternalSyntheticLambda0;->f$2:Landroid/window/IBackAnimationFinishedCallback;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->hasTargetDetached()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_3

    .line 17
    .line 18
    sget v2, Lcom/android/server/wm/BackNavigationController;->sDefaultAnimationResId:I

    .line 19
    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    array-length v2, v1

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    array-length v2, v1

    .line 27
    add-int/lit8 v2, v2, -0x1

    .line 28
    .line 29
    :goto_0
    if-ltz v2, :cond_2

    .line 30
    .line 31
    aget-object v3, v1, v2

    .line 32
    .line 33
    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/window/BackAnimationAdapter;->getRunner()Landroid/window/IBackAnimationRunner;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-interface {v0, v1, v2, v2, p0}, Landroid/window/IBackAnimationRunner;->onAnimationStart([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/window/IBackAnimationFinishedCallback;)V

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :catch_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_3
    :goto_1
    iget-object p0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    .line 59
    .line 60
    const-string v1, "cancelAnimation"

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->cancelBackNavigating(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/window/BackAnimationAdapter;->getRunner()Landroid/window/IBackAnimationRunner;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-interface {p0}, Landroid/window/IBackAnimationRunner;->onAnimationCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :goto_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :goto_3
    return-void
.end method
