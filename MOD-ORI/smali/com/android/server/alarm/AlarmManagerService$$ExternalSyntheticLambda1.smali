.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/ActivityManager$UidFrozenStateChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUidFrozenStateChanged([I[I)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    array-length v2, p2

    .line 11
    array-length v3, p1

    .line 12
    if-eq v3, v2, :cond_0

    .line 13
    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string p2, "Got different length arrays in frozen state callback! uids.length: "

    .line 17
    .line 18
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    array-length p1, p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " frozenStates.length: "

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "AlarmManager"

    .line 38
    .line 39
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_0
    new-instance v3, Landroid/util/IntArray;

    .line 44
    .line 45
    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    .line 46
    .line 47
    .line 48
    move v4, v1

    .line 49
    :goto_0
    if-ge v4, v2, :cond_3

    .line 50
    .line 51
    aget v5, p2, v4

    .line 52
    .line 53
    if-eq v5, v0, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const-wide/32 v5, 0xfce9184

    .line 57
    .line 58
    .line 59
    aget v7, p1, v4

    .line 60
    .line 61
    invoke-static {v5, v6, v7}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    aget v5, p1, v4

    .line 69
    .line 70
    invoke-virtual {v3, v5}, Landroid/util/IntArray;->add(I)V

    .line 71
    .line 72
    .line 73
    :goto_1
    add-int/2addr v4, v0

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-lez p1, :cond_4

    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 86
    .line 87
    monitor-enter p2

    .line 88
    :try_start_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;

    .line 89
    .line 90
    invoke-direct {v0, v1, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    const/4 p1, 0x6

    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    .line 95
    .line 96
    .line 97
    monitor-exit p2

    .line 98
    goto :goto_2

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p0

    .line 102
    :cond_4
    :goto_2
    return-void
.end method
