.class public final Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public key:Ljava/lang/String;

.field public type:I

.field public userId:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 8
    .line 9
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    .line 10
    .line 11
    iget v2, p1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    .line 16
    .line 17
    iget v2, p1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    .line 15
    .line 16
    add-int/2addr v0, p0

    .line 17
    return v0
.end method
