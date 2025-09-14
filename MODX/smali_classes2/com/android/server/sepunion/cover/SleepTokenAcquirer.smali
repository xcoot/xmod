.class public final Lcom/android/server/sepunion/cover/SleepTokenAcquirer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mDefaultAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

.field public final mDefaultSleepToken:Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;

.field public final mHandler:Landroid/os/Handler;

.field public mIsCoverAppCovered:Z

.field public final mSleepTokenTask:Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;

.field public mSwitchState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p1, p0, v0}, Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/cover/SleepTokenAcquirer;I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mSleepTokenTask:Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    new-instance p1, Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-direct {p1, p0, v0}, Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/cover/SleepTokenAcquirer;I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mDefaultSleepToken:Lcom/android/server/sepunion/cover/SleepTokenAcquirer$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    new-instance p1, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final getSleepTokenAcquirer()Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mDefaultAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "createSleepTokenAcquirer 0"

    .line 6
    .line 7
    const-string v1, "CoverManager_SleepTokenAcquirer"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 13
    .line 14
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 15
    .line 16
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    .line 20
    const-string v2, "cover"

    .line 21
    .line 22
    invoke-direct {v1, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mDefaultAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/SleepTokenAcquirer;->mDefaultAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    .line 28
    .line 29
    return-object p0
.end method
