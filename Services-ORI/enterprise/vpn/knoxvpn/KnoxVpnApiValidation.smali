.class public final Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mContext:Landroid/content/Context;

.field public static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public static mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

.field public static mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;


# instance fields
.field public mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field public mUserMgr:Landroid/os/UserManager;

.field public vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 6
    .line 7
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 8
    .line 9
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    .line 11
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method public static getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string/jumbo v1, "persona"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 15
    .line 16
    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 17
    .line 18
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 19
    .line 20
    return-object v0
.end method


# virtual methods
.method public final activateVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Z)I
    .locals 2

    .line 1
    const-string v0, "KnoxVpnApiValidation"

    .line 2
    .line 3
    if-eqz p2, :cond_6

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    const/16 p0, 0x6c

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    iget p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 22
    .line 23
    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 24
    .line 25
    if-eq p2, p1, :cond_2

    .line 26
    .line 27
    const/16 p0, 0x70

    .line 28
    .line 29
    return p0

    .line 30
    :cond_2
    iget p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->routeType:I

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    const/16 p0, 0x6d

    .line 35
    .line 36
    return p0

    .line 37
    :cond_3
    if-eqz p3, :cond_4

    .line 38
    .line 39
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    if-ne p0, p1, :cond_5

    .line 43
    .line 44
    const/16 p0, 0x73

    .line 45
    .line 46
    return p0

    .line 47
    :cond_4
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    if-nez p0, :cond_5

    .line 50
    .line 51
    const/16 p0, 0x74

    .line 52
    .line 53
    return p0

    .line 54
    :cond_5
    const/16 p0, 0x64

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string p2, "Exception at activateVpnProfileValidation API "

    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/16 p0, 0x65

    .line 69
    .line 70
    :goto_0
    const-string p1, "activateVpnProfileValidation : validationResult value is "

    .line 71
    .line 72
    invoke-static {p0, p1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return p0

    .line 76
    :cond_6
    :goto_1
    const/16 p0, 0x68

    .line 77
    .line 78
    return p0
.end method

.method public final addContainerPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    const-string v5, "KnoxVpnApiValidation"

    .line 12
    .line 13
    if-eqz v4, :cond_1b

    .line 14
    .line 15
    if-eqz v3, :cond_1b

    .line 16
    .line 17
    :try_start_0
    array-length v6, v3

    .line 18
    const/4 v7, 0x1

    .line 19
    if-lt v6, v7, :cond_1b

    .line 20
    .line 21
    iget-object v6, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 22
    .line 23
    if-nez v6, :cond_0

    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_0
    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 28
    .line 29
    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    if-nez v6, :cond_1

    .line 34
    .line 35
    const/16 v0, 0x6c

    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    iget v8, v6, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 39
    .line 40
    iget v9, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 41
    .line 42
    if-eq v8, v9, :cond_2

    .line 43
    .line 44
    const/16 v0, 0x70

    .line 45
    .line 46
    return v0

    .line 47
    :cond_2
    iget v8, v6, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 48
    .line 49
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const/16 v10, 0x72

    .line 58
    .line 59
    if-eqz v8, :cond_3

    .line 60
    .line 61
    if-nez v9, :cond_3

    .line 62
    .line 63
    const-string v0, "EMM present in work profile trying to configure vpn for user 0"

    .line 64
    .line 65
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return v10

    .line 69
    :catch_0
    move-exception v0

    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :cond_3
    iget v8, v6, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->routeType:I

    .line 73
    .line 74
    if-nez v8, :cond_4

    .line 75
    .line 76
    const/16 v0, 0x6d

    .line 77
    .line 78
    return v0

    .line 79
    :cond_4
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->isUserTypeAppSeparation(I)Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-nez v8, :cond_7

    .line 84
    .line 85
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    const/16 v9, 0x71

    .line 90
    .line 91
    if-eqz v8, :cond_5

    .line 92
    .line 93
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    invoke-virtual {v8, v2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-nez v8, :cond_5

    .line 102
    .line 103
    return v9

    .line 104
    :cond_5
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 105
    .line 106
    invoke-virtual {v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    iget v11, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 115
    .line 116
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    if-eq v8, v11, :cond_6

    .line 121
    .line 122
    return v10

    .line 123
    :cond_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    if-eqz v8, :cond_7

    .line 128
    .line 129
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    invoke-virtual {v8, v10}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-eqz v8, :cond_7

    .line 142
    .line 143
    iget v8, v6, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->personaId:I

    .line 144
    .line 145
    if-eq v8, v2, :cond_7

    .line 146
    .line 147
    return v9

    .line 148
    :cond_7
    array-length v8, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    const/4 v10, 0x0

    .line 150
    :goto_0
    const-string v11, "ADD_ALL_PACKAGES"

    .line 151
    .line 152
    if-ge v10, v8, :cond_11

    .line 153
    .line 154
    :try_start_1
    aget-object v12, v3, v10

    .line 155
    .line 156
    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 157
    .line 158
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-static {v2, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v11

    .line 169
    const/16 v13, 0x89

    .line 170
    .line 171
    if-eqz v11, :cond_8

    .line 172
    .line 173
    return v13

    .line 174
    :cond_8
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 175
    .line 176
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-static {v2, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v11

    .line 183
    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 184
    .line 185
    invoke-virtual {v14, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 190
    .line 191
    invoke-virtual {v14, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    const/16 v14, 0x87

    .line 196
    .line 197
    if-eqz v11, :cond_a

    .line 198
    .line 199
    iget-object v15, v11, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v15

    .line 205
    if-nez v15, :cond_a

    .line 206
    .line 207
    iget v15, v11, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 208
    .line 209
    iget v9, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 210
    .line 211
    if-ne v15, v9, :cond_9

    .line 212
    .line 213
    return v14

    .line 214
    :cond_9
    iget v9, v11, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 215
    .line 216
    iget v15, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 217
    .line 218
    if-eq v9, v15, :cond_a

    .line 219
    .line 220
    const/16 v0, 0x88

    .line 221
    .line 222
    return v0

    .line 223
    :cond_a
    if-eqz v11, :cond_b

    .line 224
    .line 225
    iget-object v9, v11, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    if-eqz v9, :cond_b

    .line 232
    .line 233
    iget v9, v11, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 234
    .line 235
    iget v11, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 236
    .line 237
    if-ne v9, v11, :cond_b

    .line 238
    .line 239
    return v14

    .line 240
    :cond_b
    iget-object v9, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 241
    .line 242
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-static {v2, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    if-lez v9, :cond_d

    .line 250
    .line 251
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 252
    .line 253
    invoke-virtual {v11, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v11

    .line 257
    const/16 v14, 0x8b

    .line 258
    .line 259
    if-eqz v11, :cond_c

    .line 260
    .line 261
    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    move-result v11

    .line 265
    if-nez v11, :cond_c

    .line 266
    .line 267
    return v14

    .line 268
    :cond_c
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 269
    .line 270
    invoke-virtual {v11, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUidWithNoInternetPermission(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v11

    .line 274
    if-eqz v11, :cond_d

    .line 275
    .line 276
    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result v11

    .line 280
    if-nez v11, :cond_d

    .line 281
    .line 282
    return v14

    .line 283
    :cond_d
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 284
    .line 285
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    invoke-static {v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfUidIsBlackListed(II)Z

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    if-eqz v9, :cond_e

    .line 293
    .line 294
    return v13

    .line 295
    :cond_e
    const-string/jumbo v9, "com.knox.vpn.proxyhandler"

    .line 296
    .line 297
    .line 298
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 299
    .line 300
    .line 301
    move-result v9

    .line 302
    if-eqz v9, :cond_f

    .line 303
    .line 304
    return v13

    .line 305
    :cond_f
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v9

    .line 309
    const-string v11, ""

    .line 310
    .line 311
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v9

    .line 315
    if-eqz v9, :cond_10

    .line 316
    .line 317
    const/16 v0, 0x86

    .line 318
    .line 319
    return v0

    .line 320
    :cond_10
    add-int/lit8 v10, v10, 0x1

    .line 321
    .line 322
    goto/16 :goto_0

    .line 323
    .line 324
    :cond_11
    iget-object v8, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 325
    .line 326
    invoke-virtual {v8, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    .line 327
    .line 328
    .line 329
    move-result v8

    .line 330
    const/16 v9, 0x64

    .line 331
    .line 332
    if-eqz v8, :cond_1a

    .line 333
    .line 334
    iget-object v8, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 335
    .line 336
    invoke-virtual {v8, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    .line 337
    .line 338
    .line 339
    move-result v8

    .line 340
    iget v1, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 341
    .line 342
    if-ne v8, v1, :cond_19

    .line 343
    .line 344
    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    invoke-static {v2, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    if-eqz v1, :cond_1a

    .line 358
    .line 359
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 360
    .line 361
    .line 362
    move-result v8

    .line 363
    const/16 v10, 0x77

    .line 364
    .line 365
    if-nez v8, :cond_13

    .line 366
    .line 367
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 368
    .line 369
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-eq v0, v7, :cond_12

    .line 374
    .line 375
    return v10

    .line 376
    :cond_12
    return v9

    .line 377
    :cond_13
    iget v1, v6, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I

    .line 378
    .line 379
    if-ne v1, v7, :cond_14

    .line 380
    .line 381
    const/16 v0, 0x73

    .line 382
    .line 383
    return v0

    .line 384
    :cond_14
    iget-object v1, v6, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mExemptPackageList:Ljava/util/HashSet;

    .line 385
    .line 386
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 387
    .line 388
    .line 389
    move-result v7

    .line 390
    if-eqz v7, :cond_15

    .line 391
    .line 392
    return v10

    .line 393
    :cond_15
    array-length v7, v3

    .line 394
    const/4 v8, 0x0

    .line 395
    :goto_1
    if-ge v8, v7, :cond_18

    .line 396
    .line 397
    aget-object v10, v3, v8

    .line 398
    .line 399
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 400
    .line 401
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    invoke-static {v2, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 405
    .line 406
    .line 407
    move-result v10

    .line 408
    const/4 v11, -0x1

    .line 409
    if-eq v10, v11, :cond_17

    .line 410
    .line 411
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    .line 413
    .line 414
    move-result-object v11

    .line 415
    invoke-virtual {v1, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v11

    .line 419
    if-eqz v11, :cond_17

    .line 420
    .line 421
    iget-object v11, v6, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mExemptPackageList:Ljava/util/HashSet;

    .line 422
    .line 423
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v12

    .line 427
    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v11

    .line 431
    if-eqz v11, :cond_16

    .line 432
    .line 433
    iget-object v11, v6, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mExemptPackageList:Ljava/util/HashSet;

    .line 434
    .line 435
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v12

    .line 439
    invoke-virtual {v11, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    :cond_16
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 443
    .line 444
    invoke-virtual {v11, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->removeExemptedListToDatabase(I)Z

    .line 445
    .line 446
    .line 447
    new-instance v11, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .line 451
    .line 452
    const-string/jumbo v12, "user wide vpn was configured "

    .line 453
    .line 454
    .line 455
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string/jumbo v12, "removing uid from exempt list "

    .line 462
    .line 463
    .line 464
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v10

    .line 474
    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .line 476
    .line 477
    :cond_17
    add-int/lit8 v8, v8, 0x1

    .line 478
    .line 479
    goto :goto_1

    .line 480
    :cond_18
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 481
    .line 482
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->updateUidsToVpnUidRange(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 483
    .line 484
    .line 485
    goto :goto_3

    .line 486
    :cond_19
    const/16 v0, 0x78

    .line 487
    .line 488
    return v0

    .line 489
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    const-string v2, "Exception at addContainerPackagesToVpnValidation API "

    .line 492
    .line 493
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-static {v0, v1, v5}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    const/16 v9, 0x65

    .line 500
    .line 501
    :cond_1a
    :goto_3
    const-string v0, "addContainerPackagesToVpnValidation : validationResult value is "

    .line 502
    .line 503
    invoke-static {v9, v0, v5}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    return v9

    .line 507
    :cond_1b
    :goto_4
    const/16 v0, 0x68

    .line 508
    .line 509
    return v0
.end method

.method public final addPackagesToVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "KnoxVpnApiValidation"

    .line 10
    .line 11
    if-eqz v3, :cond_18

    .line 12
    .line 13
    if-eqz v2, :cond_18

    .line 14
    .line 15
    :try_start_0
    array-length v5, v2

    .line 16
    const/4 v6, 0x1

    .line 17
    if-lt v5, v6, :cond_18

    .line 18
    .line 19
    iget-object v5, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 20
    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_0
    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 26
    .line 27
    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-nez v5, :cond_1

    .line 32
    .line 33
    const/16 v0, 0x6c

    .line 34
    .line 35
    return v0

    .line 36
    :cond_1
    iget v7, v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 37
    .line 38
    iget v8, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 39
    .line 40
    if-eq v7, v8, :cond_2

    .line 41
    .line 42
    const/16 v0, 0x70

    .line 43
    .line 44
    return v0

    .line 45
    :cond_2
    iget v7, v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 46
    .line 47
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-eqz v7, :cond_3

    .line 56
    .line 57
    if-nez v8, :cond_3

    .line 58
    .line 59
    const-string v0, "EMM present in work profile trying to configure vpn for user 0"

    .line 60
    .line 61
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const/16 v0, 0x72

    .line 65
    .line 66
    return v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_3
    iget v7, v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->routeType:I

    .line 71
    .line 72
    if-nez v7, :cond_4

    .line 73
    .line 74
    const/16 v0, 0x6d

    .line 75
    .line 76
    return v0

    .line 77
    :cond_4
    array-length v7, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    const/4 v8, 0x0

    .line 79
    move v9, v8

    .line 80
    :goto_0
    const-string v10, "ADD_ALL_PACKAGES"

    .line 81
    .line 82
    if-ge v9, v7, :cond_e

    .line 83
    .line 84
    :try_start_1
    aget-object v11, v2, v9

    .line 85
    .line 86
    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 87
    .line 88
    iget v13, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 89
    .line 90
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-static {v13, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    const/16 v12, 0x89

    .line 102
    .line 103
    if-eqz v10, :cond_5

    .line 104
    .line 105
    return v12

    .line 106
    :cond_5
    iget-object v10, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 107
    .line 108
    iget v13, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 109
    .line 110
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {v13, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 118
    .line 119
    invoke-virtual {v13, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 124
    .line 125
    invoke-virtual {v13, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    const/16 v13, 0x87

    .line 130
    .line 131
    if-eqz v10, :cond_7

    .line 132
    .line 133
    iget-object v14, v10, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v14

    .line 139
    if-nez v14, :cond_7

    .line 140
    .line 141
    iget v14, v10, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 142
    .line 143
    iget v15, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 144
    .line 145
    if-ne v14, v15, :cond_6

    .line 146
    .line 147
    return v13

    .line 148
    :cond_6
    iget v14, v10, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 149
    .line 150
    iget v15, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 151
    .line 152
    if-eq v14, v15, :cond_7

    .line 153
    .line 154
    const/16 v0, 0x88

    .line 155
    .line 156
    return v0

    .line 157
    :cond_7
    if-eqz v10, :cond_8

    .line 158
    .line 159
    iget-object v14, v10, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v14

    .line 165
    if-eqz v14, :cond_8

    .line 166
    .line 167
    iget v10, v10, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 168
    .line 169
    iget v14, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 170
    .line 171
    if-ne v10, v14, :cond_8

    .line 172
    .line 173
    return v13

    .line 174
    :cond_8
    iget-object v10, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 175
    .line 176
    iget v13, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 177
    .line 178
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-static {v13, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    if-lez v10, :cond_a

    .line 186
    .line 187
    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 188
    .line 189
    invoke-virtual {v13, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v13

    .line 193
    const/16 v14, 0x8b

    .line 194
    .line 195
    if-eqz v13, :cond_9

    .line 196
    .line 197
    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    if-nez v13, :cond_9

    .line 202
    .line 203
    return v14

    .line 204
    :cond_9
    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 205
    .line 206
    invoke-virtual {v13, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUidWithNoInternetPermission(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    if-eqz v13, :cond_a

    .line 211
    .line 212
    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v13

    .line 216
    if-nez v13, :cond_a

    .line 217
    .line 218
    return v14

    .line 219
    :cond_a
    iget-object v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 220
    .line 221
    iget v14, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 222
    .line 223
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-static {v10, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfUidIsBlackListed(II)Z

    .line 227
    .line 228
    .line 229
    move-result v10

    .line 230
    if-eqz v10, :cond_b

    .line 231
    .line 232
    return v12

    .line 233
    :cond_b
    const-string/jumbo v10, "com.knox.vpn.proxyhandler"

    .line 234
    .line 235
    .line 236
    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v10

    .line 240
    if-eqz v10, :cond_c

    .line 241
    .line 242
    return v12

    .line 243
    :cond_c
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    const-string v11, ""

    .line 248
    .line 249
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v10

    .line 253
    if-eqz v10, :cond_d

    .line 254
    .line 255
    const/16 v0, 0x86

    .line 256
    .line 257
    return v0

    .line 258
    :cond_d
    add-int/lit8 v9, v9, 0x1

    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_e
    iget-object v7, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 263
    .line 264
    iget v9, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 265
    .line 266
    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    const/16 v9, 0x64

    .line 271
    .line 272
    if-eqz v7, :cond_17

    .line 273
    .line 274
    iget-object v7, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 275
    .line 276
    iget v11, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 277
    .line 278
    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    iget v11, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 283
    .line 284
    if-ne v7, v11, :cond_16

    .line 285
    .line 286
    iget-object v7, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 287
    .line 288
    iget v11, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 289
    .line 290
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    invoke-static {v11, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    if-eqz v7, :cond_17

    .line 302
    .line 303
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result v10

    .line 307
    const/16 v11, 0x77

    .line 308
    .line 309
    if-nez v10, :cond_10

    .line 310
    .line 311
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 312
    .line 313
    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eq v0, v6, :cond_f

    .line 318
    .line 319
    return v11

    .line 320
    :cond_f
    return v9

    .line 321
    :cond_10
    iget v7, v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I

    .line 322
    .line 323
    if-ne v7, v6, :cond_11

    .line 324
    .line 325
    const/16 v0, 0x73

    .line 326
    .line 327
    return v0

    .line 328
    :cond_11
    iget-object v6, v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mExemptPackageList:Ljava/util/HashSet;

    .line 329
    .line 330
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v7

    .line 334
    if-eqz v7, :cond_12

    .line 335
    .line 336
    return v11

    .line 337
    :cond_12
    array-length v7, v2

    .line 338
    :goto_1
    if-ge v8, v7, :cond_15

    .line 339
    .line 340
    aget-object v10, v2, v8

    .line 341
    .line 342
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 343
    .line 344
    iget v12, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 345
    .line 346
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    invoke-static {v12, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 350
    .line 351
    .line 352
    move-result v11

    .line 353
    const/4 v12, -0x1

    .line 354
    if-eq v11, v12, :cond_14

    .line 355
    .line 356
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object v12

    .line 360
    invoke-virtual {v6, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v12

    .line 364
    if-eqz v12, :cond_14

    .line 365
    .line 366
    iget-object v12, v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mExemptPackageList:Ljava/util/HashSet;

    .line 367
    .line 368
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 369
    .line 370
    .line 371
    move-result-object v13

    .line 372
    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v12

    .line 376
    if-eqz v12, :cond_13

    .line 377
    .line 378
    iget-object v12, v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mExemptPackageList:Ljava/util/HashSet;

    .line 379
    .line 380
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    .line 382
    .line 383
    move-result-object v13

    .line 384
    invoke-virtual {v12, v13}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    :cond_13
    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 388
    .line 389
    invoke-virtual {v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->removeExemptedListToDatabase(I)Z

    .line 390
    .line 391
    .line 392
    move-result v12

    .line 393
    new-instance v13, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .line 397
    .line 398
    const-string/jumbo v14, "user wide vpn was configured "

    .line 399
    .line 400
    .line 401
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    iget v14, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 405
    .line 406
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string/jumbo v14, "removing uid from exempt list "

    .line 410
    .line 411
    .line 412
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    const-string v11, " "

    .line 419
    .line 420
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v11

    .line 430
    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 434
    .line 435
    .line 436
    move-result v15

    .line 437
    const-string v16, "KnoxVpnApiValidation"

    .line 438
    .line 439
    new-instance v11, Ljava/lang/StringBuilder;

    .line 440
    .line 441
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .line 443
    .line 444
    const-string v12, "Package name "

    .line 445
    .line 446
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    const-string v10, " added to vpn for profile "

    .line 453
    .line 454
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string v10, ". Removed from exempt list"

    .line 461
    .line 462
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v17

    .line 469
    iget v10, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 470
    .line 471
    const/4 v13, 0x5

    .line 472
    const/4 v14, 0x1

    .line 473
    const/4 v12, 0x5

    .line 474
    move/from16 v18, v10

    .line 475
    .line 476
    invoke-static/range {v12 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 477
    .line 478
    .line 479
    :cond_14
    add-int/lit8 v8, v8, 0x1

    .line 480
    .line 481
    goto/16 :goto_1

    .line 482
    .line 483
    :cond_15
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 484
    .line 485
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->updateUidsToVpnUidRange(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 486
    .line 487
    .line 488
    goto :goto_3

    .line 489
    :cond_16
    const/16 v0, 0x78

    .line 490
    .line 491
    return v0

    .line 492
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    const-string v2, "Exception at addPackagesToVpnValidation API "

    .line 495
    .line 496
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    invoke-static {v0, v1, v4}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    const/16 v9, 0x65

    .line 503
    .line 504
    :cond_17
    :goto_3
    const-string v0, "addPackagesToVpnValidation : validationResult value is "

    .line 505
    .line 506
    invoke-static {v9, v0, v4}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    return v9

    .line 510
    :cond_18
    :goto_4
    const/16 v0, 0x68

    .line 511
    .line 512
    return v0
.end method

.method public final allowUsbTetheringValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "KnoxVpnApiValidation"

    .line 10
    .line 11
    const-string/jumbo v5, "com.samsung.knox.vpn.tether.auth"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v6, "key-tether-client-certificate-issued-cn"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v7, "key-tether-client-certificate-issuer-cn"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v8, "key-tether-auth-response-page"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v9, "key-tether-auth-login-page"

    .line 24
    .line 25
    .line 26
    const-string/jumbo v10, "key-tether-ca-certificate"

    .line 27
    .line 28
    .line 29
    const-string/jumbo v11, "key-tether-captive-portal-certificate"

    .line 30
    .line 31
    .line 32
    const-string/jumbo v12, "key-tether-user-certificate"

    .line 33
    .line 34
    .line 35
    const-string/jumbo v13, "key-tether-ca-cert-password"

    .line 36
    .line 37
    .line 38
    const-string/jumbo v14, "key-tether-captive-portal-cert-password"

    .line 39
    .line 40
    .line 41
    if-eqz v2, :cond_31

    .line 42
    .line 43
    :try_start_0
    iget-object v15, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 44
    .line 45
    if-nez v15, :cond_0

    .line 46
    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_0
    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 50
    .line 51
    invoke-virtual {v15, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 55
    if-nez v15, :cond_1

    .line 56
    .line 57
    const/16 v0, 0x6c

    .line 58
    .line 59
    return v0

    .line 60
    :cond_1
    move-object/from16 v16, v4

    .line 61
    .line 62
    :try_start_1
    iget v4, v15, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 63
    .line 64
    move-object/from16 v17, v12

    .line 65
    .line 66
    iget v12, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 67
    .line 68
    if-eq v4, v12, :cond_2

    .line 69
    .line 70
    const/16 v0, 0x70

    .line 71
    .line 72
    return v0

    .line 73
    :cond_2
    iget v4, v15, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->routeType:I

    .line 74
    .line 75
    if-nez v4, :cond_3

    .line 76
    .line 77
    const/16 v0, 0x6d

    .line 78
    .line 79
    return v0

    .line 80
    :cond_3
    iget v4, v15, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->chainingEnabled:I

    .line 81
    .line 82
    const/16 v12, 0x385

    .line 83
    .line 84
    if-nez v4, :cond_4

    .line 85
    .line 86
    return v12

    .line 87
    :cond_4
    iget v4, v15, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->vpnConnectionType:I

    .line 88
    .line 89
    move-object/from16 v18, v13

    .line 90
    .line 91
    const/4 v13, 0x1

    .line 92
    if-ne v4, v13, :cond_5

    .line 93
    .line 94
    return v12

    .line 95
    :cond_5
    iget v4, v15, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->uidPidSearchEnabled:I

    .line 96
    .line 97
    if-ne v4, v13, :cond_6

    .line 98
    .line 99
    return v12

    .line 100
    :cond_6
    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 101
    .line 102
    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    if-eqz v4, :cond_9

    .line 109
    .line 110
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-lez v4, :cond_9

    .line 115
    .line 116
    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 117
    .line 118
    iget-object v4, v4, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v19

    .line 132
    if-eqz v19, :cond_9

    .line 133
    .line 134
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v19

    .line 138
    move-object/from16 v15, v19

    .line 139
    .line 140
    check-cast v15, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 141
    .line 142
    iget v12, v15, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mUsbTethering:I

    .line 143
    .line 144
    if-ne v12, v13, :cond_8

    .line 145
    .line 146
    iget-object v0, v15, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_7

    .line 153
    .line 154
    const/16 v0, 0x385

    .line 155
    .line 156
    return v0

    .line 157
    :cond_7
    const/16 v12, 0x64

    .line 158
    .line 159
    return v12

    .line 160
    :catch_0
    move-exception v0

    .line 161
    goto/16 :goto_3

    .line 162
    .line 163
    :cond_8
    const/16 v12, 0x385

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_9
    const/16 v12, 0x64

    .line 167
    .line 168
    if-eqz v3, :cond_30

    .line 169
    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->isEmpty()Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-nez v4, :cond_30

    .line 175
    .line 176
    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 177
    .line 178
    iget v13, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 179
    .line 180
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-static {v13, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isPackageInstalled(ILjava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    const-string v5, "KnoxVpnTetherAuthentication"

    .line 188
    .line 189
    if-nez v4, :cond_a

    .line 190
    .line 191
    :try_start_2
    const-string/jumbo v0, "knox vpn usb tether auth application not installed"

    .line 192
    .line 193
    .line 194
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    const/16 v0, 0x385

    .line 198
    .line 199
    return v0

    .line 200
    :cond_a
    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 201
    .line 202
    iget v1, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 203
    .line 204
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfPlatformSigned(I)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-nez v1, :cond_b

    .line 212
    .line 213
    const-string/jumbo v0, "knox vpn usb tether auth application is not signed with proper key"

    .line 214
    .line 215
    .line 216
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    const/16 v0, 0x385

    .line 220
    .line 221
    return v0

    .line 222
    :cond_b
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_d

    .line 227
    .line 228
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    if-nez v1, :cond_c

    .line 233
    .line 234
    const-string/jumbo v0, "loginpage string value is null"

    .line 235
    .line 236
    .line 237
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    const/16 v0, 0x385

    .line 241
    .line 242
    return v0

    .line 243
    :cond_c
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-eqz v1, :cond_d

    .line 252
    .line 253
    const-string/jumbo v0, "loginpage string value is empty"

    .line 254
    .line 255
    .line 256
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    const/16 v0, 0x385

    .line 260
    .line 261
    return v0

    .line 262
    :cond_d
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_f

    .line 267
    .line 268
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    if-nez v1, :cond_e

    .line 273
    .line 274
    const-string/jumbo v0, "responsepage string value is null"

    .line 275
    .line 276
    .line 277
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    const/16 v0, 0x385

    .line 281
    .line 282
    return v0

    .line 283
    :cond_e
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_f

    .line 292
    .line 293
    const-string/jumbo v0, "responsepage string value is empty"

    .line 294
    .line 295
    .line 296
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    const/16 v0, 0x385

    .line 300
    .line 301
    return v0

    .line 302
    :cond_f
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-eqz v1, :cond_11

    .line 307
    .line 308
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    if-nez v1, :cond_10

    .line 313
    .line 314
    const-string/jumbo v0, "client cert issuer CN string value is null"

    .line 315
    .line 316
    .line 317
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    const/16 v0, 0x385

    .line 321
    .line 322
    return v0

    .line 323
    :cond_10
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-eqz v1, :cond_11

    .line 332
    .line 333
    const-string/jumbo v0, "client cert issuer CN string value is empty"

    .line 334
    .line 335
    .line 336
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    const/16 v0, 0x385

    .line 340
    .line 341
    return v0

    .line 342
    :cond_11
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-eqz v1, :cond_13

    .line 347
    .line 348
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    if-nez v1, :cond_12

    .line 353
    .line 354
    const-string/jumbo v0, "client cert issued CN string value is null"

    .line 355
    .line 356
    .line 357
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    const/16 v0, 0x385

    .line 361
    .line 362
    return v0

    .line 363
    :cond_12
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    if-eqz v1, :cond_13

    .line 372
    .line 373
    const-string/jumbo v0, "client cert issued CN string value is empty"

    .line 374
    .line 375
    .line 376
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    const/16 v0, 0x385

    .line 380
    .line 381
    return v0

    .line 382
    :cond_13
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 383
    .line 384
    .line 385
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 386
    const-string/jumbo v4, "key-tether-captive-portal-alias"

    .line 387
    .line 388
    .line 389
    if-eqz v1, :cond_14

    .line 390
    .line 391
    :try_start_3
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    if-eqz v1, :cond_14

    .line 396
    .line 397
    const-string/jumbo v0, "config contains both captive portal cert and alias"

    .line 398
    .line 399
    .line 400
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    const/16 v0, 0x385

    .line 404
    .line 405
    return v0

    .line 406
    :cond_14
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-eqz v1, :cond_16

    .line 411
    .line 412
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    if-nez v1, :cond_15

    .line 417
    .line 418
    const-string/jumbo v0, "captiveAlias string value is null"

    .line 419
    .line 420
    .line 421
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    const/16 v0, 0x385

    .line 425
    .line 426
    return v0

    .line 427
    :cond_15
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    if-eqz v1, :cond_16

    .line 436
    .line 437
    const-string/jumbo v0, "captiveAlias string value is empty"

    .line 438
    .line 439
    .line 440
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    const/16 v0, 0x385

    .line 444
    .line 445
    return v0

    .line 446
    :cond_16
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    if-eqz v1, :cond_18

    .line 451
    .line 452
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    if-nez v1, :cond_17

    .line 457
    .line 458
    const-string/jumbo v0, "captiveCert value is null"

    .line 459
    .line 460
    .line 461
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .line 463
    .line 464
    const/16 v0, 0x385

    .line 465
    .line 466
    return v0

    .line 467
    :cond_17
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    array-length v1, v1

    .line 472
    if-gtz v1, :cond_18

    .line 473
    .line 474
    const-string/jumbo v0, "captiveCert length is not valid"

    .line 475
    .line 476
    .line 477
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .line 479
    .line 480
    const/16 v0, 0x385

    .line 481
    .line 482
    return v0

    .line 483
    :cond_18
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 484
    .line 485
    .line 486
    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 487
    const-string v4, "_"

    .line 488
    .line 489
    if-eqz v1, :cond_1c

    .line 490
    .line 491
    :try_start_4
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    if-nez v1, :cond_19

    .line 496
    .line 497
    const-string/jumbo v0, "captiveCert credential value is null"

    .line 498
    .line 499
    .line 500
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .line 502
    .line 503
    const/16 v0, 0x385

    .line 504
    .line 505
    return v0

    .line 506
    :cond_19
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    if-eqz v1, :cond_1a

    .line 515
    .line 516
    const-string/jumbo v0, "captiveCert credential value is empty"

    .line 517
    .line 518
    .line 519
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .line 521
    .line 522
    const/16 v0, 0x385

    .line 523
    .line 524
    return v0

    .line 525
    :cond_1a
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 530
    .line 531
    new-instance v7, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    const-string/jumbo v8, "captivecert_pwd"

    .line 543
    .line 544
    .line 545
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v7

    .line 552
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    .line 554
    .line 555
    invoke-static {v7, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    if-nez v1, :cond_1b

    .line 560
    .line 561
    const-string v0, "Saving the captive cert credential inside keystore failed"

    .line 562
    .line 563
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    const/16 v0, 0x385

    .line 567
    .line 568
    return v0

    .line 569
    :cond_1b
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    :cond_1c
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 573
    .line 574
    .line 575
    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 576
    const-string/jumbo v6, "key-tether-ca-alias"

    .line 577
    .line 578
    .line 579
    if-eqz v1, :cond_1d

    .line 580
    .line 581
    :try_start_5
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    if-eqz v1, :cond_1d

    .line 586
    .line 587
    const-string/jumbo v0, "config contains both ca cert and alias"

    .line 588
    .line 589
    .line 590
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .line 592
    .line 593
    const/16 v0, 0x385

    .line 594
    .line 595
    return v0

    .line 596
    :cond_1d
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    if-eqz v1, :cond_1f

    .line 601
    .line 602
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    if-nez v1, :cond_1e

    .line 607
    .line 608
    const-string/jumbo v0, "caAlias string value is null"

    .line 609
    .line 610
    .line 611
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .line 613
    .line 614
    const/16 v0, 0x385

    .line 615
    .line 616
    return v0

    .line 617
    :cond_1e
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 622
    .line 623
    .line 624
    move-result v1

    .line 625
    if-eqz v1, :cond_1f

    .line 626
    .line 627
    const-string/jumbo v0, "caAlias string value is empty"

    .line 628
    .line 629
    .line 630
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .line 632
    .line 633
    const/16 v0, 0x385

    .line 634
    .line 635
    return v0

    .line 636
    :cond_1f
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 637
    .line 638
    .line 639
    move-result v1

    .line 640
    if-eqz v1, :cond_21

    .line 641
    .line 642
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    if-nez v1, :cond_20

    .line 647
    .line 648
    const-string/jumbo v0, "caCert value is null"

    .line 649
    .line 650
    .line 651
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .line 653
    .line 654
    const/16 v0, 0x385

    .line 655
    .line 656
    return v0

    .line 657
    :cond_20
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    array-length v1, v1

    .line 662
    if-gtz v1, :cond_21

    .line 663
    .line 664
    const-string/jumbo v0, "caCert length is not valid"

    .line 665
    .line 666
    .line 667
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    .line 669
    .line 670
    const/16 v0, 0x385

    .line 671
    .line 672
    return v0

    .line 673
    :cond_21
    move-object/from16 v1, v18

    .line 674
    .line 675
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 676
    .line 677
    .line 678
    move-result v6

    .line 679
    if-eqz v6, :cond_25

    .line 680
    .line 681
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 685
    const-string/jumbo v7, "caCert credential value is empty"

    .line 686
    .line 687
    .line 688
    if-nez v6, :cond_22

    .line 689
    .line 690
    :try_start_6
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .line 692
    .line 693
    const/16 v6, 0x385

    .line 694
    .line 695
    return v6

    .line 696
    :cond_22
    const/16 v6, 0x385

    .line 697
    .line 698
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v8

    .line 702
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 703
    .line 704
    .line 705
    move-result v8

    .line 706
    if-eqz v8, :cond_23

    .line 707
    .line 708
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    .line 710
    .line 711
    return v6

    .line 712
    :cond_23
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v6

    .line 716
    iget-object v7, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 717
    .line 718
    new-instance v8, Ljava/lang/StringBuilder;

    .line 719
    .line 720
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    const-string/jumbo v9, "cacert_pwd"

    .line 730
    .line 731
    .line 732
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v8

    .line 739
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 740
    .line 741
    .line 742
    invoke-static {v8, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    .line 743
    .line 744
    .line 745
    move-result v6

    .line 746
    if-nez v6, :cond_24

    .line 747
    .line 748
    const-string v0, "Saving the ca cert credential inside keystore failed"

    .line 749
    .line 750
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    .line 752
    .line 753
    const/16 v0, 0x385

    .line 754
    .line 755
    return v0

    .line 756
    :cond_24
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    :cond_25
    move-object/from16 v1, v17

    .line 760
    .line 761
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 762
    .line 763
    .line 764
    move-result v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 765
    const-string/jumbo v7, "key-tether-user-alias"

    .line 766
    .line 767
    .line 768
    if-eqz v6, :cond_26

    .line 769
    .line 770
    :try_start_7
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 771
    .line 772
    .line 773
    move-result v6

    .line 774
    if-eqz v6, :cond_26

    .line 775
    .line 776
    const-string/jumbo v0, "config contains both server cert and alias"

    .line 777
    .line 778
    .line 779
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    .line 781
    .line 782
    const/16 v0, 0x385

    .line 783
    .line 784
    return v0

    .line 785
    :cond_26
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 786
    .line 787
    .line 788
    move-result v6

    .line 789
    if-eqz v6, :cond_28

    .line 790
    .line 791
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v6

    .line 795
    if-nez v6, :cond_27

    .line 796
    .line 797
    const-string/jumbo v0, "serverAlias string value is null"

    .line 798
    .line 799
    .line 800
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    .line 802
    .line 803
    const/16 v0, 0x385

    .line 804
    .line 805
    return v0

    .line 806
    :cond_27
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v6

    .line 810
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 811
    .line 812
    .line 813
    move-result v6

    .line 814
    if-eqz v6, :cond_28

    .line 815
    .line 816
    const-string/jumbo v0, "serverAlias string value is empty"

    .line 817
    .line 818
    .line 819
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    .line 821
    .line 822
    const/16 v0, 0x385

    .line 823
    .line 824
    return v0

    .line 825
    :cond_28
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 826
    .line 827
    .line 828
    move-result v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 829
    const-string/jumbo v7, "key-tether-user-cert-password"

    .line 830
    .line 831
    .line 832
    if-eqz v6, :cond_2c

    .line 833
    .line 834
    :try_start_8
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 835
    .line 836
    .line 837
    move-result-object v6

    .line 838
    if-nez v6, :cond_29

    .line 839
    .line 840
    const-string/jumbo v0, "serverCert value is null"

    .line 841
    .line 842
    .line 843
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    .line 845
    .line 846
    const/16 v0, 0x385

    .line 847
    .line 848
    return v0

    .line 849
    :cond_29
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 850
    .line 851
    .line 852
    move-result-object v6

    .line 853
    array-length v6, v6

    .line 854
    if-gtz v6, :cond_2a

    .line 855
    .line 856
    const-string/jumbo v0, "serverCert length is not valid"

    .line 857
    .line 858
    .line 859
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    .line 861
    .line 862
    const/16 v0, 0x385

    .line 863
    .line 864
    return v0

    .line 865
    :cond_2a
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    const-string v6, ""

    .line 870
    .line 871
    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v6

    .line 875
    const-string v8, "PKCS12"

    .line 876
    .line 877
    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 878
    .line 879
    .line 880
    move-result-object v8

    .line 881
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .line 882
    .line 883
    invoke-direct {v9, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 884
    .line 885
    .line 886
    if-nez v6, :cond_2b

    .line 887
    .line 888
    const/4 v1, 0x0

    .line 889
    :try_start_9
    invoke-virtual {v8, v9, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 890
    .line 891
    .line 892
    goto :goto_1

    .line 893
    :cond_2b
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    .line 894
    .line 895
    .line 896
    move-result-object v1

    .line 897
    invoke-virtual {v8, v9, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 898
    .line 899
    .line 900
    :goto_1
    :try_start_a
    invoke-virtual {v8}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 905
    .line 906
    .line 907
    move-result v6

    .line 908
    if-eqz v6, :cond_2c

    .line 909
    .line 910
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object v1

    .line 914
    check-cast v1, Ljava/lang/String;

    .line 915
    .line 916
    invoke-virtual {v8, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    goto :goto_2

    .line 920
    :catch_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 921
    .line 922
    .line 923
    const-string/jumbo v0, "serverCert pwd is incorrect"

    .line 924
    .line 925
    .line 926
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .line 928
    .line 929
    const/16 v0, 0x385

    .line 930
    .line 931
    return v0

    .line 932
    :cond_2c
    :goto_2
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 933
    .line 934
    .line 935
    move-result v1

    .line 936
    if-eqz v1, :cond_30

    .line 937
    .line 938
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v1

    .line 942
    if-nez v1, :cond_2d

    .line 943
    .line 944
    const-string/jumbo v0, "serverCert credential value is null"

    .line 945
    .line 946
    .line 947
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    .line 949
    .line 950
    const/16 v0, 0x385

    .line 951
    .line 952
    return v0

    .line 953
    :cond_2d
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v1

    .line 957
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 958
    .line 959
    .line 960
    move-result v1

    .line 961
    if-eqz v1, :cond_2e

    .line 962
    .line 963
    const-string/jumbo v0, "serverCert credential value is empty"

    .line 964
    .line 965
    .line 966
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    .line 968
    .line 969
    const/16 v0, 0x385

    .line 970
    .line 971
    return v0

    .line 972
    :cond_2e
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v1

    .line 976
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 977
    .line 978
    new-instance v6, Ljava/lang/StringBuilder;

    .line 979
    .line 980
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    .line 985
    .line 986
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    .line 988
    .line 989
    const-string/jumbo v2, "servercert_pwd"

    .line 990
    .line 991
    .line 992
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v2

    .line 999
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1000
    .line 1001
    .line 1002
    invoke-static {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v0

    .line 1006
    if-nez v0, :cond_2f

    .line 1007
    .line 1008
    const-string v0, "Saving the server cert password inside keystore failed"

    .line 1009
    .line 1010
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    .line 1012
    .line 1013
    const/16 v0, 0x385

    .line 1014
    .line 1015
    return v0

    .line 1016
    :cond_2f
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 1017
    .line 1018
    .line 1019
    :cond_30
    move v15, v12

    .line 1020
    move-object/from16 v2, v16

    .line 1021
    .line 1022
    goto :goto_4

    .line 1023
    :catch_2
    move-exception v0

    .line 1024
    move-object/from16 v16, v4

    .line 1025
    .line 1026
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1027
    .line 1028
    const-string v2, "Exception at enableUsbTethering API "

    .line 1029
    .line 1030
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1031
    .line 1032
    .line 1033
    move-object/from16 v2, v16

    .line 1034
    .line 1035
    invoke-static {v0, v1, v2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1036
    .line 1037
    .line 1038
    const/16 v15, 0x65

    .line 1039
    .line 1040
    :goto_4
    const-string/jumbo v0, "enableUsbTethering : validationResult value is "

    .line 1041
    .line 1042
    .line 1043
    invoke-static {v15, v0, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 1044
    .line 1045
    .line 1046
    return v15

    .line 1047
    :cond_31
    :goto_5
    const/16 v0, 0x68

    .line 1048
    .line 1049
    return v0
.end method

.method public final createVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string/jumbo v3, "keepon"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v4, "chaining_enabled"

    .line 11
    .line 12
    .line 13
    const-string v5, "KnoxVpnApiValidation"

    .line 14
    .line 15
    const-string/jumbo v6, "createVpnProfileValidation:containerOwner "

    .line 16
    .line 17
    .line 18
    const-string/jumbo v7, "createVpnProfileValidation:vpnClientUserId "

    .line 19
    .line 20
    .line 21
    if-eqz v2, :cond_2e

    .line 22
    .line 23
    :try_start_0
    iget-object v8, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    if-nez v8, :cond_0

    .line 26
    .line 27
    goto/16 :goto_f

    .line 28
    .line 29
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getAdminId()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    new-instance v10, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v7, " adminUserId "

    .line 50
    .line 51
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const/16 v7, 0x72

    .line 65
    .line 66
    if-nez v9, :cond_1

    .line 67
    .line 68
    if-eqz v8, :cond_3

    .line 69
    .line 70
    return v7

    .line 71
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 72
    .line 73
    .line 74
    move-result-object v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    if-eqz v8, :cond_2

    .line 76
    .line 77
    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    .line 86
    .line 87
    .line 88
    move-result v8
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    if-nez v8, :cond_2

    .line 90
    .line 91
    const/16 v0, 0x71

    .line 92
    .line 93
    return v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    move-object/from16 v16, v5

    .line 96
    .line 97
    goto/16 :goto_c

    .line 98
    .line 99
    :catch_1
    move-exception v0

    .line 100
    move-object v2, v5

    .line 101
    goto/16 :goto_d

    .line 102
    .line 103
    :cond_2
    :try_start_3
    sget-object v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 104
    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    new-instance v9, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v6, " adminuid "

    .line 122
    .line 123
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget v6, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 127
    .line 128
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    iget v6, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 139
    .line 140
    if-eq v8, v6, :cond_3

    .line 141
    .line 142
    return v7

    .line 143
    :cond_3
    new-instance v6, Lorg/json/JSONObject;

    .line 144
    .line 145
    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v2, "KNOX_VPN_PARAMETERS"

    .line 149
    .line 150
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    const-string/jumbo v6, "profile_attribute"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    const-string/jumbo v7, "knox"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    const-string/jumbo v7, "profileName"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    const-string/jumbo v8, "vpn_type"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    const-string/jumbo v9, "vpn_route_type"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    const/4 v9, -0x1

    .line 190
    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    const-string/jumbo v11, "uidpid_search_enabled"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    const-string/jumbo v12, "connectionType"

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    const-string/jumbo v13, "proxy-server"

    .line 209
    .line 210
    .line 211
    const/4 v14, 0x0

    .line 212
    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v13

    .line 216
    const-string/jumbo v15, "proxy-port"

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v15, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 220
    .line 221
    .line 222
    move-result v15

    .line 223
    const-string/jumbo v9, "proxy-username"

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v9
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 230
    move-object/from16 v16, v5

    .line 231
    .line 232
    :try_start_4
    const-string/jumbo v5, "proxy-password"

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v5, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    move-object/from16 v17, v5

    .line 240
    .line 241
    const-string/jumbo v5, "pac-url"

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v5, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    const-string/jumbo v14, "ipv6-enable"

    .line 249
    .line 250
    .line 251
    move-object/from16 v18, v9

    .line 252
    .line 253
    const/4 v9, 0x0

    .line 254
    invoke-virtual {v2, v14, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 255
    .line 256
    .line 257
    move-result v14

    .line 258
    move-object/from16 v19, v4

    .line 259
    .line 260
    const-string/jumbo v4, "proxy-auth"

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    move/from16 v20, v4

    .line 268
    .line 269
    const-string v4, "allow_usb_over_vpn_tethering"

    .line 270
    .line 271
    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 272
    .line 273
    .line 274
    move-result v4
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 275
    if-eqz v7, :cond_2d

    .line 276
    .line 277
    if-eqz v8, :cond_2d

    .line 278
    .line 279
    const/4 v8, 0x1

    .line 280
    if-eq v6, v8, :cond_4

    .line 281
    .line 282
    if-eqz v6, :cond_4

    .line 283
    .line 284
    goto/16 :goto_b

    .line 285
    .line 286
    :cond_4
    const/16 v21, 0x2be

    .line 287
    .line 288
    const-string/jumbo v9, "ondemand"

    .line 289
    .line 290
    .line 291
    const/16 v22, 0x385

    .line 292
    .line 293
    if-nez v6, :cond_9

    .line 294
    .line 295
    if-eqz v10, :cond_b

    .line 296
    .line 297
    if-ne v10, v8, :cond_5

    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_5
    :try_start_5
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    if-eqz v6, :cond_6

    .line 305
    .line 306
    return v21

    .line 307
    :cond_6
    const/16 v6, 0x321

    .line 308
    .line 309
    if-nez v13, :cond_a

    .line 310
    .line 311
    const/4 v8, -0x1

    .line 312
    if-eq v15, v8, :cond_7

    .line 313
    .line 314
    goto :goto_0

    .line 315
    :cond_7
    if-eqz v5, :cond_8

    .line 316
    .line 317
    return v6

    .line 318
    :cond_8
    const/4 v6, 0x1

    .line 319
    if-ne v4, v6, :cond_9

    .line 320
    .line 321
    return v22

    .line 322
    :cond_9
    const/4 v6, -0x1

    .line 323
    goto :goto_3

    .line 324
    :cond_a
    :goto_0
    return v6

    .line 325
    :catch_2
    move-exception v0

    .line 326
    goto/16 :goto_c

    .line 327
    .line 328
    :catch_3
    move-exception v0

    .line 329
    :goto_1
    move-object/from16 v2, v16

    .line 330
    .line 331
    goto/16 :goto_d

    .line 332
    .line 333
    :cond_b
    :goto_2
    const/16 v0, 0x1f9

    .line 334
    .line 335
    return v0

    .line 336
    :goto_3
    if-eq v10, v6, :cond_c

    .line 337
    .line 338
    if-eqz v10, :cond_c

    .line 339
    .line 340
    const/4 v6, 0x1

    .line 341
    if-eq v10, v6, :cond_d

    .line 342
    .line 343
    const/16 v0, 0x1f5

    .line 344
    .line 345
    return v0

    .line 346
    :cond_c
    const/4 v6, 0x1

    .line 347
    :cond_d
    if-eq v11, v6, :cond_e

    .line 348
    .line 349
    if-eqz v11, :cond_e

    .line 350
    .line 351
    const/16 v0, 0x259

    .line 352
    .line 353
    return v0

    .line 354
    :cond_e
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-nez v3, :cond_f

    .line 359
    .line 360
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    if-nez v3, :cond_f

    .line 365
    .line 366
    const/16 v0, 0x2bd

    .line 367
    .line 368
    return v0

    .line 369
    :cond_f
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    if-eqz v3, :cond_10

    .line 374
    .line 375
    if-nez v10, :cond_10

    .line 376
    .line 377
    return v21

    .line 378
    :cond_10
    if-eqz v14, :cond_11

    .line 379
    .line 380
    const/4 v3, 0x1

    .line 381
    if-eq v14, v3, :cond_11

    .line 382
    .line 383
    const/16 v0, 0x325

    .line 384
    .line 385
    return v0

    .line 386
    :cond_11
    const-string v3, "\\s"

    .line 387
    .line 388
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    if-eqz v3, :cond_12

    .line 401
    .line 402
    const/16 v0, 0x6a

    .line 403
    .line 404
    return v0

    .line 405
    :cond_12
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    const/4 v6, 0x1

    .line 410
    if-lt v3, v6, :cond_2c

    .line 411
    .line 412
    const/16 v6, 0x80

    .line 413
    .line 414
    if-le v3, v6, :cond_13

    .line 415
    .line 416
    goto/16 :goto_a

    .line 417
    .line 418
    :cond_13
    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 419
    .line 420
    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    if-eqz v3, :cond_15

    .line 425
    .line 426
    iget v0, v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 427
    .line 428
    iget v1, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 429
    .line 430
    if-ne v0, v1, :cond_14

    .line 431
    .line 432
    const/16 v0, 0x6f

    .line 433
    .line 434
    return v0

    .line 435
    :cond_14
    const/16 v0, 0x70

    .line 436
    .line 437
    return v0

    .line 438
    :cond_15
    iget-object v3, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 439
    .line 440
    iget v1, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 441
    .line 442
    move-object/from16 v6, v19

    .line 443
    .line 444
    const/4 v8, -0x1

    .line 445
    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 446
    .line 447
    .line 448
    move-result v2

    .line 449
    if-ne v2, v8, :cond_18

    .line 450
    .line 451
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 452
    .line 453
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    invoke-static {v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    const/4 v3, 0x1

    .line 461
    invoke-virtual {v2, v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    if-eq v1, v3, :cond_17

    .line 466
    .line 467
    if-nez v1, :cond_16

    .line 468
    .line 469
    goto :goto_4

    .line 470
    :cond_16
    const/4 v2, -0x1

    .line 471
    goto :goto_5

    .line 472
    :cond_17
    :goto_4
    const/16 v0, 0x1f7

    .line 473
    .line 474
    return v0

    .line 475
    :cond_18
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 476
    .line 477
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    invoke-static {v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    const/4 v3, 0x0

    .line 485
    invoke-virtual {v2, v1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I

    .line 486
    .line 487
    .line 488
    move-result v1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 489
    const/4 v2, -0x1

    .line 490
    if-ne v1, v2, :cond_19

    .line 491
    .line 492
    const/16 v0, 0x1f8

    .line 493
    .line 494
    return v0

    .line 495
    :cond_19
    :goto_5
    const/16 v1, 0x323

    .line 496
    .line 497
    const/16 v3, 0x322

    .line 498
    .line 499
    const/16 v6, 0x324

    .line 500
    .line 501
    const-string v8, "_proxy-password"

    .line 502
    .line 503
    const-string v14, "_proxy-username"

    .line 504
    .line 505
    if-eqz v5, :cond_1f

    .line 506
    .line 507
    if-nez v13, :cond_20

    .line 508
    .line 509
    if-ne v15, v2, :cond_20

    .line 510
    .line 511
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    if-eqz v2, :cond_1a

    .line 516
    .line 517
    goto :goto_6

    .line 518
    :cond_1a
    if-nez v10, :cond_1b

    .line 519
    .line 520
    return v6

    .line 521
    :cond_1b
    if-eqz v18, :cond_1f

    .line 522
    .line 523
    if-eqz v17, :cond_1f

    .line 524
    .line 525
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    .line 526
    .line 527
    .line 528
    move-result v2

    .line 529
    if-nez v2, :cond_1e

    .line 530
    .line 531
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    .line 532
    .line 533
    .line 534
    move-result v2

    .line 535
    if-nez v2, :cond_1e

    .line 536
    .line 537
    if-nez v20, :cond_1c

    .line 538
    .line 539
    return v6

    .line 540
    :cond_1c
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 541
    .line 542
    invoke-virtual {v7, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v15

    .line 546
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    move-object/from16 v2, v18

    .line 550
    .line 551
    invoke-static {v15, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    .line 552
    .line 553
    .line 554
    move-result v15

    .line 555
    if-nez v15, :cond_1d

    .line 556
    .line 557
    return v3

    .line 558
    :cond_1d
    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 559
    .line 560
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    move-object/from16 v15, v17

    .line 568
    .line 569
    invoke-static {v3, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    if-nez v3, :cond_21

    .line 574
    .line 575
    return v1

    .line 576
    :cond_1e
    return v6

    .line 577
    :cond_1f
    move-object/from16 v15, v17

    .line 578
    .line 579
    move-object/from16 v2, v18

    .line 580
    .line 581
    goto :goto_7

    .line 582
    :cond_20
    :goto_6
    return v6

    .line 583
    :cond_21
    :goto_7
    if-eqz v13, :cond_25

    .line 584
    .line 585
    if-nez v5, :cond_26

    .line 586
    .line 587
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 588
    .line 589
    .line 590
    move-result v3

    .line 591
    if-eqz v3, :cond_22

    .line 592
    .line 593
    goto :goto_8

    .line 594
    :cond_22
    if-nez v10, :cond_23

    .line 595
    .line 596
    return v6

    .line 597
    :cond_23
    if-eqz v2, :cond_25

    .line 598
    .line 599
    if-eqz v15, :cond_25

    .line 600
    .line 601
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 602
    .line 603
    .line 604
    move-result v3

    .line 605
    if-nez v3, :cond_26

    .line 606
    .line 607
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 608
    .line 609
    .line 610
    move-result v3

    .line 611
    if-nez v3, :cond_26

    .line 612
    .line 613
    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 614
    .line 615
    invoke-virtual {v7, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v5

    .line 619
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 620
    .line 621
    .line 622
    invoke-static {v5, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    .line 623
    .line 624
    .line 625
    move-result v2

    .line 626
    if-nez v2, :cond_24

    .line 627
    .line 628
    const/16 v2, 0x322

    .line 629
    .line 630
    return v2

    .line 631
    :cond_24
    iget-object v2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 632
    .line 633
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v3

    .line 637
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 638
    .line 639
    .line 640
    invoke-static {v3, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->saveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Z

    .line 641
    .line 642
    .line 643
    move-result v2

    .line 644
    if-nez v2, :cond_25

    .line 645
    .line 646
    return v1

    .line 647
    :cond_25
    const/4 v1, 0x1

    .line 648
    goto :goto_9

    .line 649
    :cond_26
    :goto_8
    return v6

    .line 650
    :goto_9
    if-ne v4, v1, :cond_2b

    .line 651
    .line 652
    if-nez v10, :cond_27

    .line 653
    .line 654
    return v22

    .line 655
    :cond_27
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    if-eqz v2, :cond_28

    .line 660
    .line 661
    return v22

    .line 662
    :cond_28
    if-ne v11, v1, :cond_29

    .line 663
    .line 664
    return v22

    .line 665
    :cond_29
    iget-object v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 666
    .line 667
    iget-object v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 668
    .line 669
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    if-eqz v1, :cond_2b

    .line 674
    .line 675
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 676
    .line 677
    .line 678
    move-result v1

    .line 679
    if-lez v1, :cond_2b

    .line 680
    .line 681
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 682
    .line 683
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 684
    .line 685
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    if-eqz v1, :cond_2b

    .line 698
    .line 699
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 704
    .line 705
    iget v1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mUsbTethering:I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 706
    .line 707
    const/4 v2, 0x1

    .line 708
    if-ne v1, v2, :cond_2a

    .line 709
    .line 710
    return v22

    .line 711
    :cond_2b
    const/16 v0, 0x64

    .line 712
    .line 713
    move-object/from16 v2, v16

    .line 714
    .line 715
    goto :goto_e

    .line 716
    :cond_2c
    :goto_a
    const/16 v0, 0x6b

    .line 717
    .line 718
    return v0

    .line 719
    :cond_2d
    :goto_b
    const/16 v0, 0x69

    .line 720
    .line 721
    return v0

    .line 722
    :catch_4
    move-exception v0

    .line 723
    move-object/from16 v16, v5

    .line 724
    .line 725
    goto/16 :goto_1

    .line 726
    .line 727
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 728
    .line 729
    const-string v2, "Exception at createVpnProfileValidation API "

    .line 730
    .line 731
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    move-object/from16 v2, v16

    .line 735
    .line 736
    invoke-static {v0, v1, v2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    const/16 v0, 0x65

    .line 740
    .line 741
    goto :goto_e

    .line 742
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 743
    .line 744
    const-string v3, "JSONException at createVpnProfileValidation API "

    .line 745
    .line 746
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .line 762
    .line 763
    const/16 v0, 0x67

    .line 764
    .line 765
    :goto_e
    const-string/jumbo v1, "createVpnProfileValidation : validationResult value is "

    .line 766
    .line 767
    .line 768
    invoke-static {v0, v1, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    return v0

    .line 772
    :cond_2e
    :goto_f
    const/16 v0, 0x68

    .line 773
    .line 774
    return v0
.end method

.method public final disallowUsbTetheringValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string v0, "KnoxVpnApiValidation"

    .line 2
    .line 3
    if-eqz p2, :cond_a

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const/16 p0, 0x6c

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    iget v2, v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 23
    .line 24
    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 25
    .line 26
    if-eq v2, p1, :cond_2

    .line 27
    .line 28
    const/16 p0, 0x70

    .line 29
    .line 30
    return p0

    .line 31
    :cond_2
    iget p1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->routeType:I

    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    const/16 p0, 0x6d

    .line 36
    .line 37
    return p0

    .line 38
    :cond_3
    iget p1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->chainingEnabled:I

    .line 39
    .line 40
    const/16 v2, 0x385

    .line 41
    .line 42
    if-nez p1, :cond_4

    .line 43
    .line 44
    return v2

    .line 45
    :cond_4
    iget p1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->vpnConnectionType:I

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    if-ne p1, v3, :cond_5

    .line 49
    .line 50
    return v2

    .line 51
    :cond_5
    iget p1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->uidPidSearchEnabled:I

    .line 52
    .line 53
    if-ne p1, v3, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const/16 v1, 0x64

    .line 65
    .line 66
    if-eqz p1, :cond_9

    .line 67
    .line 68
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-lez p1, :cond_9

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->vpnProfileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_9

    .line 91
    .line 92
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 97
    .line 98
    iget v4, p1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mUsbTethering:I

    .line 99
    .line 100
    if-ne v4, v3, :cond_7

    .line 101
    .line 102
    iget-object p0, p1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    if-nez p0, :cond_8

    .line 109
    .line 110
    return v2

    .line 111
    :cond_8
    return v1

    .line 112
    :catch_0
    move-exception p0

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string p2, "Exception at enableUsbTethering API "

    .line 116
    .line 117
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const/16 v1, 0x65

    .line 124
    .line 125
    :cond_9
    const-string/jumbo p0, "enableUsbTethering : validationResult value is "

    .line 126
    .line 127
    .line 128
    invoke-static {v1, p0, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return v1

    .line 132
    :cond_a
    :goto_0
    const/16 p0, 0x68

    .line 133
    .line 134
    return p0
.end method

.method public final getErrorStringValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "KnoxVpnApiValidation"

    .line 3
    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    :try_start_0
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    const-string/jumbo p0, "getErrorStringValidation: profileInfo value is null"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 29
    .line 30
    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 31
    .line 32
    if-eq p0, p1, :cond_3

    .line 33
    .line 34
    const-string/jumbo p0, "getErrorStringValidation: Not the same admin"

    .line 35
    .line 36
    .line 37
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_2
    :goto_0
    const-string/jumbo p0, "getErrorStringValidation: profileName value is null"

    .line 42
    .line 43
    .line 44
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v0, "Exception at getErrorStringValidation API "

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p1, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-object p2
.end method

.method public final getVpnModeOfOperationValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "KnoxVpnApiValidation"

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    const/16 p0, 0x6c

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 22
    .line 23
    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    if-eq p0, p1, :cond_2

    .line 26
    .line 27
    const/16 p0, 0x70

    .line 28
    .line 29
    return p0

    .line 30
    :cond_2
    const/16 p0, 0x64

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p2, "Exception at getVpnModeOfOperationValidation API "

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/16 p0, 0x65

    .line 45
    .line 46
    :goto_0
    const-string/jumbo p1, "getVpnModeOfOperationValidation : validationResult value is "

    .line 47
    .line 48
    .line 49
    invoke-static {p0, p1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return p0

    .line 53
    :cond_3
    :goto_1
    const/16 p0, 0x68

    .line 54
    .line 55
    return p0
.end method

.method public final getVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "KnoxVpnApiValidation"

    .line 3
    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    :try_start_0
    iget-object v2, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    const-string/jumbo p0, "getVpnProfileValidation: profileInfo value is null"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 29
    .line 30
    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 31
    .line 32
    if-eq p0, p1, :cond_3

    .line 33
    .line 34
    const-string/jumbo p0, "getVpnProfileValidation: Not the same admin"

    .line 35
    .line 36
    .line 37
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_2
    :goto_0
    const-string/jumbo p0, "getVpnProfileValidation: profileName value is null"

    .line 42
    .line 43
    .line 44
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v0, "Exception at getVpnProfileValidation API "

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p1, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-object p2
.end method

.method public final isUsbTetheringOverVpnEnabledValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "KnoxVpnApiValidation"

    .line 2
    .line 3
    if-eqz p2, :cond_7

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    const/16 p0, 0x6c

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    iget p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 22
    .line 23
    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 24
    .line 25
    if-eq p2, p1, :cond_2

    .line 26
    .line 27
    const/16 p0, 0x70

    .line 28
    .line 29
    return p0

    .line 30
    :cond_2
    iget p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->routeType:I

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    const/16 p0, 0x6d

    .line 35
    .line 36
    return p0

    .line 37
    :cond_3
    iget p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->chainingEnabled:I

    .line 38
    .line 39
    const/16 p2, 0x385

    .line 40
    .line 41
    if-nez p1, :cond_4

    .line 42
    .line 43
    return p2

    .line 44
    :cond_4
    iget p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->vpnConnectionType:I

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    if-ne p1, v1, :cond_5

    .line 48
    .line 49
    return p2

    .line 50
    :cond_5
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->uidPidSearchEnabled:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    if-ne p0, v1, :cond_6

    .line 53
    .line 54
    return p2

    .line 55
    :cond_6
    const/16 p0, 0x64

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string p2, "Exception at isUsbTetheringOverVpnEnabledValidation API "

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/16 p0, 0x65

    .line 70
    .line 71
    :goto_0
    const-string/jumbo p1, "isUsbTetheringOverVpnEnabledValidation : validationResult value is "

    .line 72
    .line 73
    .line 74
    invoke-static {p0, p1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return p0

    .line 78
    :cond_7
    :goto_1
    const/16 p0, 0x68

    .line 79
    .line 80
    return p0
.end method

.method public final isUserTypeAppSeparation(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mUserMgr:Landroid/os/UserManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string/jumbo v1, "user"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/os/UserManager;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mUserMgr:Landroid/os/UserManager;

    .line 17
    .line 18
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mUserMgr:Landroid/os/UserManager;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    return p0

    .line 45
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final removeAllPackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "KnoxVpnApiValidation"

    .line 2
    .line 3
    if-eqz p2, :cond_5

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    const/16 p0, 0x6c

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    iget p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 22
    .line 23
    iget v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 24
    .line 25
    if-eq p2, v1, :cond_2

    .line 26
    .line 27
    const/16 p0, 0x70

    .line 28
    .line 29
    return p0

    .line 30
    :cond_2
    iget p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 31
    .line 32
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    const-string p0, "EMM present in work profile trying to configure vpn for user 0"

    .line 45
    .line 46
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const/16 p0, 0x72

    .line 50
    .line 51
    return p0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->routeType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    if-nez p0, :cond_4

    .line 57
    .line 58
    const/16 p0, 0x6d

    .line 59
    .line 60
    return p0

    .line 61
    :cond_4
    const/16 p0, 0x64

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string p2, "Exception at removeAllPackagesFromVpnValidation API "

    .line 67
    .line 68
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/16 p0, 0x65

    .line 75
    .line 76
    :goto_1
    const-string/jumbo p1, "removeAllPackagesFromVpnValidation : validationResult value is "

    .line 77
    .line 78
    .line 79
    invoke-static {p0, p1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return p0

    .line 83
    :cond_5
    :goto_2
    const/16 p0, 0x68

    .line 84
    .line 85
    return p0
.end method

.method public final removeContainerPackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .line 1
    const-string v0, "KnoxVpnApiValidation"

    .line 2
    .line 3
    if-eqz p4, :cond_12

    .line 4
    .line 5
    if-eqz p3, :cond_12

    .line 6
    .line 7
    :try_start_0
    array-length v1, p3

    .line 8
    const/4 v2, 0x1

    .line 9
    if-lt v1, v2, :cond_12

    .line 10
    .line 11
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 18
    .line 19
    invoke-virtual {v1, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const/16 p0, 0x6c

    .line 26
    .line 27
    return p0

    .line 28
    :cond_1
    iget v3, v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 29
    .line 30
    iget v4, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 31
    .line 32
    if-eq v3, v4, :cond_2

    .line 33
    .line 34
    const/16 p0, 0x70

    .line 35
    .line 36
    return p0

    .line 37
    :cond_2
    iget v3, v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 38
    .line 39
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/16 v5, 0x72

    .line 48
    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    if-nez v4, :cond_3

    .line 52
    .line 53
    const-string p0, "EMM present in work profile trying to configure vpn for user 0"

    .line 54
    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return v5

    .line 59
    :catch_0
    move-exception p0

    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_3
    iget v3, v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->routeType:I

    .line 63
    .line 64
    if-nez v3, :cond_4

    .line 65
    .line 66
    const/16 p0, 0x6d

    .line 67
    .line 68
    return p0

    .line 69
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->isUserTypeAppSeparation(I)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_7

    .line 74
    .line 75
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const/16 v4, 0x71

    .line 80
    .line 81
    if-eqz v3, :cond_5

    .line 82
    .line 83
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3, p2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_5

    .line 92
    .line 93
    return v4

    .line 94
    :cond_5
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 95
    .line 96
    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    iget v6, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 105
    .line 106
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eq v3, v6, :cond_6

    .line 111
    .line 112
    return v5

    .line 113
    :cond_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    if-eqz v3, :cond_7

    .line 118
    .line 119
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_7

    .line 132
    .line 133
    iget v3, v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->personaId:I

    .line 134
    .line 135
    if-eq v3, p2, :cond_7

    .line 136
    .line 137
    return v4

    .line 138
    :cond_7
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 139
    .line 140
    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    const/4 v4, 0x0

    .line 145
    if-eqz v3, :cond_b

    .line 146
    .line 147
    array-length v3, p3

    .line 148
    move v5, v4

    .line 149
    :goto_0
    if-ge v5, v3, :cond_b

    .line 150
    .line 151
    aget-object v6, p3, v5

    .line 152
    .line 153
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 154
    .line 155
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-static {p2, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 163
    .line 164
    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    if-eqz v7, :cond_8

    .line 169
    .line 170
    if-eqz v8, :cond_8

    .line 171
    .line 172
    invoke-virtual {v8, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-nez v7, :cond_8

    .line 177
    .line 178
    const/16 p0, 0x81

    .line 179
    .line 180
    return p0

    .line 181
    :cond_8
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 182
    .line 183
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-static {p2, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-lez v6, :cond_a

    .line 191
    .line 192
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 193
    .line 194
    invoke-virtual {v7, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    const/16 v8, 0x8b

    .line 199
    .line 200
    if-eqz v7, :cond_9

    .line 201
    .line 202
    invoke-virtual {v7, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    if-nez v7, :cond_9

    .line 207
    .line 208
    return v8

    .line 209
    :cond_9
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 210
    .line 211
    invoke-virtual {v7, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUidWithNoInternetPermission(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    if-eqz v6, :cond_a

    .line 216
    .line 217
    invoke-virtual {v6, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-nez v6, :cond_a

    .line 222
    .line 223
    return v8

    .line 224
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_b
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 228
    .line 229
    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    const/16 v5, 0x64

    .line 234
    .line 235
    if-eqz v3, :cond_11

    .line 236
    .line 237
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 238
    .line 239
    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 244
    .line 245
    if-ne v3, p1, :cond_10

    .line 246
    .line 247
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 248
    .line 249
    const-string v3, "ADD_ALL_PACKAGES"

    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    invoke-static {p2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {p1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    if-eqz p1, :cond_11

    .line 263
    .line 264
    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    if-nez v3, :cond_d

    .line 269
    .line 270
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 271
    .line 272
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    move-result p0

    .line 276
    if-eq p0, v2, :cond_c

    .line 277
    .line 278
    const/16 p0, 0x79

    .line 279
    .line 280
    return p0

    .line 281
    :cond_c
    return v5

    .line 282
    :cond_d
    iget-object p1, v1, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mExemptPackageList:Ljava/util/HashSet;

    .line 283
    .line 284
    array-length v1, p3

    .line 285
    :goto_1
    if-ge v4, v1, :cond_f

    .line 286
    .line 287
    aget-object v2, p3, v4

    .line 288
    .line 289
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 290
    .line 291
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    invoke-static {p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 295
    .line 296
    .line 297
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    const/4 v6, -0x1

    .line 299
    const-string v7, "adding uid to exempt list "

    .line 300
    .line 301
    const-string/jumbo v8, "user wide vpn was configured "

    .line 302
    .line 303
    .line 304
    if-eq v3, v6, :cond_e

    .line 305
    .line 306
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    invoke-virtual {p1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 314
    .line 315
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    invoke-static {p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 323
    .line 324
    invoke-virtual {v6, v3, p4, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addExemptedListToDatabase(ILjava/lang/String;Ljava/lang/String;)Z

    .line 325
    .line 326
    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    goto :goto_2

    .line 352
    :cond_e
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 353
    .line 354
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    invoke-static {p2, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 362
    .line 363
    invoke-virtual {v6, v3, p4, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addExemptedListToDatabase(ILjava/lang/String;Ljava/lang/String;)Z

    .line 364
    .line 365
    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .line 389
    .line 390
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 391
    .line 392
    goto :goto_1

    .line 393
    :cond_f
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 394
    .line 395
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->updateUidsToVpnUidRange(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 396
    .line 397
    .line 398
    goto :goto_4

    .line 399
    :cond_10
    const/16 p0, 0x7a

    .line 400
    .line 401
    return p0

    .line 402
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    const-string p2, "Exception at removeContainerPackagesFromVpnValidation API "

    .line 405
    .line 406
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    const/16 v5, 0x65

    .line 413
    .line 414
    :cond_11
    :goto_4
    const-string/jumbo p0, "removeContainerPackagesFromVpnValidation : validationResult value is "

    .line 415
    .line 416
    .line 417
    invoke-static {v5, p0, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    return v5

    .line 421
    :cond_12
    :goto_5
    const/16 p0, 0x68

    .line 422
    .line 423
    return p0
.end method

.method public final removePackagesFromVpnValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "KnoxVpnApiValidation"

    .line 10
    .line 11
    if-eqz v3, :cond_10

    .line 12
    .line 13
    if-eqz v2, :cond_10

    .line 14
    .line 15
    :try_start_0
    array-length v5, v2

    .line 16
    const/4 v6, 0x1

    .line 17
    if-lt v5, v6, :cond_10

    .line 18
    .line 19
    iget-object v5, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 20
    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    goto/16 :goto_6

    .line 24
    .line 25
    :cond_0
    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 26
    .line 27
    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-nez v5, :cond_1

    .line 32
    .line 33
    const/16 v0, 0x6c

    .line 34
    .line 35
    return v0

    .line 36
    :cond_1
    iget v7, v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 37
    .line 38
    iget v8, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 39
    .line 40
    if-eq v7, v8, :cond_2

    .line 41
    .line 42
    const/16 v0, 0x70

    .line 43
    .line 44
    return v0

    .line 45
    :cond_2
    iget v7, v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 46
    .line 47
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->getPersonaId()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-eqz v7, :cond_3

    .line 56
    .line 57
    if-nez v8, :cond_3

    .line 58
    .line 59
    const-string v0, "EMM present in work profile trying to configure vpn for user 0"

    .line 60
    .line 61
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const/16 v0, 0x72

    .line 65
    .line 66
    return v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    goto/16 :goto_4

    .line 69
    .line 70
    :cond_3
    iget v7, v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->routeType:I

    .line 71
    .line 72
    if-nez v7, :cond_4

    .line 73
    .line 74
    const/16 v0, 0x6d

    .line 75
    .line 76
    return v0

    .line 77
    :cond_4
    iget-object v7, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 78
    .line 79
    iget v8, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 80
    .line 81
    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    const/4 v8, 0x0

    .line 86
    if-eqz v7, :cond_8

    .line 87
    .line 88
    array-length v7, v2

    .line 89
    move v9, v8

    .line 90
    :goto_0
    if-ge v9, v7, :cond_8

    .line 91
    .line 92
    aget-object v10, v2, v9

    .line 93
    .line 94
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 95
    .line 96
    iget v12, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 97
    .line 98
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-static {v12, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 106
    .line 107
    invoke-virtual {v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    if-eqz v11, :cond_5

    .line 112
    .line 113
    if-eqz v12, :cond_5

    .line 114
    .line 115
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    if-nez v11, :cond_5

    .line 120
    .line 121
    const/16 v0, 0x81

    .line 122
    .line 123
    return v0

    .line 124
    :cond_5
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 125
    .line 126
    iget v12, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 127
    .line 128
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-static {v12, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-lez v10, :cond_7

    .line 136
    .line 137
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 138
    .line 139
    invoke-virtual {v11, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUid(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    const/16 v12, 0x8b

    .line 144
    .line 145
    if-eqz v11, :cond_6

    .line 146
    .line 147
    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    if-nez v11, :cond_6

    .line 152
    .line 153
    return v12

    .line 154
    :cond_6
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 155
    .line 156
    invoke-virtual {v11, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningTheUidWithNoInternetPermission(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    if-eqz v10, :cond_7

    .line 161
    .line 162
    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    if-nez v10, :cond_7

    .line 167
    .line 168
    return v12

    .line 169
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_8
    iget-object v7, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 173
    .line 174
    iget v9, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 175
    .line 176
    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    const/16 v9, 0x64

    .line 181
    .line 182
    if-eqz v7, :cond_f

    .line 183
    .line 184
    iget-object v7, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 185
    .line 186
    iget v10, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 187
    .line 188
    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    iget v10, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 193
    .line 194
    if-ne v7, v10, :cond_e

    .line 195
    .line 196
    iget-object v7, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 197
    .line 198
    iget v10, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 199
    .line 200
    const-string v11, "ADD_ALL_PACKAGES"

    .line 201
    .line 202
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-static {v10, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    invoke-virtual {v7, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    if-eqz v7, :cond_f

    .line 214
    .line 215
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v10

    .line 219
    if-nez v10, :cond_a

    .line 220
    .line 221
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 222
    .line 223
    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eq v0, v6, :cond_9

    .line 228
    .line 229
    const/16 v0, 0x79

    .line 230
    .line 231
    return v0

    .line 232
    :cond_9
    return v9

    .line 233
    :cond_a
    iget-object v5, v5, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mExemptPackageList:Ljava/util/HashSet;

    .line 234
    .line 235
    array-length v6, v2

    .line 236
    :goto_1
    if-ge v8, v6, :cond_d

    .line 237
    .line 238
    aget-object v7, v2, v8

    .line 239
    .line 240
    iget-object v10, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 241
    .line 242
    iget v11, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 243
    .line 244
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    invoke-static {v11, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result v10

    .line 251
    iget v11, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 252
    .line 253
    if-nez v11, :cond_b

    .line 254
    .line 255
    const-string/jumbo v11, "com.android.networkstack"

    .line 256
    .line 257
    .line 258
    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 259
    .line 260
    .line 261
    move-result v11

    .line 262
    if-eqz v11, :cond_b

    .line 263
    .line 264
    const-string/jumbo v10, "network stack uid is exempted by the Admin"

    .line 265
    .line 266
    .line 267
    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .line 269
    .line 270
    const/16 v10, 0x431

    .line 271
    .line 272
    :cond_b
    const/4 v11, -0x1

    .line 273
    const-string v12, ". Added to exempt list"

    .line 274
    .line 275
    const-string v13, " removed from vpn for profile "

    .line 276
    .line 277
    const-string v14, "Package name "

    .line 278
    .line 279
    const-string v15, " "

    .line 280
    .line 281
    const-string v9, "adding uid to exempt list "

    .line 282
    .line 283
    const-string/jumbo v2, "user wide vpn was configured "

    .line 284
    .line 285
    .line 286
    if-eq v10, v11, :cond_c

    .line 287
    .line 288
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v11

    .line 292
    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 296
    .line 297
    move-object/from16 v16, v5

    .line 298
    .line 299
    iget v5, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 300
    .line 301
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    invoke-static {v5, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 309
    .line 310
    invoke-virtual {v11, v10, v3, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addExemptedListToDatabase(ILjava/lang/String;Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    new-instance v11, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    iget v2, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 323
    .line 324
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 347
    .line 348
    .line 349
    move-result v20

    .line 350
    const-string v21, "KnoxVpnApiValidation"

    .line 351
    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v22

    .line 376
    iget v2, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 377
    .line 378
    const/16 v18, 0x5

    .line 379
    .line 380
    const/16 v19, 0x1

    .line 381
    .line 382
    const/16 v17, 0x5

    .line 383
    .line 384
    move/from16 v23, v2

    .line 385
    .line 386
    invoke-static/range {v17 .. v23}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 387
    .line 388
    .line 389
    goto :goto_2

    .line 390
    :cond_c
    move-object/from16 v16, v5

    .line 391
    .line 392
    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 393
    .line 394
    iget v11, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 395
    .line 396
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    invoke-static {v11, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 404
    .line 405
    invoke-virtual {v11, v10, v3, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->addExemptedListToDatabase(ILjava/lang/String;Ljava/lang/String;)Z

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    new-instance v11, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    iget v2, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 418
    .line 419
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 442
    .line 443
    .line 444
    move-result v20

    .line 445
    const-string v21, "KnoxVpnApiValidation"

    .line 446
    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v22

    .line 471
    iget v2, v1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->personaId:I

    .line 472
    .line 473
    const/16 v18, 0x5

    .line 474
    .line 475
    const/16 v19, 0x1

    .line 476
    .line 477
    const/16 v17, 0x5

    .line 478
    .line 479
    move/from16 v23, v2

    .line 480
    .line 481
    invoke-static/range {v17 .. v23}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 482
    .line 483
    .line 484
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 485
    .line 486
    move-object/from16 v2, p2

    .line 487
    .line 488
    move-object/from16 v5, v16

    .line 489
    .line 490
    const/16 v9, 0x64

    .line 491
    .line 492
    goto/16 :goto_1

    .line 493
    .line 494
    :cond_d
    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 495
    .line 496
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->updateUidsToVpnUidRange(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 497
    .line 498
    .line 499
    goto :goto_3

    .line 500
    :cond_e
    const/16 v0, 0x7a

    .line 501
    .line 502
    return v0

    .line 503
    :cond_f
    :goto_3
    const/16 v9, 0x64

    .line 504
    .line 505
    goto :goto_5

    .line 506
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 507
    .line 508
    const-string v2, "Exception at removePackagesFromVpnValidation API "

    .line 509
    .line 510
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    invoke-static {v0, v1, v4}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    const/16 v9, 0x65

    .line 517
    .line 518
    :goto_5
    const-string/jumbo v0, "removePackagesFromVpnValidation : validationResult value is "

    .line 519
    .line 520
    .line 521
    invoke-static {v9, v0, v4}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    return v9

    .line 525
    :cond_10
    :goto_6
    const/16 v0, 0x68

    .line 526
    .line 527
    return v0
.end method

.method public final removeVpnProfileValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string v0, "KnoxVpnApiValidation"

    .line 2
    .line 3
    if-eqz p2, :cond_4

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    const/16 p0, 0x6c

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    iget p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 22
    .line 23
    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I

    .line 24
    .line 25
    if-eq p2, p1, :cond_2

    .line 26
    .line 27
    const/16 p0, 0x70

    .line 28
    .line 29
    return p0

    .line 30
    :cond_2
    iget p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->routeType:I

    .line 31
    .line 32
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->activateState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    if-ne p1, p2, :cond_3

    .line 36
    .line 37
    if-ne p0, p2, :cond_3

    .line 38
    .line 39
    const/16 p0, 0x7d

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const/16 p0, 0x64

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p2, "Exception at removeVpnProfileValidation API "

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/16 p0, 0x65

    .line 57
    .line 58
    :goto_0
    const-string/jumbo p1, "removeVpnProfileValidation : validationResult value is "

    .line 59
    .line 60
    .line 61
    invoke-static {p0, p1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return p0

    .line 65
    :cond_4
    :goto_1
    const/16 p0, 0x68

    .line 66
    .line 67
    return p0
.end method

.method public final setVpnModeOfOperationValidation(Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;Ljava/lang/String;I)I
    .locals 2

    .line 1
    const-string v0, "KnoxVpnApiValidation"

    .line 2
    .line 3
    if-eqz p2, :cond_4

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->vendorName:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    const/16 p0, 0x6c

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->admin_id:I

    .line 22
    .line 23
    iget p1, p1, Lcom/samsung/android/knox/net/vpn/KnoxVpnContext;->adminId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    if-eq p0, p1, :cond_2

    .line 26
    .line 27
    const/16 p0, 0x70

    .line 28
    .line 29
    return p0

    .line 30
    :cond_2
    if-eqz p3, :cond_3

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    if-eq p3, p0, :cond_3

    .line 34
    .line 35
    const/16 p0, 0x8a

    .line 36
    .line 37
    return p0

    .line 38
    :cond_3
    const/16 p0, 0x64

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string p2, "Exception at setVpnModeOfOperationValidation API "

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/16 p0, 0x65

    .line 53
    .line 54
    :goto_0
    const-string/jumbo p1, "setVpnModeOfOperationValidation : validationResult value is "

    .line 55
    .line 56
    .line 57
    invoke-static {p0, p1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return p0

    .line 61
    :cond_4
    :goto_1
    const/16 p0, 0x68

    .line 62
    .line 63
    return p0
.end method
