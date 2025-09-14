.class public final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;
.super Lcom/android/server/biometrics/sensors/BiometricUserState;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final doWriteState(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 7
    move-result-object v0

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    const-string/jumbo p0, "fingerprints"

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {p1, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result p0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, p0, :cond_0

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    .line 29
    const-string/jumbo v4, "fingerprint"

    .line 32
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    const-string/jumbo v4, "fingerId"

    .line 38
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    .line 41
    move-result v5

    .line 42
    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    const-string/jumbo v4, "name"

    .line 48
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 56
    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    const-string/jumbo v4, "groupId"

    .line 62
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    .line 65
    move-result v5

    .line 66
    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    const-string/jumbo v4, "deviceId"

    .line 72
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    .line 75
    move-result-wide v5

    .line 76
    invoke-interface {p1, v1, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    const-string/jumbo v4, "duplicatedCount"

    .line 82
    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->semGetDuplicatedImageCount()I

    .line 85
    move-result v3

    .line 86
    invoke-interface {p1, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    const-string/jumbo v3, "fingerprint"

    .line 92
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    const-string/jumbo p0, "fingerprints"

    .line 101
    invoke-interface {p1, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    return-void

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    throw p1
.end method

.method public final getBiometricsTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "fingerprints"

    .line 4
    return-object p0
.end method

.method public final getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 22
    new-instance v8, Landroid/hardware/fingerprint/Fingerprint;

    .line 24
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    .line 31
    move-result v3

    .line 32
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    .line 35
    move-result v4

    .line 36
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    .line 39
    move-result-wide v5

    .line 40
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->semGetDuplicatedImageCount()I

    .line 43
    move-result v7

    .line 44
    move-object v1, v8

    .line 45
    invoke-direct/range {v1 .. v7}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJI)V

    .line 48
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-object p0
.end method

.method public final getLegacyFileName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "settings_fingerprint.xml"

    .line 4
    return-object p0
.end method

.method public final getNameTemplateResource()I
    .locals 0

    .line 1
    const p0, 0x1040dfc

    .line 4
    return p0
.end method

.method public final parseBiometricsLocked(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 10

    .line 1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 4
    move-result v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_3

    .line 12
    const/4 v2, 0x3

    .line 13
    if-ne v1, v2, :cond_1

    .line 15
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 18
    move-result v3

    .line 19
    if-le v3, v0, :cond_3

    .line 21
    :cond_1
    if-eq v1, v2, :cond_0

    .line 23
    const/4 v2, 0x4

    .line 24
    if-ne v1, v2, :cond_2

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-string/jumbo v2, "fingerprint"

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 40
    const-string/jumbo v1, "name"

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 48
    const-string/jumbo v1, "groupId"

    .line 51
    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    move-result v5

    .line 55
    const-string/jumbo v1, "fingerId"

    .line 58
    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    move-result v6

    .line 62
    const-string/jumbo v1, "deviceId"

    .line 65
    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 68
    move-result-wide v7

    .line 69
    :try_start_0
    const-string/jumbo v1, "duplicatedCount"

    .line 72
    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_1
    move v9, v1

    .line 77
    goto :goto_2

    .line 78
    :catch_0
    move-exception v1

    .line 79
    const-string v2, "FingerprintState"

    .line 81
    const-string/jumbo v3, "parseBiometricsLocked : failed"

    .line 84
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    const/4 v1, -0x1

    .line 88
    goto :goto_1

    .line 89
    :goto_2
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 91
    new-instance v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 93
    move-object v3, v2

    .line 94
    invoke-direct/range {v3 .. v9}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJI)V

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    return-void
.end method
