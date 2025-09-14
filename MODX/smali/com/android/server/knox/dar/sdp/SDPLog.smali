.class public abstract Lcom/android/server/knox/dar/sdp/SDPLog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "ro.build.type"

    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    const-string/jumbo v2, "userdebug"

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 17
    const-string/jumbo v1, "eng"

    .line 20
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 34
    :goto_1
    sput-boolean v0, Lcom/android/server/knox/dar/sdp/SDPLog;->DEBUG:Z

    .line 36
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->makeDebugMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogger;->enqMessage(Ljava/lang/String;)V

    .line 8
    if-eqz p1, :cond_1

    .line 10
    if-eqz p0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "SDPLog"

    .line 15
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->getCurrentTime()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ",E,"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v2, v1, [Ljava/lang/String;

    .line 25
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x1

    .line 30
    if-eqz p2, :cond_0

    .line 32
    move v5, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v5, v1

    .line 35
    :goto_0
    add-int/2addr v5, v4

    .line 36
    array-length v6, v3

    .line 37
    add-int/2addr v5, v6

    .line 38
    new-array v2, v5, [Ljava/lang/String;

    .line 40
    if-eqz p2, :cond_1

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    aput-object v5, v2, v1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v4, v1

    .line 61
    :goto_1
    add-int/lit8 v5, v4, 0x1

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v6

    .line 82
    aput-object v6, v2, v4

    .line 84
    array-length v4, v3

    .line 85
    move v6, v1

    .line 86
    :goto_2
    if-ge v6, v4, :cond_2

    .line 88
    aget-object v7, v3, v6

    .line 90
    add-int/lit8 v8, v5, 0x1

    .line 92
    new-instance v9, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v7

    .line 111
    aput-object v7, v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    add-int/lit8 v6, v6, 0x1

    .line 115
    move v5, v8

    .line 116
    goto :goto_2

    .line 117
    :catch_0
    :cond_2
    array-length v0, v2

    .line 118
    :goto_3
    if-ge v1, v0, :cond_3

    .line 120
    aget-object v3, v2, v1

    .line 122
    invoke-static {v3}, Lcom/android/server/knox/dar/sdp/SDPLogger;->enqMessage(Ljava/lang/String;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    .line 127
    goto :goto_3

    .line 128
    :cond_3
    if-eqz p2, :cond_5

    .line 130
    if-eqz p1, :cond_4

    .line 132
    goto :goto_4

    .line 133
    :cond_4
    const-string p1, "SDPLog"

    .line 135
    :goto_4
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    :cond_5
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    new-instance v1, Ljava/lang/Throwable;

    .line 5
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->getCurrentTime()Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v3, ",I,"

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 32
    move-result-object v1

    .line 33
    array-length v3, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    const/4 v4, 0x1

    .line 35
    const-string v5, "."

    .line 37
    const-string v6, "()"

    .line 39
    if-le v3, v4, :cond_0

    .line 41
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    aget-object v7, v1, v4

    .line 48
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    aget-object v4, v1, v4

    .line 60
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v3

    .line 74
    move-object/from16 v16, v3

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move-object/from16 v16, v6

    .line 79
    :goto_0
    array-length v3, v1

    .line 80
    const/4 v4, 0x2

    .line 81
    if-le v3, v4, :cond_1

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    aget-object v7, v1, v4

    .line 90
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    aget-object v1, v1, v4

    .line 102
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v6

    .line 116
    :cond_1
    move-object/from16 v18, v6

    .line 118
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 121
    move-result v1

    .line 122
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 125
    move-result-object v10

    .line 126
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 129
    move-result v1

    .line 130
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 133
    move-result-object v12

    .line 134
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 137
    move-result v1

    .line 138
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 141
    move-result-object v14

    .line 142
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 149
    move-result v1

    .line 150
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 153
    move-result-object v8

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v7, "UserId"

    .line 164
    const-string v9, "UID"

    .line 166
    const-string v11, "PID"

    .line 168
    const-string v13, "TID"

    .line 170
    const-string v15, "Curr"

    .line 172
    const-string v17, "Prev"

    .line 174
    filled-new-array/range {v7 .. v18}, [Ljava/lang/Object;

    .line 177
    move-result-object v3

    .line 178
    invoke-static {v3}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->makePairs([Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    goto :goto_1

    .line 190
    :catch_0
    move-object v1, v2

    .line 191
    :goto_1
    if-nez v0, :cond_2

    .line 193
    filled-new-array {v1}, [Ljava/lang/String;

    .line 196
    move-result-object v1

    .line 197
    goto :goto_2

    .line 198
    :cond_2
    invoke-static {v2, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    move-result-object v2

    .line 202
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 205
    move-result-object v1

    .line 206
    :goto_2
    array-length v2, v1

    .line 207
    const/4 v3, 0x0

    .line 208
    :goto_3
    if-ge v3, v2, :cond_3

    .line 210
    aget-object v4, v1, v3

    .line 212
    invoke-static {v4}, Lcom/android/server/knox/dar/sdp/SDPLogger;->enqMessage(Ljava/lang/String;)V

    .line 215
    add-int/lit8 v3, v3, 0x1

    .line 217
    goto :goto_3

    .line 218
    :cond_3
    if-eqz v0, :cond_4

    .line 220
    const-string v1, "SDPLog"

    .line 222
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_4
    return-void
.end method

.method public static varargs p([Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/knox/dar/sdp/SDPLog;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->getCurrentTime()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLogUtil;->makePairs([Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v0, ",P,"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogger;->enqMessage(Ljava/lang/String;)V

    .line 36
    const-string v0, "SDPLog.p"

    .line 38
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method
