.class public final Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final throttlingLevels:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->throttlingLevels:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->throttlingLevels:Ljava/util/List;

    .line 32
    .line 33
    new-instance v2, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    .line 34
    .line 35
    iget v3, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    .line 36
    .line 37
    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->powerQuotaMilliWatts:F

    .line 38
    .line 39
    invoke-direct {v2, v0, v3}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;-><init>(FI)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public static create(Ljava/util/List;)Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "DisplayDeviceConfig"

    .line 3
    .line 4
    if-eqz p0, :cond_4

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x1

    .line 25
    :goto_0
    if-ge v4, v3, :cond_3

    .line 26
    .line 27
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    .line 32
    .line 33
    iget v6, v5, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    .line 34
    .line 35
    iget v7, v2, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    .line 36
    .line 37
    if-gt v6, v7, :cond_1

    .line 38
    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string/jumbo v3, "powerThrottlingMap must be strictly increasing, ignoring configuration. ThermalStatus "

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v3, v5, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    .line 48
    .line 49
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v3, " <= "

    .line 53
    .line 54
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget v2, v2, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    .line 58
    .line 59
    invoke-static {p0, v2, v1}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_1
    iget v6, v5, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->powerQuotaMilliWatts:F

    .line 64
    .line 65
    iget v2, v2, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->powerQuotaMilliWatts:F

    .line 66
    .line 67
    cmpl-float v7, v6, v2

    .line 68
    .line 69
    if-ltz v7, :cond_2

    .line 70
    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string/jumbo v3, "powerThrottlingMap must be strictly decreasing, ignoring configuration. powerQuotaMilliWatts "

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v3, " >= "

    .line 83
    .line 84
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    return-object v0

    .line 98
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 99
    .line 100
    move-object v2, v5

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 103
    .line 104
    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;-><init>(Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_4
    :goto_1
    const-string p0, "PowerThrottlingData received null or empty throttling levels"

    .line 109
    .line 110
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->throttlingLevels:Ljava/util/List;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->throttlingLevels:Ljava/util/List;

    .line 16
    .line 17
    check-cast p0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->throttlingLevels:Ljava/util/List;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PowerThrottlingData{throttlingLevels:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->throttlingLevels:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string/jumbo p0, "} "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
