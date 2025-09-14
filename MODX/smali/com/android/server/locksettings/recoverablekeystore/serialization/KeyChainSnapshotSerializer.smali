.class public abstract Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static serialize(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/io/OutputStream;)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 9
    const-string/jumbo v1, "keyChainSnapshot"

    .line 12
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 15
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getSnapshotVersion()I

    .line 18
    move-result v2

    .line 19
    int-to-long v2, v2

    .line 20
    const-string/jumbo v4, "snapshotVersion"

    .line 23
    invoke-static {p1, v4, v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 26
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getMaxAttempts()I

    .line 29
    move-result v2

    .line 30
    int-to-long v2, v2

    .line 31
    const-string/jumbo v4, "maxAttempts"

    .line 34
    invoke-static {p1, v4, v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 37
    const-string/jumbo v2, "counterId"

    .line 40
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getCounterId()J

    .line 43
    move-result-wide v3

    .line 44
    invoke-static {p1, v2, v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 47
    const-string/jumbo v2, "recoveryKeyMaterial"

    .line 50
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getEncryptedRecoveryKeyBlob()[B

    .line 53
    move-result-object v3

    .line 54
    invoke-static {v3, v2, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag([BLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 57
    const-string/jumbo v2, "serverParams"

    .line 60
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getServerParams()[B

    .line 63
    move-result-object v3

    .line 64
    invoke-static {v3, v2, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag([BLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 67
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getTrustedHardwareCertPath()Ljava/security/cert/CertPath;

    .line 70
    move-result-object v2

    .line 71
    const-string v3, "PkiPath"

    .line 73
    invoke-virtual {v2, v3}, Ljava/security/cert/CertPath;->getEncoded(Ljava/lang/String;)[B

    .line 76
    move-result-object v2

    .line 77
    const-string/jumbo v3, "thmCertPath"

    .line 80
    invoke-static {v2, v3, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag([BLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 83
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getKeyChainProtectionParams()Ljava/util/List;

    .line 86
    move-result-object v2

    .line 87
    const-string/jumbo v3, "keyChainProtectionParamsList"

    .line 90
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    move-result-object v2

    .line 97
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_0

    .line 103
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Landroid/security/keystore/recovery/KeyChainProtectionParams;

    .line 109
    const-string/jumbo v5, "keyChainProtectionParams"

    .line 112
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    invoke-virtual {v4}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getUserSecretType()I

    .line 118
    move-result v6

    .line 119
    int-to-long v6, v6

    .line 120
    const-string/jumbo v8, "userSecretType"

    .line 123
    invoke-static {p1, v8, v6, v7}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 126
    invoke-virtual {v4}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getLockScreenUiFormat()I

    .line 129
    move-result v6

    .line 130
    int-to-long v6, v6

    .line 131
    const-string/jumbo v8, "lockScreenUiType"

    .line 134
    invoke-static {p1, v8, v6, v7}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 137
    invoke-virtual {v4}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getKeyDerivationParams()Landroid/security/keystore/recovery/KeyDerivationParams;

    .line 140
    move-result-object v4

    .line 141
    const-string/jumbo v6, "keyDerivationParams"

    .line 144
    invoke-interface {p1, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    invoke-virtual {v4}, Landroid/security/keystore/recovery/KeyDerivationParams;->getAlgorithm()I

    .line 150
    move-result v7

    .line 151
    int-to-long v7, v7

    .line 152
    const-string v9, "algorithm"

    .line 154
    invoke-static {p1, v9, v7, v8}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 157
    const-string/jumbo v7, "salt"

    .line 160
    invoke-virtual {v4}, Landroid/security/keystore/recovery/KeyDerivationParams;->getSalt()[B

    .line 163
    move-result-object v8

    .line 164
    invoke-static {v8, v7, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag([BLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 167
    invoke-virtual {v4}, Landroid/security/keystore/recovery/KeyDerivationParams;->getMemoryDifficulty()I

    .line 170
    move-result v4

    .line 171
    int-to-long v7, v4

    .line 172
    const-string/jumbo v4, "memoryDifficulty"

    .line 175
    invoke-static {p1, v4, v7, v8}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 178
    invoke-interface {p1, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    goto :goto_0

    .line 185
    :cond_0
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getWrappedApplicationKeys()Ljava/util/List;

    .line 191
    move-result-object p0

    .line 192
    const-string v2, "applicationKeysList"

    .line 194
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 200
    move-result-object p0

    .line 201
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_1

    .line 207
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    move-result-object v3

    .line 211
    check-cast v3, Landroid/security/keystore/recovery/WrappedApplicationKey;

    .line 213
    const-string v4, "applicationKey"

    .line 215
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    invoke-virtual {v3}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getAlias()Ljava/lang/String;

    .line 221
    move-result-object v5

    .line 222
    const-string v6, "alias"

    .line 224
    invoke-interface {p1, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    invoke-interface {p1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    invoke-interface {p1, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    const-string/jumbo v5, "keyMaterial"

    .line 236
    invoke-virtual {v3}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getEncryptedKeyMaterial()[B

    .line 239
    move-result-object v6

    .line 240
    invoke-static {v6, v5, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag([BLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 243
    const-string/jumbo v5, "keyMetadata"

    .line 246
    invoke-virtual {v3}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getMetadata()[B

    .line 249
    move-result-object v3

    .line 250
    invoke-static {v3, v5, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag([BLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 253
    invoke-interface {p1, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    goto :goto_1

    .line 257
    :cond_1
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 263
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

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
