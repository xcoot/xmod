.class public final synthetic Lcom/android/server/sensorprivacy/PersistedState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Lcom/android/server/sensorprivacy/PersistedState;

    .line 2
    .line 3
    check-cast p2, Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string/jumbo p0, "sensor-state"

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "sensor-privacy"

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    iget-object v2, p1, Lcom/android/server/sensorprivacy/PersistedState;->mAtomicFile:Landroid/util/AtomicFile;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    .line 32
    .line 33
    const-string/jumbo v4, "persistence-version"

    .line 34
    .line 35
    .line 36
    const/4 v5, 0x2

    .line 37
    invoke-interface {v3, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 38
    .line 39
    .line 40
    const-string/jumbo v4, "version"

    .line 41
    .line 42
    .line 43
    invoke-interface {v3, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    :goto_0
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-ge v4, v5, :cond_1

    .line 52
    .line 53
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    .line 58
    .line 59
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Lcom/android/server/sensorprivacy/SensorState;

    .line 64
    .line 65
    iget v7, v5, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    .line 66
    .line 67
    const/4 v8, 0x1

    .line 68
    if-eq v7, v8, :cond_0

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_0
    invoke-interface {v3, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    .line 73
    .line 74
    const-string/jumbo v7, "toggle-type"

    .line 75
    .line 76
    .line 77
    iget v8, v5, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mType:I

    .line 78
    .line 79
    invoke-interface {v3, v1, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    .line 81
    .line 82
    const-string/jumbo v7, "user-id"

    .line 83
    .line 84
    .line 85
    iget v8, v5, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mUserId:I

    .line 86
    .line 87
    invoke-interface {v3, v1, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    .line 89
    .line 90
    const-string/jumbo v7, "sensor"

    .line 91
    .line 92
    .line 93
    iget v5, v5, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;->mSensor:I

    .line 94
    .line 95
    invoke-interface {v3, v1, v7, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    .line 97
    .line 98
    const-string/jumbo v5, "state-type"

    .line 99
    .line 100
    .line 101
    iget v7, v6, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 102
    .line 103
    invoke-interface {v3, v1, v5, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    .line 105
    .line 106
    const-string v5, "last-change"

    .line 107
    .line 108
    iget-wide v6, v6, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    .line 109
    .line 110
    invoke-interface {v3, v1, v5, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    .line 112
    .line 113
    invoke-interface {v3, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    .line 115
    .line 116
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catch_0
    move-exception p0

    .line 120
    move-object v1, v2

    .line 121
    goto :goto_2

    .line 122
    :cond_1
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    .line 124
    .line 125
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 126
    .line 127
    .line 128
    iget-object p0, p1, Lcom/android/server/sensorprivacy/PersistedState;->mAtomicFile:Landroid/util/AtomicFile;

    .line 129
    .line 130
    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :catch_1
    move-exception p0

    .line 135
    :goto_2
    const-string p2, "PersistedState"

    .line 136
    .line 137
    const-string v0, "Caught an exception persisting the sensor privacy state: "

    .line 138
    .line 139
    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .line 141
    .line 142
    iget-object p0, p1, Lcom/android/server/sensorprivacy/PersistedState;->mAtomicFile:Landroid/util/AtomicFile;

    .line 143
    .line 144
    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 145
    .line 146
    .line 147
    :goto_3
    return-void
.end method
