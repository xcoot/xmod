.class public final Lcom/android/server/biometrics/sensors/face/FaceUserState;
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
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/FaceUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 7
    move-result-object v0

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    const-string/jumbo p0, "faces"

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
    check-cast v3, Landroid/hardware/face/Face;

    .line 29
    const-string/jumbo v4, "face"

    .line 32
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    const-string/jumbo v4, "faceId"

    .line 38
    invoke-virtual {v3}, Landroid/hardware/face/Face;->getBiometricId()I

    .line 41
    move-result v5

    .line 42
    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    const-string/jumbo v4, "name"

    .line 48
    invoke-virtual {v3}, Landroid/hardware/face/Face;->getName()Ljava/lang/CharSequence;

    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 56
    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    const-string/jumbo v4, "deviceId"

    .line 62
    invoke-virtual {v3}, Landroid/hardware/face/Face;->getDeviceId()J

    .line 65
    move-result-wide v5

    .line 66
    invoke-interface {p1, v1, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    const-string/jumbo v3, "face"

    .line 72
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const-string/jumbo p0, "faces"

    .line 81
    invoke-interface {p1, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p1
.end method

.method public final getBiometricsTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "faces"

    .line 4
    return-object p0
.end method

.method public final getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6

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
    check-cast v0, Landroid/hardware/face/Face;

    .line 22
    new-instance v1, Landroid/hardware/face/Face;

    .line 24
    invoke-virtual {v0}, Landroid/hardware/face/Face;->getName()Ljava/lang/CharSequence;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0}, Landroid/hardware/face/Face;->getBiometricId()I

    .line 31
    move-result v3

    .line 32
    invoke-virtual {v0}, Landroid/hardware/face/Face;->getDeviceId()J

    .line 35
    move-result-wide v4

    .line 36
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 39
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-object p0
.end method

.method public final getLegacyFileName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "settings_face.xml"

    .line 4
    return-object p0
.end method

.method public final getNameTemplateResource()I
    .locals 0

    .line 1
    const p0, 0x104054a

    .line 4
    return p0
.end method

.method public final parseBiometricsLocked(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 7

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
    const-string/jumbo v2, "face"

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
    move-result-object v1

    .line 48
    const-string/jumbo v3, "faceId"

    .line 51
    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    move-result v3

    .line 55
    const-string/jumbo v4, "deviceId"

    .line 58
    invoke-interface {p1, v2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 61
    move-result-wide v4

    .line 62
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    .line 64
    new-instance v6, Landroid/hardware/face/Face;

    .line 66
    invoke-direct {v6, v1, v3, v4, v5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 69
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    return-void
.end method
