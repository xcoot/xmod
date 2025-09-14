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

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    move-result v1

    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->throttlingLevels:Ljava/util/List;

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    .line 31
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->throttlingLevels:Ljava/util/List;

    .line 33
    new-instance v2, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    .line 35
    iget v3, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    .line 37
    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->powerQuotaMilliWatts:F

    .line 39
    invoke-direct {v2, v0, v3}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;-><init>(FI)V

    .line 42
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 4
    if-eqz p0, :cond_4

    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x1

    .line 25
    :goto_0
    if-ge v4, v3, :cond_3

    .line 27
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    .line 33
    iget v6, v5, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    .line 35
    iget v7, v2, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    .line 37
    if-gt v6, v7, :cond_1

    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    .line 41
    const-string/jumbo v3, "powerThrottlingMap must be strictly increasing, ignoring configuration. ThermalStatus "

    .line 44
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    iget v3, v5, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    .line 49
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v3, " <= "

    .line 54
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v2, v2, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    .line 59
    invoke-static {p0, v2, v1}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 62
    return-object v0

    .line 63
    :cond_1
    iget v6, v5, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->powerQuotaMilliWatts:F

    .line 65
    iget v2, v2, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->powerQuotaMilliWatts:F

    .line 67
    cmpl-float v7, v6, v2

    .line 69
    if-ltz v7, :cond_2

    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    .line 73
    const-string/jumbo v3, "powerThrottlingMap must be strictly decreasing, ignoring configuration. powerQuotaMilliWatts "

    .line 76
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 82
    const-string v3, " >= "

    .line 84
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-object v0

    .line 98
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 100
    move-object v2, v5

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 104
    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;-><init>(Ljava/util/List;)V

    .line 107
    return-object v0

    .line 108
    :cond_4
    :goto_1
    const-string p0, "PowerThrottlingData received null or empty throttling levels"

    .line 110
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 7
    if-nez v0, :cond_1

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 13
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->throttlingLevels:Ljava/util/List;

    .line 15
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->throttlingLevels:Ljava/util/List;

    .line 17
    check-cast p0, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->throttlingLevels:Ljava/util/List;

    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "PowerThrottlingData{throttlingLevels:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->throttlingLevels:Ljava/util/List;

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo p0, "} "

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
