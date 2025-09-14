.class public final Lcom/android/server/power/ForegroundPackageObserver$1;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ForegroundPackageObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ForegroundPackageObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver$1;->this$0:Lcom/android/server/power/ForegroundPackageObserver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/android/server/power/ForegroundPackageObserver$1;->this$0:Lcom/android/server/power/ForegroundPackageObserver;

    .line 5
    .line 6
    iget-object p2, p2, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPidSet:Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object p2, p0, Lcom/android/server/power/ForegroundPackageObserver$1;->this$0:Lcom/android/server/power/ForegroundPackageObserver;

    .line 19
    .line 20
    iget-object p2, p2, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPidSet:Ljava/util/LinkedHashSet;

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver$1;->this$0:Lcom/android/server/power/ForegroundPackageObserver;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPidSet:Ljava/util/LinkedHashSet;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver$1;->this$0:Lcom/android/server/power/ForegroundPackageObserver;

    .line 40
    .line 41
    iget-object p2, p1, Lcom/android/server/power/ForegroundPackageObserver;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPidSet:Ljava/util/LinkedHashSet;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->stream()Ljava/util/stream/Stream;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-virtual {p2, p1}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    iget-object p2, p0, Lcom/android/server/power/ForegroundPackageObserver$1;->this$0:Lcom/android/server/power/ForegroundPackageObserver;

    .line 70
    .line 71
    iget-object p2, p2, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPackageName:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_1

    .line 78
    .line 79
    iget-object p2, p0, Lcom/android/server/power/ForegroundPackageObserver$1;->this$0:Lcom/android/server/power/ForegroundPackageObserver;

    .line 80
    .line 81
    iput-object p1, p2, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPackageName:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {p2}, Lcom/android/server/power/ForegroundPackageObserver;->access$000(Lcom/android/server/power/ForegroundPackageObserver;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver$1;->this$0:Lcom/android/server/power/ForegroundPackageObserver;

    .line 87
    .line 88
    iget-object p2, p1, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPackageName:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    monitor-exit p0

    .line 94
    return-void

    .line 95
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p1
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProcessDied(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/ForegroundPackageObserver$1;->onForegroundActivitiesChanged(IIZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
