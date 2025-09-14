.class public final Lcom/android/server/security/KeyAttestationApplicationIdProviderService;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.security.keystore.IKeyAttestationApplicationIdProvider"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10

    .line 1
    const-string v0, "android.security.keystore.IKeyAttestationApplicationIdProvider"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    if-eq p1, v1, :cond_2

    .line 24
    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 35
    .line 36
    .line 37
    const-string p2, "No package for uid: "

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 40
    .line 41
    .line 42
    move-result p4

    .line 43
    const/16 v0, 0x3f9

    .line 44
    .line 45
    if-eq p4, v0, :cond_4

    .line 46
    .line 47
    const/16 v0, 0x434

    .line 48
    .line 49
    if-ne p4, v0, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 53
    .line 54
    const-string p1, "This service can only be used by Keystore or Credstore"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    :try_start_0
    iget-object p4, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 65
    .line 66
    invoke-virtual {p4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    if-eqz p4, :cond_7

    .line 71
    .line 72
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    array-length p2, p4

    .line 77
    new-array p2, p2, [Landroid/security/keystore/KeyAttestationPackageInfo;

    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    move v4, v0

    .line 81
    :goto_1
    array-length v5, p4

    .line 82
    if-ge v4, v5, :cond_6

    .line 83
    .line 84
    iget-object v5, p0, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 85
    .line 86
    aget-object v6, p4, v4

    .line 87
    .line 88
    const/16 v7, 0x40

    .line 89
    .line 90
    invoke-virtual {v5, v6, v7, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    new-instance v6, Landroid/security/keystore/KeyAttestationPackageInfo;

    .line 95
    .line 96
    invoke-direct {v6}, Landroid/security/keystore/KeyAttestationPackageInfo;-><init>()V

    .line 97
    .line 98
    .line 99
    new-instance v7, Ljava/lang/String;

    .line 100
    .line 101
    aget-object v8, p4, v4

    .line 102
    .line 103
    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iput-object v7, v6, Landroid/security/keystore/KeyAttestationPackageInfo;->packageName:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 109
    .line 110
    .line 111
    move-result-wide v7

    .line 112
    iput-wide v7, v6, Landroid/security/keystore/KeyAttestationPackageInfo;->versionCode:J

    .line 113
    .line 114
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 115
    .line 116
    array-length v7, v7

    .line 117
    new-array v7, v7, [Landroid/security/keystore/Signature;

    .line 118
    .line 119
    iput-object v7, v6, Landroid/security/keystore/KeyAttestationPackageInfo;->signatures:[Landroid/security/keystore/Signature;

    .line 120
    .line 121
    move v7, v0

    .line 122
    :goto_2
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 123
    .line 124
    array-length v8, v8

    .line 125
    if-ge v7, v8, :cond_5

    .line 126
    .line 127
    new-instance v8, Landroid/security/keystore/Signature;

    .line 128
    .line 129
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 130
    .line 131
    .line 132
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 133
    .line 134
    aget-object v9, v9, v7

    .line 135
    .line 136
    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    iput-object v9, v8, Landroid/security/keystore/Signature;->data:[B

    .line 141
    .line 142
    iget-object v9, v6, Landroid/security/keystore/KeyAttestationPackageInfo;->signatures:[Landroid/security/keystore/Signature;

    .line 143
    .line 144
    aput-object v8, v9, v7

    .line 145
    .line 146
    add-int/lit8 v7, v7, 0x1

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :catchall_0
    move-exception p0

    .line 150
    goto :goto_4

    .line 151
    :catch_0
    move-exception p0

    .line 152
    goto :goto_3

    .line 153
    :cond_5
    aput-object v6, p2, v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .line 155
    add-int/lit8 v4, v4, 0x1

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    .line 160
    .line 161
    new-instance p0, Landroid/security/keystore/KeyAttestationApplicationId;

    .line 162
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    .line 165
    .line 166
    iput-object p2, p0, Landroid/security/keystore/KeyAttestationApplicationId;->packageInfos:[Landroid/security/keystore/KeyAttestationPackageInfo;

    .line 167
    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 172
    .line 173
    .line 174
    return v1

    .line 175
    :cond_7
    :try_start_1
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 176
    .line 177
    new-instance p3, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-direct {p0, v1, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :goto_3
    :try_start_2
    new-instance p1, Landroid/os/RemoteException;

    .line 194
    .line 195
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-direct {p1, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    .line 205
    .line 206
    throw p0
.end method
