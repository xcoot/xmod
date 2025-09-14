.class public final synthetic Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessErrorStateRecord;

.field public final synthetic f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 8
    iput-boolean p3, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$2:Z

    .line 10
    iput-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$3:Z

    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 5
    iget-boolean v2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$2:Z

    .line 7
    iget-boolean p0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$3:Z

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->nativePidCollectionStarted()V

    .line 15
    iget-object v3, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 17
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 19
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    if-nez v3, :cond_0

    .line 27
    iget-object v3, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 29
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 31
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 37
    :cond_0
    if-nez v2, :cond_2

    .line 39
    if-eqz p0, :cond_1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object p0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    :goto_0
    move p0, v4

    .line 46
    :goto_1
    sget-object v2, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 48
    array-length v3, v2

    .line 49
    if-ge p0, v3, :cond_4

    .line 51
    aget-object v2, v2, p0

    .line 53
    iget-object v3, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 55
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_3

    .line 63
    const/4 p0, 0x1

    .line 64
    new-array p0, p0, [Ljava/lang/String;

    .line 66
    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 68
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 70
    aput-object v0, p0, v4

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    add-int/lit8 p0, p0, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    move-object p0, v5

    .line 77
    :goto_2
    if-nez p0, :cond_5

    .line 79
    move-object p0, v5

    .line 80
    goto :goto_3

    .line 81
    :cond_5
    invoke-static {p0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    .line 84
    move-result-object p0

    .line 85
    :goto_3
    if-eqz p0, :cond_6

    .line 87
    new-instance v5, Ljava/util/ArrayList;

    .line 89
    array-length v0, p0

    .line 90
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    array-length v0, p0

    .line 94
    :goto_4
    if-ge v4, v0, :cond_6

    .line 96
    aget v2, p0, v4

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v4, v4, 0x1

    .line 107
    goto :goto_4

    .line 108
    :cond_6
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->nativePidCollectionEnded()V

    .line 111
    return-object v5
.end method
