.class public final Lcom/android/server/audio/AdiDeviceState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAudioDeviceCategory:I

.field public mAutoBtCategorySet:Z

.field public final mDeviceAddress:Ljava/lang/String;

.field public final mDeviceId:Landroid/util/Pair;

.field public final mDeviceType:I

.field public mHasHeadTracker:Z

.field public mHeadTrackerEnabled:Z

.field public final mInternalDeviceType:I

.field public mSAEnabled:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mAutoBtCategorySet:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mHasHeadTracker:Z

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iput p2, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    .line 23
    .line 24
    :goto_0
    iget p1, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    .line 25
    .line 26
    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string p3, ""

    .line 37
    .line 38
    :goto_1
    iput-object p3, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 39
    .line 40
    new-instance p1, Landroid/util/Pair;

    .line 41
    .line 42
    iget p2, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    .line 43
    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceId:Landroid/util/Pair;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-class v3, Lcom/android/server/audio/AdiDeviceState;

    .line 14
    .line 15
    if-eq v3, v2, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/android/server/audio/AdiDeviceState;

    .line 19
    .line 20
    iget v2, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I

    .line 21
    .line 22
    iget v3, p1, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I

    .line 23
    .line 24
    if-ne v2, v3, :cond_3

    .line 25
    .line 26
    iget v2, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    .line 27
    .line 28
    iget v3, p1, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    .line 29
    .line 30
    if-ne v2, v3, :cond_3

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v3, p1, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/android/server/audio/AdiDeviceState;->mSAEnabled:Z

    .line 43
    .line 44
    iget-boolean v3, p1, Lcom/android/server/audio/AdiDeviceState;->mSAEnabled:Z

    .line 45
    .line 46
    if-ne v2, v3, :cond_3

    .line 47
    .line 48
    iget-boolean v2, p0, Lcom/android/server/audio/AdiDeviceState;->mHasHeadTracker:Z

    .line 49
    .line 50
    iget-boolean v3, p1, Lcom/android/server/audio/AdiDeviceState;->mHasHeadTracker:Z

    .line 51
    .line 52
    if-ne v2, v3, :cond_3

    .line 53
    .line 54
    iget-boolean v2, p0, Lcom/android/server/audio/AdiDeviceState;->mHeadTrackerEnabled:Z

    .line 55
    .line 56
    iget-boolean v3, p1, Lcom/android/server/audio/AdiDeviceState;->mHeadTrackerEnabled:Z

    .line 57
    .line 58
    if-ne v2, v3, :cond_3

    .line 59
    .line 60
    iget p0, p0, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I

    .line 61
    .line 62
    iget p1, p1, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I

    .line 63
    .line 64
    if-ne p0, p1, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move v0, v1

    .line 68
    :goto_0
    return v0
.end method

.method public final declared-synchronized getAudioDeviceAttributes()Landroid/media/AudioDeviceAttributes;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    .line 3
    .line 4
    iget v1, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    invoke-direct {v0, v3, v1, v2}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
.end method

.method public final declared-synchronized getAudioDeviceCategory()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final declared-synchronized getDeviceAddress()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final declared-synchronized getInternalDeviceType()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final declared-synchronized hasHeadTracker()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mHasHeadTracker:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v0, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mSAEnabled:Z

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mHasHeadTracker:Z

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mHeadTrackerEnabled:Z

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget v0, p0, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    iget-object v3, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 38
    .line 39
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public final declared-synchronized isHeadTrackerEnabled()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mHeadTrackerEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final declared-synchronized isSAEnabled()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mSAEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final declared-synchronized setAudioDeviceCategory(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public final declared-synchronized setHasHeadTracker(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AdiDeviceState;->mHasHeadTracker:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public final declared-synchronized setHeadTrackerEnabled(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AdiDeviceState;->mHeadTrackerEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public final declared-synchronized setSAEnabled(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AdiDeviceState;->mSAEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public final declared-synchronized toPersistableString()Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ","

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ","

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/android/server/audio/AdiDeviceState;->mSAEnabled:Z

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const-string v1, "1"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_3

    .line 36
    :cond_0
    const-string v1, "0"

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ","

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-boolean v1, p0, Lcom/android/server/audio/AdiDeviceState;->mHasHeadTracker:Z

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    const-string v1, "1"

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const-string v1, "0"

    .line 54
    .line 55
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ","

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-boolean v1, p0, Lcom/android/server/audio/AdiDeviceState;->mHeadTrackerEnabled:Z

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    const-string v1, "1"

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const-string v1, "0"

    .line 71
    .line 72
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ","

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget v1, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, ","

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget v1, p0, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    .line 100
    return-object v0

    .line 101
    :goto_3
    monitor-exit p0

    .line 102
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "type: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceType:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " internal type: 0x"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    .line 20
    .line 21
    const-string v2, " addr: "

    .line 22
    .line 23
    invoke-static {v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v2}, Landroid/media/Utils;->anonymizeBluetoothAddress(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " bt audio type: "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I

    .line 41
    .line 42
    invoke-static {v1}, Landroid/media/AudioManager;->audioDeviceCategoryToString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, " enabled: "

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/android/server/audio/AdiDeviceState;->mSAEnabled:Z

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, " HT: "

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-boolean v1, p0, Lcom/android/server/audio/AdiDeviceState;->mHasHeadTracker:Z

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, " HTenabled: "

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-boolean p0, p0, Lcom/android/server/audio/AdiDeviceState;->mHeadTrackerEnabled:Z

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method

.method public final declared-synchronized updateAudioDeviceCategory()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/media/audio/Flags;->automaticBtDeviceType()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/AdiDeviceState;->mInternalDeviceType:I

    .line 12
    .line 13
    invoke-static {v0}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return v1

    .line 21
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mAutoBtCategorySet:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return v1

    .line 27
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/server/audio/AdiDeviceState;->mDeviceAddress:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/android/server/audio/BtHelper;->getBtDeviceCategory(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return v1

    .line 37
    :cond_3
    :try_start_4
    iput v0, p0, Lcom/android/server/audio/AdiDeviceState;->mAudioDeviceCategory:I

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/android/server/audio/AdiDeviceState;->mAutoBtCategorySet:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return v0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    monitor-exit p0

    .line 46
    throw v0
.end method
