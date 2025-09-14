.class public final Lcom/samsung/android/server/corescpm/ScpmControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/server/corescpm/ScpmController;


# static fields
.field public static final sControllers:Ljava/util/Map;


# instance fields
.field public mCallback:Ljava/util/function/Consumer;

.field public final mConsumerInfo:Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mLogger:Lcom/samsung/android/server/util/CoreLogger;

.field public final mOnLazyBootCompletedTimeout:Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;

.field public mRetryNumber:I

.field public mStarted:Z

.field public mToken:Ljava/lang/String;

.field public final mTryRegister:Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->sControllers:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$ScpmConsumerInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/corescpm/ScpmControllerImpl;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mOnLazyBootCompletedTimeout:Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    new-instance v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/corescpm/ScpmControllerImpl;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mTryRegister:Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    iput v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mRetryNumber:I

    .line 29
    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mConsumerInfo:Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final getFileDescriptorInternal(Ljava/lang/String;)Ljava/io/FileDescriptor;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->register()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 10
    .line 11
    const-string p1, "getFileDescriptor: token is null"

    .line 12
    .line 13
    invoke-virtual {p0, v1, p1, v2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "content://com.samsung.android.scpm.policy/"

    .line 20
    .line 21
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mToken:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, "/"

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    new-instance v5, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;

    .line 50
    .line 51
    invoke-direct {v5, v3, v4, p1}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;-><init>(JLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda3;

    .line 55
    .line 56
    invoke-direct {p1, p0, v5}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/corescpm/ScpmControllerImpl;Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    .line 60
    .line 61
    const-wide/32 v6, 0xea60

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, p1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-string/jumbo v4, "r"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iget-object v4, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    .line 81
    .line 82
    invoke-virtual {v4, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/samsung/android/server/util/CoreLogger;->mTag:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v5}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda2;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {p1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    if-nez v3, :cond_2

    .line 99
    .line 100
    new-instance p1, Landroid/os/Bundle;

    .line 101
    .line 102
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string/jumbo v3, "token"

    .line 106
    .line 107
    .line 108
    iget-object v4, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mToken:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    iget-object v4, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mConsumerInfo:Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;

    .line 120
    .line 121
    iget-object v4, v4, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mPackageName:Ljava/lang/String;

    .line 122
    .line 123
    const-string v5, "getLastError"

    .line 124
    .line 125
    invoke-virtual {v3, v0, v5, v4, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-nez p1, :cond_1

    .line 130
    .line 131
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 132
    .line 133
    const-string p1, "getFileDescriptor: bundle is null"

    .line 134
    .line 135
    invoke-virtual {p0, v1, p1, v2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    return-object v2

    .line 139
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 140
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v3, "getFileDescriptor: code="

    .line 144
    .line 145
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string/jumbo v3, "rcode"

    .line 149
    .line 150
    .line 151
    const/4 v4, -0x1

    .line 152
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v3, ", msg="

    .line 160
    .line 161
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string/jumbo v3, "rmsg"

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p0, v1, p1, v2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    return-object v2

    .line 182
    :cond_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    return-object p0
.end method

.method public final onLazyBootCompleted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mToken:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mTryRegister:Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 5
    .line 6
    const-string/jumbo p2, "onReceive, intent is null"

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x6

    .line 10
    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x5

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 26
    .line 27
    const-string/jumbo p2, "onReceive, action is empty"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1, p2, p1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const-string v0, "."

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/lit8 v2, v0, 0x1

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v4, 0x3

    .line 47
    if-ltz v0, :cond_3

    .line 48
    .line 49
    if-ne v2, v3, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string/jumbo v5, "onReceive, action="

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v4, v1, p1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 78
    .line 79
    const-string/jumbo v2, "onReceive, action="

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :goto_1
    const-string v0, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 90
    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    iget-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    .line 98
    .line 99
    iget-object p2, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mOnLazyBootCompletedTimeout:Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->onLazyBootCompleted()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    const-string v0, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 109
    .line 110
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    .line 117
    .line 118
    monitor-enter v0

    .line 119
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mToken:Ljava/lang/String;

    .line 120
    .line 121
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iput v4, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mRetryNumber:I

    .line 123
    .line 124
    iget-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    .line 125
    .line 126
    iget-object p2, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mTryRegister:Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    .line 132
    .line 133
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mTryRegister:Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    const-wide/32 v0, 0x2bf20

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :catchall_0
    move-exception p0

    .line 143
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    throw p0

    .line 145
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mCallback:Ljava/util/function/Consumer;

    .line 146
    .line 147
    const-string p1, "com.samsung.android.scpm.policy.UPDATE."

    .line 148
    .line 149
    const-string v0, ""

    .line 150
    .line 151
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public final register()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mToken:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return v2

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    new-instance v0, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v1, "packageName"

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mConsumerInfo:Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mPackageName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "appId"

    .line 31
    .line 32
    iget-object v3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mConsumerInfo:Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mAppId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v1, "version"

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mConsumerInfo:Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;

    .line 43
    .line 44
    iget-object v3, v3, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mVersion:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string/jumbo v1, "receiverPackageName"

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mConsumerInfo:Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;

    .line 53
    .line 54
    iget-object v3, v3, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mReceiverPackageName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object v1, Lcom/samsung/android/server/corescpm/ScpmApiContract;->URI:Landroid/net/Uri;

    .line 60
    .line 61
    const-string/jumbo v3, "register"

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iget-object v5, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mConsumerInfo:Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;

    .line 71
    .line 72
    iget-object v5, v5, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;->mPackageName:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v4, v1, v3, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const/4 v1, 0x0

    .line 79
    const/4 v3, 0x0

    .line 80
    if-nez v0, :cond_1

    .line 81
    .line 82
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 83
    .line 84
    const-string v0, "Fail to register, bundle is null"

    .line 85
    .line 86
    const/4 v2, 0x6

    .line 87
    invoke-virtual {p0, v2, v0, v3}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    return v1

    .line 91
    :cond_1
    const-string/jumbo v4, "token"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    iget-object v5, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 99
    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v7, "Register, result="

    .line 103
    .line 104
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string/jumbo v7, "result"

    .line 108
    .line 109
    .line 110
    const/4 v8, 0x2

    .line 111
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v7, ", code="

    .line 119
    .line 120
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string/jumbo v7, "rcode"

    .line 124
    .line 125
    .line 126
    const/4 v8, -0x1

    .line 127
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v7, ", msg="

    .line 135
    .line 136
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string/jumbo v7, "rmsg"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const/4 v6, 0x4

    .line 154
    invoke-virtual {v5, v6, v0, v3}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    iget-object v3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    .line 158
    .line 159
    monitor-enter v3

    .line 160
    :try_start_1
    iput-object v4, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mToken:Ljava/lang/String;

    .line 161
    .line 162
    if-eqz v4, :cond_2

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_2
    move v2, v1

    .line 166
    :goto_0
    monitor-exit v3

    .line 167
    return v2

    .line 168
    :catchall_1
    move-exception p0

    .line 169
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    throw p0

    .line 171
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    throw p0
.end method
