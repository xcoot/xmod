.class public abstract Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static serialize(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/io/OutputStream;)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "keyChainSnapshot"

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getSnapshotVersion()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    int-to-long v2, v2

    .line 20
    const-string/jumbo v4, "snapshotVersion"

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v4, v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getMaxAttempts()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-long v2, v2

    .line 31
    const-string/jumbo v4, "maxAttempts"

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v4, v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v2, "counterId"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getCounterId()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    invoke-static {p1, v2, v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v2, "recoveryKeyMaterial"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getEncryptedRecoveryKeyBlob()[B

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v3, v2, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag([BLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 55
    .line 56
    .line 57
    const-string/jumbo v2, "serverParams"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getServerParams()[B

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v3, v2, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag([BLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getTrustedHardwareCertPath()Ljava/security/cert/CertPath;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v3, "PkiPath"

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/security/cert/CertPath;->getEncoded(Ljava/lang/String;)[B

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-string/jumbo v3, "thmCertPath"

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v3, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag([BLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getKeyChainProtectionParams()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const-string/jumbo v3, "keyChainProtectionParamsList"

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    .line 92
    .line 93
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_0

    .line 102
    .line 103
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Landroid/security/keystore/recovery/KeyChainProtectionParams;

    .line 108
    .line 109
    const-string/jumbo v5, "keyChainProtectionParams"

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getUserSecretType()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    int-to-long v6, v6

    .line 120
    const-string/jumbo v8, "userSecretType"

    .line 121
    .line 122
    .line 123
    invoke-static {p1, v8, v6, v7}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getLockScreenUiFormat()I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    int-to-long v6, v6

    .line 131
    const-string/jumbo v8, "lockScreenUiType"

    .line 132
    .line 133
    .line 134
    invoke-static {p1, v8, v6, v7}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getKeyDerivationParams()Landroid/security/keystore/recovery/KeyDerivationParams;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    const-string/jumbo v6, "keyDerivationParams"

    .line 142
    .line 143
    .line 144
    invoke-interface {p1, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Landroid/security/keystore/recovery/KeyDerivationParams;->getAlgorithm()I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    int-to-long v7, v7

    .line 152
    const-string v9, "algorithm"

    .line 153
    .line 154
    invoke-static {p1, v9, v7, v8}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 155
    .line 156
    .line 157
    const-string/jumbo v7, "salt"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4}, Landroid/security/keystore/recovery/KeyDerivationParams;->getSalt()[B

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-static {v8, v7, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag([BLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4}, Landroid/security/keystore/recovery/KeyDerivationParams;->getMemoryDifficulty()I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    int-to-long v7, v4

    .line 172
    const-string/jumbo v4, "memoryDifficulty"

    .line 173
    .line 174
    .line 175
    invoke-static {p1, v4, v7, v8}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 176
    .line 177
    .line 178
    invoke-interface {p1, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    .line 180
    .line 181
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_0
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getWrappedApplicationKeys()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    const-string v2, "applicationKeysList"

    .line 193
    .line 194
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    .line 196
    .line 197
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_1

    .line 206
    .line 207
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    check-cast v3, Landroid/security/keystore/recovery/WrappedApplicationKey;

    .line 212
    .line 213
    const-string v4, "applicationKey"

    .line 214
    .line 215
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getAlias()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    const-string v6, "alias"

    .line 223
    .line 224
    invoke-interface {p1, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    .line 226
    .line 227
    invoke-interface {p1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    .line 229
    .line 230
    invoke-interface {p1, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    .line 232
    .line 233
    const-string/jumbo v5, "keyMaterial"

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getEncryptedKeyMaterial()[B

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-static {v6, v5, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag([BLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 241
    .line 242
    .line 243
    const-string/jumbo v5, "keyMetadata"

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getMetadata()[B

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-static {v3, v5, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag([BLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 251
    .line 252
    .line 253
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_1
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 258
    .line 259
    .line 260
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    .line 262
    .line 263
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 264
    .line 265
    .line 266
    return-void
.end method

.method public static writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writePropertyTag([BLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-interface {p2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    invoke-interface {p2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
