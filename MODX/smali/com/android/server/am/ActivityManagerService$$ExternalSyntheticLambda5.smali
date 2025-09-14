.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/ArrayList;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Ljava/util/Set;

    .line 10
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 12
    check-cast p0, Ljava/util/ArrayList;

    .line 14
    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 16
    iget-wide v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 18
    const-wide/16 v3, 0x0

    .line 20
    cmp-long v1, v1, v3

    .line 22
    if-lez v1, :cond_0

    .line 24
    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 42
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 44
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 46
    move-object v3, p0

    .line 47
    check-cast v3, Ljava/lang/String;

    .line 49
    check-cast p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 51
    iget-object p0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 53
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 55
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 57
    if-eqz p0, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    :goto_0
    move-object v4, p0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iget-object p0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 67
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 69
    goto :goto_0

    .line 70
    :goto_1
    iget-wide v5, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 72
    const/16 v1, 0x10

    .line 74
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;J)V

    .line 77
    return-void

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 80
    check-cast v0, [I

    .line 82
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 84
    check-cast p0, Ljava/lang/String;

    .line 86
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 88
    const/4 v1, 0x0

    .line 89
    aget v2, v0, v1

    .line 91
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 93
    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 95
    if-le v2, v3, :cond_3

    .line 97
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 99
    invoke-virtual {v2, p0}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_2

    .line 105
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    .line 107
    if-eqz v2, :cond_3

    .line 109
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 112
    move-result p0

    .line 113
    if-eqz p0, :cond_3

    .line 115
    :cond_2
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 117
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 119
    aput p0, v0, v1

    .line 121
    :cond_3
    return-void

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
