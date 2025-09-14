.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 6
    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 3
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;->f$1:I

    .line 5
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    .line 7
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result v2

    .line 27
    invoke-static {p0, v2}, Landroid/os/UserHandle;->getUid(II)I

    .line 30
    move-result v2

    .line 31
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 33
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_0

    .line 39
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 41
    const/16 v5, 0x6b

    .line 43
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v4, v5, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 50
    move-result v3

    .line 51
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 53
    monitor-enter v4

    .line 54
    :try_start_0
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 56
    invoke-virtual {v5, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    monitor-exit v4

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0

    .line 64
    :cond_1
    return-void
.end method
