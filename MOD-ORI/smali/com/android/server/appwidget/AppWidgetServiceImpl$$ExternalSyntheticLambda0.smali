.class public final synthetic Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget p1, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    const-string/jumbo v1, "convert_state_to_bytes"

    .line 12
    .line 13
    .line 14
    const-wide/16 v2, 0x40

    .line 15
    .line 16
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, p1, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->tagProvidersAndHosts()V

    .line 24
    .line 25
    .line 26
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 27
    .line 28
    invoke-virtual {v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v4, Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 35
    .line 36
    .line 37
    array-length v5, p1

    .line 38
    move v6, v1

    .line 39
    :goto_0
    if-ge v6, v5, :cond_1

    .line 40
    .line 41
    aget v7, p1, v6

    .line 42
    .line 43
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .line 44
    .line 45
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v8, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->writeProfileStateToStreamLocked(Ljava/io/OutputStream;I)Z

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-eqz v9, :cond_0

    .line 53
    .line 54
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-virtual {v4, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 65
    .line 66
    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    const-string/jumbo p0, "byte_to_disk_io"

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v3, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-ge v1, p0, :cond_2

    .line 79
    .line 80
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, [B

    .line 89
    .line 90
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getSavedStateFile(I)Landroid/util/AtomicFile;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    :try_start_1
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 95
    .line 96
    .line 97
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catch_0
    move-exception p1

    .line 106
    const-string v5, "AppWidgetServiceImpl"

    .line 107
    .line 108
    const-string v6, "Failed to write state byte stream to file"

    .line 109
    .line 110
    invoke-static {v5, v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catch_1
    move-exception p0

    .line 118
    const-string p1, "AppWidgetServiceImpl"

    .line 119
    .line 120
    const-string v0, "Failed to start writing stream"

    .line 121
    .line 122
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .line 124
    .line 125
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 129
    .line 130
    .line 131
    const/4 p0, 0x1

    .line 132
    return p0

    .line 133
    :catchall_0
    move-exception p0

    .line 134
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    throw p0
.end method
