.class public final Lcom/android/server/am/ActivityManagerServiceExt$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$1;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUnformattedPackageFeatureFileChanged(Ljava/lang/String;Ljava/util/function/Function;)V
    .locals 2

    .line 1
    const-string v0, "PM_WA_WORK_COMP_CHANGED change to "

    .line 2
    .line 3
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/io/FileDescriptor;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$1;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 13
    .line 14
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17
    .line 18
    .line 19
    monitor-enter p2

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$1;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;

    .line 23
    .line 24
    instance-of v1, v1, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;->updateParserIfNeeded(Ljava/io/FileDescriptor;)Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$1;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mParser:Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->isWorkCompChangedEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_WA_WORK_COMP_CHANGED:Z

    .line 50
    .line 51
    if-eq p1, p0, :cond_2

    .line 52
    .line 53
    sput-boolean p0, Lcom/samsung/android/rune/PMRune;->PM_WA_WORK_COMP_CHANGED:Z

    .line 54
    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_0
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 77
    .line 78
    .line 79
    throw p0
.end method
