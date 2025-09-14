.class public final Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

.field public mCloseTarget:Lcom/android/server/wm/WindowContainer;

.field public mIsLaunchBehind:Z

.field public final mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

.field public mOpenTargets:[Lcom/android/server/wm/WindowContainer;

.field public final synthetic this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler;Landroid/window/BackAnimationAdapter;Lcom/android/server/wm/BackNavigationController$NavigationMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    .line 9
    .line 10
    return-void
.end method
