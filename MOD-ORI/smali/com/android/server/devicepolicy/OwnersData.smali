.class public final Lcom/android/server/devicepolicy/OwnersData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

.field public mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

.field public final mDeviceOwnerTypes:Landroid/util/ArrayMap;

.field public mDeviceOwnerUserId:I

.field public mMigratedToPolicyEngine:Z

.field public final mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

.field public mPoliciesMigratedPostUpdate:Z

.field public final mProfileOwners:Landroid/util/ArrayMap;

.field public mRequiredPasswordComplexityMigrated:Z

.field public mSecurityLoggingMigrated:Z

.field public mSuspendedPackagesMigrated:Z

.field public mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

.field public mSystemUpdateFreezeStart:Ljava/time/LocalDate;

.field public mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

.field public mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/PolicyPathProvider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, -0x2710

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 7
    .line 8
    new-instance v0, Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    .line 14
    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mMigratedToPolicyEngine:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSecurityLoggingMigrated:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mRequiredPasswordComplexityMigrated:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSuspendedPackagesMigrated:Z

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mPoliciesMigratedPostUpdate:Z

    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "Device Owner: "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "User ID: "

    .line 22
    .line 23
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 39
    .line 40
    .line 41
    move v0, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 51
    .line 52
    .line 53
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "System Update Policy: "

    .line 56
    .line 57
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    move v0, v1

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 74
    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_4

    .line 90
    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Ljava/util/Map$Entry;

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 100
    .line 101
    .line 102
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v4, "Profile Owner (User "

    .line 105
    .line 106
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v4, "): "

    .line 117
    .line 118
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 129
    .line 130
    .line 131
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 136
    .line 137
    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 141
    .line 142
    .line 143
    move v0, v1

    .line 144
    goto :goto_1

    .line 145
    :cond_4
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    .line 146
    .line 147
    if-eqz v2, :cond_6

    .line 148
    .line 149
    if-eqz v0, :cond_5

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 152
    .line 153
    .line 154
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v2, "Pending System Update: "

    .line 157
    .line 158
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_6
    move v1, v0

    .line 175
    :goto_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    .line 176
    .line 177
    if-nez v0, :cond_7

    .line 178
    .line 179
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    .line 180
    .line 181
    if-eqz v0, :cond_9

    .line 182
    .line 183
    :cond_7
    if-eqz v1, :cond_8

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 186
    .line 187
    .line 188
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v1, "System update freeze record: "

    .line 191
    .line 192
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :cond_9
    return-void
.end method

.method public getDeviceOwnerFile()Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string/jumbo v1, "device_owner_2.xml"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public getProfileOwnerFile(I)Ljava/io/File;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string/jumbo p1, "profile_owner.xml"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "start: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    .line 10
    .line 11
    const-string/jumbo v2, "null"

    .line 12
    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :goto_0
    const-string v1, "; end: "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public final load([I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/OwnersData;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->readFromFileLocked()V

    .line 7
    .line 8
    .line 9
    array-length v0, p1

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    aget v2, p1, v1

    .line 14
    .line 15
    new-instance v3, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;

    .line 16
    .line 17
    invoke-direct {v3, p0, v2}, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/OwnersData;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->readFromFileLocked()V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 27
    .line 28
    iget v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    :goto_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 53
    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string p1, "User %d has both DO and PO, which is not supported"

    .line 63
    .line 64
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "DevicePolicyManagerService"

    .line 69
    .line 70
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method

.method public final writeDeviceOwner()Z
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/OwnersData;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->writeToFileLocked()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method
