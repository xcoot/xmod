.class public final synthetic Lcom/android/server/os/SchedulingPolicyService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/os/SchedulingPolicyService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/os/SchedulingPolicyService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/os/SchedulingPolicyService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/os/SchedulingPolicyService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/os/SchedulingPolicyService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/os/SchedulingPolicyService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Lcom/android/server/os/SchedulingPolicyService$1;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    array-length v2, v1

    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aget v1, v1, v2

    .line 25
    .line 26
    iput v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/android/server/os/SchedulingPolicyService;->disableCpusetBoost(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method
