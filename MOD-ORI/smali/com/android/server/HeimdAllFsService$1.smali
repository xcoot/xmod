.class public final Lcom/android/server/HeimdAllFsService$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/HeimdAllFsService;


# direct methods
.method public constructor <init>(Lcom/android/server/HeimdAllFsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    .line 2
    .line 3
    const-string p1, "HeimdAllFS"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const-string/jumbo v0, "runIdleMaint, HeimdAllFS Thread End, latch down"

    .line 2
    .line 3
    .line 4
    const-string v1, "HeimdAllFS"

    .line 5
    .line 6
    :try_start_0
    const-string/jumbo v2, "runIdleMaint, HeimdAllFS Thread Start"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    .line 13
    .line 14
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v3, v2, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 21
    .line 22
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 23
    .line 24
    const-string/jumbo v3, "yyMMdd"

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Ljava/util/Date;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sget-boolean v3, Lcom/android/server/HeimdAllFsService;->mIsUserTrial:Z

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    iget-object v3, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/android/server/HeimdAllFsService;->setTriggerThreshold()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v2

    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :catch_0
    move-exception v2

    .line 56
    goto :goto_2

    .line 57
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/server/HeimdAllFsService;->mForceService:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    const-string/jumbo v4, "sys.heimdallfs.todayinfo"

    .line 60
    .line 61
    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    :try_start_1
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    const-string v2, "Once a day, bye bye"

    .line 75
    .line 76
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 85
    .line 86
    if-eqz p0, :cond_1

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 89
    .line 90
    .line 91
    :cond_1
    return-void

    .line 92
    :cond_2
    :try_start_2
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/android/server/HeimdAllFsService;->getPackagesOnUserdata()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iput-object v3, v2, Lcom/android/server/HeimdAllFsService;->mPackagesInfo:Ljava/util/List;

    .line 102
    .line 103
    sget-object v2, Lcom/android/server/HeimdAllFsService$FunctionOrder;->DEFRAG:Lcom/android/server/HeimdAllFsService$FunctionOrder;

    .line 104
    .line 105
    invoke-static {v2}, Lcom/android/server/HeimdAllFsService;->isServiceActivate(Lcom/android/server/HeimdAllFsService$FunctionOrder;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_3

    .line 110
    .line 111
    const-string v2, "Defrag!!"

    .line 112
    .line 113
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_3
    sget-object v2, Lcom/android/server/HeimdAllFsService$FunctionOrder;->COMPRESS:Lcom/android/server/HeimdAllFsService$FunctionOrder;

    .line 117
    .line 118
    invoke-static {v2}, Lcom/android/server/HeimdAllFsService;->isServiceActivate(Lcom/android/server/HeimdAllFsService$FunctionOrder;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_4

    .line 123
    .line 124
    iget-object v2, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    .line 125
    .line 126
    iget-object v3, v2, Lcom/android/server/HeimdAllFsService;->mPackagesInfo:Ljava/util/List;

    .line 127
    .line 128
    const/4 v4, 0x0

    .line 129
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Ljava/util/List;

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Lcom/android/server/HeimdAllFsService;->startCompress(Ljava/util/List;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    const-string v2, "HeimdAllFS Thread End Normally"

    .line 139
    .line 140
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    .line 142
    .line 143
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    .line 147
    .line 148
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 149
    .line 150
    if-eqz p0, :cond_5

    .line 151
    .line 152
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :goto_2
    :try_start_3
    const-string v3, "Exception!!"

    .line 157
    .line 158
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    .line 163
    .line 164
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    .line 168
    .line 169
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 170
    .line 171
    if-eqz p0, :cond_5

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_5
    :goto_3
    return-void

    .line 175
    :goto_4
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService$1;->this$0:Lcom/android/server/HeimdAllFsService;

    .line 179
    .line 180
    iget-object p0, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsLatch:Ljava/util/concurrent/CountDownLatch;

    .line 181
    .line 182
    if-eqz p0, :cond_6

    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 185
    .line 186
    .line 187
    :cond_6
    throw v2
.end method
