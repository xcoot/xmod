.class public final synthetic Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessProfileRecord;

.field public final synthetic f$1:Lcom/android/internal/app/procstats/ProcessState;

.field public final synthetic f$2:Lcom/android/server/am/ProcessStatsService;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/internal/app/procstats/ProcessState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;ILcom/android/internal/app/procstats/ProcessState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ProcessProfileRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/app/procstats/ProcessState;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/ProcessStatsService;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;->f$4:Lcom/android/internal/app/procstats/ProcessState;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ProcessProfileRecord;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/app/procstats/ProcessState;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/am/ProcessStatsService;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;->f$3:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;->f$4:Lcom/android/internal/app/procstats/ProcessState;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    check-cast p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v4, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    if-eq v4, v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    iget-wide v4, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v1, v2, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 38
    .line 39
    invoke-virtual {v1, p1, v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 44
    .line 45
    iget-object v1, v2, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 46
    .line 47
    invoke-virtual {v1, p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 52
    .line 53
    if-eq p1, p0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method
