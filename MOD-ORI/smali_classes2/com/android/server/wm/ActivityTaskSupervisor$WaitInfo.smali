.class public final Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

.field public final mResult:Landroid/app/WaitResult;

.field public final mTargetComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/app/WaitResult;Landroid/content/ComponentName;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mTargetComponent:Landroid/content/ComponentName;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 9
    .line 10
    return-void
.end method
