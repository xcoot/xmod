.class public final synthetic Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

.field public final synthetic f$1:Lcom/android/server/SystemService$TargetUser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/SystemService$TargetUser;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/SystemService$TargetUser;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "User "

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    new-instance v2, Ljava/io/File;

    .line 15
    .line 16
    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string/jumbo v4, "grammatical_inflection"

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Ljava/io/File;

    .line 27
    .line 28
    const-string/jumbo v4, "user_settings.xml"

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v2

    .line 37
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    const-string v0, "GrammaticalInflection"

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, " doesn\'t have the grammatical gender file."

    .line 54
    .line 55
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    monitor-exit v2

    .line 66
    goto :goto_4

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_5

    .line 69
    :cond_0
    iget-object v1, v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mGrammaticalGenderCache:Landroid/util/SparseIntArray;

    .line 70
    .line 71
    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-ltz v1, :cond_1

    .line 76
    .line 77
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    goto :goto_4

    .line 79
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    .line 80
    .line 81
    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    :try_start_2
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    const/4 v6, 0x1

    .line 96
    if-eq v5, v6, :cond_3

    .line 97
    .line 98
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    const-string/jumbo v6, "grammatical_inflection"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_2

    .line 110
    .line 111
    const-string/jumbo v5, "grammatical_gender"

    .line 112
    .line 113
    .line 114
    const/4 v6, 0x0

    .line 115
    invoke-interface {v4, v6, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    const/4 v4, 0x0

    .line 125
    :goto_1
    iget-object v0, v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mGrammaticalGenderCache:Landroid/util/SparseIntArray;

    .line 126
    .line 127
    invoke-virtual {v0, p0, v4}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 128
    .line 129
    .line 130
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    .line 132
    .line 133
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 134
    invoke-static {v4, p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->updateConfiguration(II)V

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :catch_0
    move-exception p0

    .line 139
    goto :goto_3

    .line 140
    :catchall_1
    move-exception p0

    .line 141
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :catchall_2
    move-exception v0

    .line 146
    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    :goto_2
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 150
    :goto_3
    :try_start_7
    const-string v0, "GrammaticalInflection"

    .line 151
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v4, "Failed to parse XML configuration from "

    .line 158
    .line 159
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .line 171
    .line 172
    monitor-exit v2

    .line 173
    :goto_4
    return-void

    .line 174
    :goto_5
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 175
    throw p0
.end method
