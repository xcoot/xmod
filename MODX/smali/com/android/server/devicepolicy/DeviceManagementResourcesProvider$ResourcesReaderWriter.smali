.class public final Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFile:Ljava/io/File;

.field public final synthetic this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance v0, Ljava/io/File;

    .line 11
    iget-object p1, p1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mInjector:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 19
    move-result-object p1

    .line 20
    const-string/jumbo v1, "updated_resources.xml"

    .line 23
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    .line 28
    return-void
.end method


# virtual methods
.method public final readFromFileLocked()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    const-string v1, "DevicePolicyManagerService"

    .line 9
    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v2, ""

    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string p0, " doesn\'t exist"

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    const-string v2, "Reading from "

    .line 40
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Landroid/util/AtomicFile;

    .line 57
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    .line 59
    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 62
    const/4 v2, 0x0

    .line 63
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 70
    move-result-object v0

    .line 71
    const/4 v3, 0x0

    .line 72
    :cond_1
    :goto_0
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 75
    move-result v4

    .line 76
    const/4 v5, 0x1

    .line 77
    if-eq v4, v5, :cond_5

    .line 79
    const/4 v6, 0x2

    .line 80
    if-eq v4, v6, :cond_3

    .line 82
    const/4 v5, 0x3

    .line 83
    if-eq v4, v5, :cond_2

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 91
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 94
    move-result-object v4

    .line 95
    if-ne v3, v5, :cond_4

    .line 97
    const-string/jumbo v5, "root"

    .line 100
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v5

    .line 104
    if-nez v5, :cond_1

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    const-string v0, "Invalid root tag: "

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 123
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 129
    return-void

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    goto :goto_4

    .line 132
    :catch_0
    move-exception p0

    .line 133
    goto :goto_2

    .line 134
    :cond_4
    :try_start_1
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->readInner(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;)Z

    .line 137
    move-result v4
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    if-nez v4, :cond_1

    .line 140
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 143
    return-void

    .line 144
    :cond_5
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 147
    goto :goto_3

    .line 148
    :goto_2
    :try_start_2
    const-string v0, "Error parsing resources file"

    .line 150
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    goto :goto_1

    .line 154
    :goto_3
    return-void

    .line 155
    :goto_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 158
    throw p0
.end method

.method public final readInner(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    if-le p2, v1, :cond_0

    .line 6
    return v2

    .line 7
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string/jumbo p2, "drawable-style"

    .line 13
    const-string/jumbo v3, "drawable-id"

    .line 16
    const/4 v4, 0x0

    .line 17
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    .line 19
    const/4 v5, -0x1

    .line 20
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 23
    move-result v6

    .line 24
    sparse-switch v6, :sswitch_data_0

    .line 27
    :goto_0
    move v1, v5

    .line 28
    goto :goto_1

    .line 29
    :sswitch_0
    const-string/jumbo v6, "drawable-style-entry"

    .line 32
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v6

    .line 36
    if-nez v6, :cond_3

    .line 38
    goto :goto_0

    .line 39
    :sswitch_1
    const-string/jumbo v1, "drawable-source-entry"

    .line 42
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v1, v2

    .line 50
    goto :goto_1

    .line 51
    :sswitch_2
    const-string/jumbo v1, "string-entry"

    .line 54
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move v1, v0

    .line 62
    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 65
    const-string p0, "Unexpected tag: "

    .line 67
    invoke-virtual {p0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    const-string p1, "DevicePolicyManagerService"

    .line 73
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v0

    .line 77
    :pswitch_0
    invoke-interface {p1, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p3

    .line 81
    invoke-interface {p1, v4, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object p2

    .line 85
    invoke-static {p1}, Landroid/app/admin/ParcelableResource;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/ParcelableResource;

    .line 88
    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    .line 91
    check-cast v0, Ljava/util/HashMap;

    .line 93
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_4

    .line 99
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    .line 101
    new-instance v1, Ljava/util/HashMap;

    .line 103
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 106
    check-cast v0, Ljava/util/HashMap;

    .line 108
    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_4
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    .line 113
    check-cast p0, Ljava/util/HashMap;

    .line 115
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    move-result-object p0

    .line 119
    check-cast p0, Ljava/util/Map;

    .line 121
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    goto :goto_2

    .line 125
    :pswitch_1
    invoke-interface {p1, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object p3

    .line 129
    const-string/jumbo v0, "drawable-source"

    .line 132
    invoke-interface {p1, v4, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    invoke-interface {p1, v4, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object p2

    .line 140
    invoke-static {p1}, Landroid/app/admin/ParcelableResource;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/ParcelableResource;

    .line 143
    move-result-object p1

    .line 144
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 146
    check-cast v1, Ljava/util/HashMap;

    .line 148
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_5

    .line 154
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 156
    new-instance v3, Ljava/util/HashMap;

    .line 158
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 161
    check-cast v1, Ljava/util/HashMap;

    .line 163
    invoke-virtual {v1, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_5
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 168
    check-cast v1, Ljava/util/HashMap;

    .line 170
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    move-result-object v1

    .line 174
    check-cast v1, Ljava/util/Map;

    .line 176
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_6

    .line 182
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 184
    check-cast v1, Ljava/util/HashMap;

    .line 186
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Ljava/util/Map;

    .line 192
    new-instance v3, Ljava/util/HashMap;

    .line 194
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 197
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_6
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 202
    check-cast p0, Ljava/util/HashMap;

    .line 204
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    move-result-object p0

    .line 208
    check-cast p0, Ljava/util/Map;

    .line 210
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-result-object p0

    .line 214
    check-cast p0, Ljava/util/Map;

    .line 216
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    goto :goto_2

    .line 220
    :pswitch_2
    const-string/jumbo p2, "source-id"

    .line 223
    invoke-interface {p1, v4, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    move-result-object p2

    .line 227
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    .line 229
    invoke-static {p1}, Landroid/app/admin/ParcelableResource;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/ParcelableResource;

    .line 232
    move-result-object p1

    .line 233
    check-cast p0, Ljava/util/HashMap;

    .line 235
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :goto_2
    return v2

    .line 239
    :sswitch_data_0
    .sparse-switch
        -0x3cdb944a -> :sswitch_2
        0x48f5d90f -> :sswitch_1
        0x53d206a7 -> :sswitch_0
    .end sparse-switch

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final writeInner(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    .line 3
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    .line 5
    const-string/jumbo v1, "drawable-style"

    .line 8
    const-string/jumbo v2, "drawable-id"

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 14
    check-cast v0, Ljava/util/HashMap;

    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    .line 24
    check-cast v0, Ljava/util/HashMap;

    .line 26
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 34
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Ljava/util/Map;

    .line 52
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 55
    move-result-object v5

    .line 56
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v5

    .line 60
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_0

    .line 66
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v6

    .line 70
    check-cast v6, Ljava/util/Map$Entry;

    .line 72
    const-string/jumbo v7, "drawable-style-entry"

    .line 75
    invoke-interface {p1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 81
    move-result-object v8

    .line 82
    check-cast v8, Ljava/lang/String;

    .line 84
    invoke-interface {p1, v3, v2, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    move-result-object v8

    .line 91
    check-cast v8, Ljava/lang/String;

    .line 93
    invoke-interface {p1, v3, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Landroid/app/admin/ParcelableResource;

    .line 102
    invoke-virtual {v6, p1}, Landroid/app/admin/ParcelableResource;->writeToXmlFile(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 105
    invoke-interface {p1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 111
    if-eqz v0, :cond_4

    .line 113
    check-cast v0, Ljava/util/HashMap;

    .line 115
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 123
    check-cast v0, Ljava/util/HashMap;

    .line 125
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 128
    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 132
    move-result-object v0

    .line 133
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_4

    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    move-result-object v4

    .line 143
    check-cast v4, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 148
    move-result-object v5

    .line 149
    check-cast v5, Ljava/util/Map;

    .line 151
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 154
    move-result-object v5

    .line 155
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 158
    move-result-object v5

    .line 159
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    move-result v6

    .line 163
    if-eqz v6, :cond_2

    .line 165
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    move-result-object v6

    .line 169
    check-cast v6, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 174
    move-result-object v7

    .line 175
    check-cast v7, Ljava/util/Map;

    .line 177
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 180
    move-result-object v7

    .line 181
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 184
    move-result-object v7

    .line 185
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    move-result v8

    .line 189
    if-eqz v8, :cond_3

    .line 191
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    move-result-object v8

    .line 195
    check-cast v8, Ljava/util/Map$Entry;

    .line 197
    const-string/jumbo v9, "drawable-source-entry"

    .line 200
    invoke-interface {p1, v3, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 206
    move-result-object v10

    .line 207
    check-cast v10, Ljava/lang/String;

    .line 209
    invoke-interface {p1, v3, v2, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 215
    move-result-object v10

    .line 216
    check-cast v10, Ljava/lang/String;

    .line 218
    const-string/jumbo v11, "drawable-source"

    .line 221
    invoke-interface {p1, v3, v11, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 227
    move-result-object v10

    .line 228
    check-cast v10, Ljava/lang/String;

    .line 230
    invoke-interface {p1, v3, v1, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 236
    move-result-object v8

    .line 237
    check-cast v8, Landroid/app/admin/ParcelableResource;

    .line 239
    invoke-virtual {v8, p1}, Landroid/app/admin/ParcelableResource;->writeToXmlFile(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 242
    invoke-interface {p1, v3, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    goto :goto_1

    .line 246
    :cond_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    .line 248
    if-eqz v0, :cond_5

    .line 250
    check-cast v0, Ljava/util/HashMap;

    .line 252
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 255
    move-result v0

    .line 256
    if-nez v0, :cond_5

    .line 258
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    .line 260
    check-cast p0, Ljava/util/HashMap;

    .line 262
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 265
    move-result-object p0

    .line 266
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 269
    move-result-object p0

    .line 270
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_5

    .line 276
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    move-result-object v0

    .line 280
    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    const-string/jumbo v1, "string-entry"

    .line 285
    invoke-interface {p1, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 291
    move-result-object v2

    .line 292
    check-cast v2, Ljava/lang/String;

    .line 294
    const-string/jumbo v4, "source-id"

    .line 297
    invoke-interface {p1, v3, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 303
    move-result-object v0

    .line 304
    check-cast v0, Landroid/app/admin/ParcelableResource;

    .line 306
    invoke-virtual {v0, p1}, Landroid/app/admin/ParcelableResource;->writeToXmlFile(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 309
    invoke-interface {p1, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 312
    goto :goto_2

    .line 313
    :cond_5
    return-void
.end method
