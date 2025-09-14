.class public final Lcom/android/server/sensorprivacy/AllSensorStateController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;

.field public mEnabled:Z

.field public mListener:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;

.field public mListenerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/AtomicFile;

    .line 5
    .line 6
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string/jumbo v3, "sensor_privacy.xml"

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mAtomicFile:Landroid/util/AtomicFile;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 32
    .line 33
    .line 34
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :goto_0
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, 0x1

    .line 44
    if-eq v3, v4, :cond_4

    .line 45
    .line 46
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "all-sensor-privacy"

    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    const-string v5, "enabled"

    .line 57
    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    :try_start_2
    iget-boolean v3, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 61
    .line 62
    invoke-static {v2, v5, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    or-int/2addr v2, v3

    .line 67
    iput-boolean v2, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception v2

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    const-string/jumbo v4, "sensor-privacy"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_2

    .line 80
    .line 81
    iget-boolean v4, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 82
    .line 83
    invoke-static {v2, v5, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    or-int/2addr v4, v6

    .line 88
    iput-boolean v4, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 89
    .line 90
    :cond_2
    const-string/jumbo v4, "user"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    const-string v3, "id"

    .line 100
    .line 101
    const/4 v4, -0x1

    .line 102
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_3

    .line 107
    .line 108
    iget-boolean v3, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 109
    .line 110
    invoke-static {v2, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    or-int/2addr v3, v4

    .line 115
    iput-boolean v3, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 116
    .line 117
    :cond_3
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    .line 122
    .line 123
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_5

    .line 127
    :catch_0
    move-exception v0

    .line 128
    goto :goto_4

    .line 129
    :goto_2
    if-eqz v0, :cond_5

    .line 130
    .line 131
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :catchall_1
    move-exception v0

    .line 136
    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    :goto_3
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0

    .line 140
    :goto_4
    const-string v2, "AllSensorStateController"

    .line 141
    .line 142
    const-string v3, "Caught an exception reading the state from storage: "

    .line 143
    .line 144
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .line 146
    .line 147
    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    .line 148
    .line 149
    :cond_6
    :goto_5
    return-void
.end method
