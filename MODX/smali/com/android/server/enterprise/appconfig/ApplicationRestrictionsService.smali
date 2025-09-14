.class public final Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;
.super Lcom/samsung/android/knox/localservice/ApplicationRestrictionsInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAppRestrictionsLock:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/ApplicationRestrictionsInternal;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mAppRestrictionsLock:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mContext:Landroid/content/Context;

    .line 13
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/os/UserManager;

    .line 23
    iput-object v0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mUserManager:Landroid/os/UserManager;

    .line 25
    const-string v0, "activity"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/app/ActivityManager;

    .line 33
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/app/ActivityManager;

    .line 39
    iput-object v0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mActivityManager:Landroid/app/ActivityManager;

    .line 41
    new-instance v0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;

    .line 43
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;-><init>(Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;)V

    .line 46
    new-instance p0, Landroid/content/IntentFilter;

    .line 48
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 50
    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method public static checkSystemOrRoot(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 13
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 18
    const-string v1, "Only system may: "

    .line 20
    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0

    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public static packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string/jumbo v0, "knox_"

    .line 4
    const-string v1, ".xml"

    .line 6
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static readApplicationRestrictionsLAr(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 7

    .line 1
    new-instance v0, Landroid/util/AtomicFile;

    .line 3
    new-instance v1, Ljava/io/File;

    .line 5
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 19
    const-string p0, "ApplicationRestrictionsService"

    .line 21
    const-string p1, "Unable to read restrictions file "

    .line 23
    new-instance v1, Landroid/os/Bundle;

    .line 25
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_0

    .line 43
    goto :goto_3

    .line 44
    :cond_0
    const/4 v3, 0x0

    .line 45
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 48
    move-result-object v3

    .line 49
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 52
    move-result-object v4

    .line 53
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 55
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 58
    move-result-object v5

    .line 59
    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 62
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 65
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 68
    move-result v5

    .line 69
    const/4 v6, 0x2

    .line 70
    if-eq v5, v6, :cond_2

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    :goto_0
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 94
    goto :goto_3

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_4

    .line 97
    :catch_0
    move-exception p1

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 102
    move-result p1

    .line 103
    const/4 v5, 0x1

    .line 104
    if-eq p1, v5, :cond_1

    .line 106
    invoke-static {v1, v2, v4}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    goto :goto_1

    .line 110
    :goto_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    const-string v4, "Error parsing "

    .line 117
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 131
    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    goto :goto_0

    .line 135
    :goto_3
    return-object v1

    .line 136
    :goto_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 139
    throw p0
.end method

.method public static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    .line 1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_a

    .line 8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v2, "entry"

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_a

    .line 21
    const/4 v0, 0x0

    .line 22
    const-string/jumbo v2, "key"

    .line 25
    invoke-interface {p2, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    const-string/jumbo v3, "type"

    .line 32
    invoke-interface {p2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    const-string/jumbo v4, "m"

    .line 39
    invoke-interface {p2, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    move-result v0

    .line 52
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 54
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 57
    move-result v3

    .line 58
    const/4 v4, 0x1

    .line 59
    if-eq v3, v4, :cond_1

    .line 61
    if-ne v3, v1, :cond_0

    .line 63
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    const-string/jumbo v4, "value"

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_0

    .line 76
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v0, v0, -0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 93
    move-result p2

    .line 94
    new-array p2, p2, [Ljava/lang/String;

    .line 96
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 99
    invoke-virtual {p0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 102
    goto/16 :goto_4

    .line 104
    :cond_2
    const-string v0, "B"

    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_4

    .line 112
    new-instance v0, Landroid/os/Bundle;

    .line 114
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 120
    move-result v1

    .line 121
    :goto_1
    invoke-static {p2, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_3

    .line 127
    invoke-static {v0, p1, p2}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 130
    goto :goto_1

    .line 131
    :cond_3
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 134
    goto :goto_4

    .line 135
    :cond_4
    const-string v0, "BA"

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_7

    .line 143
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 146
    move-result v0

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    .line 149
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    :goto_2
    invoke-static {p2, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_6

    .line 158
    new-instance v3, Landroid/os/Bundle;

    .line 160
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 163
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 166
    move-result v4

    .line 167
    :goto_3
    invoke-static {p2, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 170
    move-result v5

    .line 171
    if-eqz v5, :cond_5

    .line 173
    invoke-static {v3, p1, p2}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 176
    goto :goto_3

    .line 177
    :cond_5
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    goto :goto_2

    .line 181
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 184
    move-result p1

    .line 185
    new-array p1, p1, [Landroid/os/Bundle;

    .line 187
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 190
    move-result-object p1

    .line 191
    check-cast p1, [Landroid/os/Parcelable;

    .line 193
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 196
    goto :goto_4

    .line 197
    :cond_7
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 204
    move-result-object p1

    .line 205
    const-string p2, "b"

    .line 207
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    move-result p2

    .line 211
    if-eqz p2, :cond_8

    .line 213
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 216
    move-result p1

    .line 217
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    goto :goto_4

    .line 221
    :cond_8
    const-string/jumbo p2, "i"

    .line 224
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    move-result p2

    .line 228
    if-eqz p2, :cond_9

    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 233
    move-result p1

    .line 234
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    goto :goto_4

    .line 238
    :cond_9
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_a
    :goto_4
    return-void
.end method

.method public static writeApplicationRestrictionsLAr(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/util/AtomicFile;

    .line 3
    new-instance v1, Ljava/io/File;

    .line 5
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 19
    const-string/jumbo p0, "restrictions"

    .line 22
    const/4 p1, 0x0

    .line 23
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 26
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 29
    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    .line 34
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 37
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 39
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v3, v2, v4}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 46
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 48
    invoke-virtual {v3, p1, v2}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 51
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 54
    const/4 v4, 0x1

    .line 55
    invoke-virtual {v3, v2, v4}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 58
    invoke-virtual {v3, p1, p0}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    invoke-static {p2, v3}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 64
    invoke-virtual {v3, p1, p0}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    invoke-virtual {v3}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 70
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception p0

    .line 75
    move-object p1, v1

    .line 76
    goto :goto_0

    .line 77
    :catch_1
    move-exception p0

    .line 78
    :goto_0
    invoke-virtual {v0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 81
    const-string p1, "ApplicationRestrictionsService"

    .line 83
    const-string p2, "Error writing application restrictions list"

    .line 85
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :goto_1
    return-void
.end method

.method public static writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_a

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 21
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    move-object v3, p1

    .line 26
    check-cast v3, Lcom/android/internal/util/FastXmlSerializer;

    .line 28
    const/4 v4, 0x0

    .line 29
    const-string/jumbo v5, "entry"

    .line 32
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    const-string/jumbo v6, "key"

    .line 38
    invoke-virtual {v3, v4, v6, v1}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 41
    instance-of v1, v2, Ljava/lang/Boolean;

    .line 43
    const-string/jumbo v6, "type"

    .line 46
    if-eqz v1, :cond_0

    .line 48
    const-string v1, "b"

    .line 50
    invoke-virtual {v3, v4, v6, v1}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    goto/16 :goto_5

    .line 62
    :cond_0
    instance-of v1, v2, Ljava/lang/Integer;

    .line 64
    if-eqz v1, :cond_1

    .line 66
    const-string/jumbo v1, "i"

    .line 69
    invoke-virtual {v3, v4, v6, v1}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    goto/16 :goto_5

    .line 81
    :cond_1
    const-string v1, ""

    .line 83
    if-eqz v2, :cond_7

    .line 85
    instance-of v7, v2, Ljava/lang/String;

    .line 87
    if-eqz v7, :cond_2

    .line 89
    goto :goto_4

    .line 90
    :cond_2
    instance-of v7, v2, Landroid/os/Bundle;

    .line 92
    const-string v8, "B"

    .line 94
    if-eqz v7, :cond_3

    .line 96
    invoke-virtual {v3, v4, v6, v8}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    check-cast v2, Landroid/os/Bundle;

    .line 101
    invoke-static {v2, p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 104
    goto :goto_5

    .line 105
    :cond_3
    instance-of v7, v2, [Landroid/os/Parcelable;

    .line 107
    const/4 v9, 0x0

    .line 108
    if-eqz v7, :cond_5

    .line 110
    const-string v1, "BA"

    .line 112
    invoke-virtual {v3, v4, v6, v1}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    check-cast v2, [Landroid/os/Parcelable;

    .line 117
    array-length v1, v2

    .line 118
    :goto_1
    if-ge v9, v1, :cond_9

    .line 120
    aget-object v7, v2, v9

    .line 122
    instance-of v10, v7, Landroid/os/Bundle;

    .line 124
    if-eqz v10, :cond_4

    .line 126
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    invoke-virtual {v3, v4, v6, v8}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    check-cast v7, Landroid/os/Bundle;

    .line 134
    invoke-static {v7, p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 137
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    add-int/lit8 v9, v9, 0x1

    .line 142
    goto :goto_1

    .line 143
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 145
    const-string/jumbo p1, "bundle-array can only hold Bundles"

    .line 148
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    throw p0

    .line 152
    :cond_5
    const-string/jumbo v7, "sa"

    .line 155
    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    check-cast v2, [Ljava/lang/String;

    .line 160
    array-length v6, v2

    .line 161
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 164
    move-result-object v6

    .line 165
    const-string/jumbo v7, "m"

    .line 168
    invoke-virtual {v3, v4, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    array-length v6, v2

    .line 172
    :goto_2
    if-ge v9, v6, :cond_9

    .line 174
    aget-object v7, v2, v9

    .line 176
    const-string/jumbo v8, "value"

    .line 179
    invoke-virtual {v3, v4, v8}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    if-eqz v7, :cond_6

    .line 184
    goto :goto_3

    .line 185
    :cond_6
    move-object v7, v1

    .line 186
    :goto_3
    invoke-virtual {v3, v7}, Lcom/android/internal/util/FastXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    invoke-virtual {v3, v4, v8}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    add-int/lit8 v9, v9, 0x1

    .line 194
    goto :goto_2

    .line 195
    :cond_7
    :goto_4
    const-string/jumbo v7, "s"

    .line 198
    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    if-eqz v2, :cond_8

    .line 203
    move-object v1, v2

    .line 204
    check-cast v1, Ljava/lang/String;

    .line 206
    :cond_8
    invoke-virtual {v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    :cond_9
    :goto_5
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    goto/16 :goto_0

    .line 214
    :cond_a
    return-void
.end method


# virtual methods
.method public final getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mAppRestrictionsLock:Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {p2, p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->readApplicationRestrictionsLAr(ILjava/lang/String;)Landroid/os/Bundle;

    .line 7
    move-result-object p1

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p1
.end method

.method public final sendBroadcastAsUserInternal(Ljava/lang/String;I)V
    .locals 10

    .line 1
    const-string/jumbo v0, "com.android.settings"

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const/4 v4, 0x0

    .line 18
    const-string/jumbo v5, "com.android.settings.intelligence"

    .line 21
    const/16 v6, 0x20

    .line 23
    const-string/jumbo v7, "com.samsung.android.knox.intent.action.KNOX_RESTRICTIONS_CHANGED_INTERNAL"

    .line 26
    const/4 v8, -0x1

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 30
    move-result v9

    .line 31
    sparse-switch v9, :sswitch_data_0

    .line 34
    goto :goto_0

    .line 35
    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v8, 0x5

    .line 43
    goto :goto_0

    .line 44
    :sswitch_1
    const-string/jumbo v9, "com.samsung.android.knox.galaxyai"

    .line 47
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v8, 0x4

    .line 55
    goto :goto_0

    .line 56
    :sswitch_2
    const-string/jumbo v9, "com.sec.android.desktopmode.uiservice"

    .line 59
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_2

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v8, 0x3

    .line 67
    goto :goto_0

    .line 68
    :sswitch_3
    const-string/jumbo v9, "com.samsung.android.app.telephonyui"

    .line 71
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_3

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const/4 v8, 0x2

    .line 79
    goto :goto_0

    .line 80
    :sswitch_4
    const-string/jumbo v9, "com.samsung.android.SettingsReceiver"

    .line 83
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_4

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    move v8, v1

    .line 91
    goto :goto_0

    .line 92
    :sswitch_5
    const-string/jumbo v9, "com.sec.android.desktopcommunity"

    .line 95
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_5

    .line 101
    goto :goto_0

    .line 102
    :cond_5
    move v8, v2

    .line 103
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 106
    goto/16 :goto_3

    .line 108
    :pswitch_0
    sget-object p1, Lcom/samsung/android/knox/EdmConstants;->APP_RESTRICTIONS_PACKAGES:Ljava/util/Map;

    .line 110
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 113
    move-result-object p1

    .line 114
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 117
    move-result-object p1

    .line 118
    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_7

    .line 124
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/String;

    .line 130
    sget-object v1, Lcom/samsung/android/knox/EdmConstants;->APP_RESTRICTIONS_PACKAGES:Ljava/util/Map;

    .line 132
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    move-result-object v1

    .line 136
    const-string v2, "basic"

    .line 138
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_6

    .line 144
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    goto :goto_1

    .line 148
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    .line 150
    invoke-direct {p1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string/jumbo v0, "galaxyai"

    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    iget-object v0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mContext:Landroid/content/Context;

    .line 167
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 174
    sget-object p1, Lcom/samsung/android/knox/EdmConstants;->AI_APP_RESTRICTIONS_PACKAGES:Ljava/util/List;

    .line 176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 179
    move-result-object p1

    .line 180
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_7

    .line 186
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Ljava/lang/String;

    .line 192
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    goto :goto_2

    .line 196
    :pswitch_2
    const-string/jumbo p1, "com.android.systemui"

    .line 199
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mActivityManager:Landroid/app/ActivityManager;

    .line 204
    invoke-virtual {p1, v5, v4}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    .line 207
    goto :goto_3

    .line 208
    :pswitch_3
    const/high16 p1, 0x40000000    # 2.0f

    .line 210
    invoke-static {p1, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 213
    move-result-object p1

    .line 214
    iget-object p0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mContext:Landroid/content/Context;

    .line 216
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 219
    move-result-object p2

    .line 220
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 223
    return-void

    .line 224
    :pswitch_4
    const-string/jumbo p1, "com.sec.android.app.desktoplauncher"

    .line 227
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mActivityManager:Landroid/app/ActivityManager;

    .line 232
    invoke-virtual {p1, v5, v4}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    .line 235
    :cond_7
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 238
    move-result-object p1

    .line 239
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_8

    .line 245
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Ljava/lang/String;

    .line 251
    new-instance v1, Landroid/content/Intent;

    .line 253
    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    iget-object v0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mContext:Landroid/content/Context;

    .line 264
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 271
    goto :goto_4

    .line 272
    :cond_8
    return-void

    .line 273
    :sswitch_data_0
    .sparse-switch
        -0x689bf6ca -> :sswitch_5
        -0x3ae4acce -> :sswitch_4
        -0x223d2f81 -> :sswitch_3
        0x21bf5e9 -> :sswitch_2
        0x252ea07a -> :sswitch_1
        0x44f4b98f -> :sswitch_0
    .end sparse-switch

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setApplicationRestrictionsInternal(Ljava/lang/String;Landroid/os/Bundle;IZ)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v1, "setApplicationRestrictionsInternal"

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 29
    :goto_0
    if-eqz p2, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 35
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 38
    move-result-wide v0

    .line 39
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mAppRestrictionsLock:Ljava/lang/Object;

    .line 41
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    if-eqz p2, :cond_2

    .line 44
    :try_start_2
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-static {p3, p1, p2}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->writeApplicationRestrictionsLAr(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 54
    goto :goto_2

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_4

    .line 57
    :cond_2
    :goto_1
    invoke-static {p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 60
    move-result-object p2

    .line 61
    new-instance v3, Ljava/io/File;

    .line 63
    invoke-static {p1}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v4

    .line 67
    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_3

    .line 76
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 79
    :cond_3
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    if-eqz p4, :cond_4

    .line 82
    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->sendBroadcastAsUserInternal(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    goto :goto_3

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    goto :goto_5

    .line 88
    :cond_4
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    return-void

    .line 92
    :goto_4
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 94
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    throw p0
.end method

.method public final setKeyedAppStatesReport(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v1, "setKeyedAppStatesReport"

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 29
    :goto_0
    const-string v0, ".feedback"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mAppRestrictionsLock:Ljava/lang/Object;

    .line 39
    monitor-enter v0

    .line 40
    :try_start_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v2

    .line 52
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_0

    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Ljava/lang/String;

    .line 64
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    const/4 p2, 0x0

    .line 75
    invoke-virtual {p0, p1, v1, p3, p2}, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->setApplicationRestrictionsInternal(Ljava/lang/String;Landroid/os/Bundle;IZ)V

    .line 78
    monitor-exit v0

    .line 79
    goto :goto_3

    .line 80
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p0

    .line 82
    :cond_1
    :goto_3
    return-void
.end method
