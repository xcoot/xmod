.class public final Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPendingPersistCookies:Landroid/util/SparseArray;

.field public final synthetic this$0:Lcom/android/server/pm/InstantAppRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstantAppRegistry;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->this$0:Lcom/android/server/pm/InstantAppRegistry;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removePendingPersistCookieLPr(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/internal/os/SomeArgs;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, [B

    .line 17
    .line 18
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Ljava/io/File;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->this$0:Lcom/android/server/pm/InstantAppRegistry;

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    invoke-static {v0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(ILjava/lang/String;)Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    const-string p1, "InstantAppRegistry"

    .line 51
    .line 52
    const-string v0, "Cannot create instant app cookie directory"

    .line 53
    .line 54
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    monitor-exit p0

    .line 58
    goto :goto_3

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_4

    .line 61
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    const-string p1, "InstantAppRegistry"

    .line 74
    .line 75
    const-string v0, "Cannot delete instant app cookie file"

    .line 76
    .line 77
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_2
    if-eqz v2, :cond_4

    .line 81
    .line 82
    array-length p1, v2

    .line 83
    if-gtz p1, :cond_3

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    .line 88
    .line 89
    invoke-direct {p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    .line 91
    .line 92
    :try_start_2
    array-length p1, v2

    .line 93
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v2, v0, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    .line 96
    .line 97
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :catch_0
    move-exception p0

    .line 102
    goto :goto_1

    .line 103
    :catchall_1
    move-exception p1

    .line 104
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catchall_2
    move-exception p0

    .line 109
    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 113
    :goto_1
    const-string p1, "InstantAppRegistry"

    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v1, "Error writing instant app cookie file: "

    .line 118
    .line 119
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_4
    :goto_2
    :try_start_6
    monitor-exit p0

    .line 134
    :goto_3
    return-void

    .line 135
    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 136
    throw p1
.end method

.method public final removePendingPersistCookieLPr(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/internal/os/SomeArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/ArrayMap;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :cond_1
    :goto_0
    return-object p1
.end method

.method public final schedulePersistLPw(ILcom/android/server/pm/pkg/AndroidPackage;[B)V
    .locals 4

    .line 1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p1, v0}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(ILjava/lang/String;)Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "cookie_"

    .line 22
    .line 23
    const-string v3, ".dat"

    .line 24
    .line 25
    invoke-static {v2, v1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Ljava/io/File;

    .line 30
    .line 31
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->hasSignatures()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    const-string v0, "InstantAppRegistry"

    .line 45
    .line 46
    const-string v1, "Parsed Instant App contains no valid signatures!"

    .line 47
    .line 48
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p1, v0}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(ILjava/lang/String;)Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removePendingPersistCookieLPr(Lcom/android/server/pm/pkg/AndroidPackage;I)Lcom/android/internal/os/SomeArgs;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/util/ArrayMap;

    .line 89
    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    .line 93
    .line 94
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 98
    .line 99
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iput-object p3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 107
    .line 108
    iput-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 109
    .line 110
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    invoke-virtual {v0, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-wide/16 p2, 0x3e8

    .line 122
    .line 123
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 124
    .line 125
    .line 126
    return-void
.end method
