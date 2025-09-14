.class public final synthetic Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessList;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessList;Ljava/lang/String;ZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/ProcessList;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 8
    iput-boolean p3, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;->f$2:Z

    .line 10
    iput-wide p4, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;->f$3:J

    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/ProcessList;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    .line 5
    iget-boolean v2, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;->f$2:Z

    .line 7
    iget-wide v3, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;->f$3:J

    .line 9
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 16
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 18
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_3

    .line 24
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 26
    iput-boolean v2, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    .line 28
    if-eqz v2, :cond_1

    .line 30
    iget-object p0, v0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 32
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v0, p1, v3, v4}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    .line 38
    move-result-wide v1

    .line 39
    const-wide/16 v5, 0x0

    .line 41
    cmp-long p0, v1, v5

    .line 43
    if-lez p0, :cond_2

    .line 45
    iget-object p0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 47
    iget-boolean v5, p0, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    .line 49
    const/16 v6, 0x3a

    .line 51
    if-nez v5, :cond_0

    .line 53
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 55
    invoke-virtual {p0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_2

    .line 61
    :cond_0
    iget-object p0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 63
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 65
    sub-long/2addr v1, v3

    .line 66
    invoke-virtual {p0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object p0, v0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 72
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 75
    :cond_2
    :goto_0
    iget-boolean p0, p1, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 77
    if-nez p0, :cond_3

    .line 79
    iget-object p0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 84
    :cond_3
    return-void
.end method
