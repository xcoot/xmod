.class public final Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final mWeaverResults:Landroid/util/SparseArray;


# instance fields
.field public mOp:I

.field public mSlot:I

.field public mStatus:I

.field public mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    .line 7
    .line 8
    return-void
.end method

.method public static begin(III)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mOp:I

    .line 7
    .line 8
    iput p1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mSlot:I

    .line 9
    .line 10
    iput p2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mUserId:I

    .line 11
    .line 12
    const/16 p0, -0x3e7

    .line 13
    .line 14
    iput p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mStatus:I

    .line 15
    .line 16
    sget-object p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p1
.end method

.method public static finish(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v2, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public static finishOff(ILjava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->getBySlotIdLocked(I)Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    .line 12
    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mOp:I

    .line 13
    .line 14
    iget v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mSlot:I

    .line 15
    .line 16
    iget v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mUserId:I

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " [ op : "

    .line 27
    .line 28
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, ", sl : "

    .line 35
    .line 36
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, ", u : "

    .line 43
    .line 44
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, " ]"

    .line 51
    .line 52
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-static {v1, p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mUserId:I

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    :goto_0
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0
.end method

.method public static getBySlotIdLocked(I)Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mSlot:I

    .line 23
    .line 24
    if-ne v2, p0, :cond_0

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, ", u : "

    .line 2
    .line 3
    const-string v1, ", sl : "

    .line 4
    .line 5
    const-string v2, " ]"

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mUserId:I

    .line 8
    .line 9
    iget v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mSlot:I

    .line 10
    .line 11
    iget v5, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mOp:I

    .line 12
    .line 13
    if-ltz v5, :cond_7

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    if-le v5, v6, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget v7, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mStatus:I

    .line 20
    .line 21
    const/16 v8, -0x3e7

    .line 22
    .line 23
    if-ne v7, v8, :cond_1

    .line 24
    .line 25
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 26
    .line 27
    const-string p0, "No update for weaver [ op : "

    .line 28
    .line 29
    invoke-static {v5, v4, p0, v1, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {v3, p0, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_3

    .line 38
    :cond_1
    if-eqz v7, :cond_5

    .line 39
    .line 40
    if-eq v7, v6, :cond_4

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    if-eq v7, v0, :cond_3

    .line 44
    .line 45
    const/4 v0, 0x3

    .line 46
    if-eq v7, v0, :cond_2

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v1, "weaver read unknown status "

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mStatus:I

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const-string/jumbo p0, "weaver read failed (THROTTLE)"

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const-string/jumbo p0, "weaver read failed (INCORRECT_KEY)"

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const-string/jumbo p0, "weaver read failed (FAILED)"

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    const-string p0, "Weaver read status ok"

    .line 79
    .line 80
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 81
    .line 82
    if-nez v5, :cond_6

    .line 83
    .line 84
    const-string/jumbo v0, "enrollment"

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_6
    const-string/jumbo v0, "verification"

    .line 89
    .line 90
    .line 91
    :goto_1
    const-string v1, "Result of weaver "

    .line 92
    .line 93
    const-string v5, " for user "

    .line 94
    .line 95
    const-string v6, " [ sl : "

    .line 96
    .line 97
    invoke-static {v3, v1, v0, v5, v6}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", st : "

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    goto :goto_3

    .line 120
    :cond_7
    :goto_2
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 121
    .line 122
    const-string p0, "Invalid operation for weaver [ op : "

    .line 123
    .line 124
    invoke-static {v5, v4, p0, v1, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {v3, p0, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    :goto_3
    return-object p0
.end method
