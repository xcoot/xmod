.class public final Lcom/android/server/wm/AppWarnings$WriteConfigTask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mPendingPackageFlags:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic this$0:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->this$0:Lcom/android/server/wm/AppWarnings;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->mPendingPackageFlags:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->mPendingPackageFlags:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/util/ArrayMap;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->this$0:Lcom/android/server/wm/AppWarnings;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string/jumbo v2, "package"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v3, "packages"

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 26
    .line 27
    .line 28
    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    :try_start_1
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-interface {v5, v1, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 36
    .line 37
    .line 38
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 39
    .line 40
    const/4 v7, 0x1

    .line 41
    invoke-interface {v5, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v5, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-ge v6, v7, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    check-cast v7, Landroid/util/Pair;

    .line 59
    .line 60
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v8, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v7, Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    check-cast v9, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-nez v9, :cond_0

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_0
    invoke-interface {v5, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    .line 87
    .line 88
    const-string/jumbo v10, "user"

    .line 89
    .line 90
    .line 91
    invoke-interface {v5, v1, v10, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    .line 93
    .line 94
    const-string/jumbo v8, "name"

    .line 95
    .line 96
    .line 97
    invoke-interface {v5, v1, v8, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    .line 99
    .line 100
    const-string v7, "flags"

    .line 101
    .line 102
    invoke-interface {v5, v1, v7, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    .line 104
    .line 105
    invoke-interface {v5, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    .line 107
    .line 108
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    move-object v1, v4

    .line 113
    goto :goto_2

    .line 114
    :cond_1
    invoke-interface {v5, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    .line 116
    .line 117
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    .line 121
    .line 122
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :catch_1
    move-exception v0

    .line 127
    :goto_2
    const-string v2, "AppWarnings"

    .line 128
    .line 129
    const-string v3, "Error writing package metadata"

    .line 130
    .line 131
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .line 133
    .line 134
    if-eqz v1, :cond_2

    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    .line 137
    .line 138
    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 139
    .line 140
    .line 141
    :cond_2
    :goto_3
    return-void
.end method

.method public final schedule()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->mPendingPackageFlags:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    new-instance v1, Landroid/util/ArrayMap;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/AppWarnings$WriteConfigTask;->this$0:Lcom/android/server/wm/AppWarnings;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-wide/16 v1, 0x2710

    .line 23
    .line 24
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
