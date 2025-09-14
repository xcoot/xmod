.class public final Lcom/android/server/am/ActiveServices$ServiceDumper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final args:[Ljava/lang/String;

.field public final dumpAll:Z

.field public final dumpPackage:Ljava/lang/String;

.field public final fd:Ljava/io/FileDescriptor;

.field public final matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

.field public needSep:Z

.field public final nowReal:J

.field public printed:Z

.field public printedAnything:Z

.field public final pw:Ljava/io/PrintWriter;

.field public final services:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->nowReal:J

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->fd:Ljava/io/FileDescriptor;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->args:[Ljava/lang/String;

    .line 31
    .line 32
    iput-boolean p6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    .line 33
    .line 34
    iput-object p7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    .line 35
    .line 36
    new-instance p2, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    .line 37
    .line 38
    invoke-direct {p2}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    .line 42
    .line 43
    :goto_0
    array-length p3, p4

    .line 44
    if-ge p5, p3, :cond_1

    .line 45
    .line 46
    aget-object p3, p4, p5

    .line 47
    .line 48
    const-string p6, "--"

    .line 49
    .line 50
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p6

    .line 54
    if-eqz p6, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {p2, p3}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 p5, p5, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    :goto_1
    iget-object p2, p1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 64
    .line 65
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/android/server/am/UserController;->getUsers()[I

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    array-length p3, p2

    .line 72
    move p4, v0

    .line 73
    :goto_2
    if-ge p4, p3, :cond_5

    .line 74
    .line 75
    aget p5, p2, p4

    .line 76
    .line 77
    invoke-virtual {p1, p5}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 78
    .line 79
    .line 80
    move-result-object p5

    .line 81
    iget-object p6, p5, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 82
    .line 83
    invoke-virtual {p6}, Landroid/util/ArrayMap;->size()I

    .line 84
    .line 85
    .line 86
    move-result p6

    .line 87
    if-lez p6, :cond_4

    .line 88
    .line 89
    move p6, v0

    .line 90
    :goto_3
    iget-object v1, p5, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-ge p6, v1, :cond_4

    .line 97
    .line 98
    iget-object v1, p5, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 99
    .line 100
    invoke-virtual {v1, p6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    .line 107
    .line 108
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 109
    .line 110
    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Landroid/content/ComponentName;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_2

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_2
    if-eqz p7, :cond_3

    .line 118
    .line 119
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 120
    .line 121
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-nez v2, :cond_3

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :goto_4
    add-int/lit8 p6, p6, 0x1

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_4
    add-int/lit8 p4, p4, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    return-void
.end method


# virtual methods
.method public final dumpHeaderLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 2
    .line 3
    const-string v1, "ACTIVITY MANAGER SERVICES (dumpsys activity services)"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 15
    .line 16
    const-string v2, "  Last ANR service:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final dumpLocked()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpHeaderLocked()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v3, v1, :cond_4

    .line 18
    .line 19
    aget v4, v0, v3

    .line 20
    .line 21
    move v5, v2

    .line 22
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-ge v5, v6, :cond_0

    .line 29
    .line 30
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 37
    .line 38
    iget v6, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 39
    .line 40
    if-eq v6, v4, :cond_0

    .line 41
    .line 42
    add-int/lit8 v5, v5, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    goto :goto_4

    .line 47
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 48
    .line 49
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-ge v5, v6, :cond_3

    .line 56
    .line 57
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 58
    .line 59
    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-ge v5, v6, :cond_2

    .line 66
    .line 67
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 74
    .line 75
    add-int/lit8 v5, v5, 0x1

    .line 76
    .line 77
    iget v7, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 78
    .line 79
    if-eq v7, v4, :cond_1

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 87
    .line 88
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 89
    .line 90
    or-int/2addr v5, v6

    .line 91
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 92
    .line 93
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserRemainsLocked(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :goto_4
    const-string v1, "ActivityManager"

    .line 100
    .line 101
    const-string v2, "Exception in dumpServicesLocked"

    .line 102
    .line 103
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpRemainsLocked()V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final dumpRemainsLocked()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "    "

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-lez v1, :cond_5

    .line 16
    .line 17
    iput-boolean v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 18
    .line 19
    move v1, v3

    .line 20
    :goto_0
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 21
    .line 22
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-ge v1, v5, :cond_4

    .line 29
    .line 30
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 31
    .line 32
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 39
    .line 40
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    .line 41
    .line 42
    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 43
    .line 44
    invoke-virtual {v6, v7, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Landroid/content/ComponentName;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-nez v6, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 56
    .line 57
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 67
    .line 68
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 69
    .line 70
    if-nez v6, :cond_3

    .line 71
    .line 72
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 73
    .line 74
    if-eqz v6, :cond_2

    .line 75
    .line 76
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 77
    .line 78
    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 79
    .line 80
    .line 81
    :cond_2
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 82
    .line 83
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 84
    .line 85
    const-string v7, "  Pending services:"

    .line 86
    .line 87
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 91
    .line 92
    :cond_3
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 93
    .line 94
    const-string v7, "  * Pending "

    .line 95
    .line 96
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 100
    .line 101
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 105
    .line 106
    invoke-virtual {v5, v6, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 113
    .line 114
    :cond_5
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 115
    .line 116
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-lez v1, :cond_b

    .line 123
    .line 124
    iput-boolean v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 125
    .line 126
    move v1, v3

    .line 127
    :goto_2
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 128
    .line 129
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-ge v1, v5, :cond_a

    .line 136
    .line 137
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 138
    .line 139
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 146
    .line 147
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    .line 148
    .line 149
    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 150
    .line 151
    invoke-virtual {v6, v7, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Landroid/content/ComponentName;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-nez v6, :cond_6

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_6
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    .line 159
    .line 160
    if-eqz v6, :cond_7

    .line 161
    .line 162
    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 163
    .line 164
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-nez v6, :cond_7

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 174
    .line 175
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 176
    .line 177
    if-nez v6, :cond_9

    .line 178
    .line 179
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 180
    .line 181
    if-eqz v6, :cond_8

    .line 182
    .line 183
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 184
    .line 185
    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 186
    .line 187
    .line 188
    :cond_8
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 189
    .line 190
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 191
    .line 192
    const-string v7, "  Restarting services:"

    .line 193
    .line 194
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 198
    .line 199
    :cond_9
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 200
    .line 201
    const-string v7, "  * Restarting "

    .line 202
    .line 203
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 207
    .line 208
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 212
    .line 213
    invoke-virtual {v5, v6, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_a
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 220
    .line 221
    :cond_b
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 222
    .line 223
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-lez v1, :cond_11

    .line 230
    .line 231
    iput-boolean v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 232
    .line 233
    move v1, v3

    .line 234
    :goto_4
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 235
    .line 236
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    if-ge v1, v5, :cond_10

    .line 243
    .line 244
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 245
    .line 246
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 253
    .line 254
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    .line 255
    .line 256
    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 257
    .line 258
    invoke-virtual {v6, v7, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Landroid/content/ComponentName;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    if-nez v6, :cond_c

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_c
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    .line 266
    .line 267
    if-eqz v6, :cond_d

    .line 268
    .line 269
    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 270
    .line 271
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-nez v6, :cond_d

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_d
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 281
    .line 282
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 283
    .line 284
    if-nez v6, :cond_f

    .line 285
    .line 286
    iget-boolean v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 287
    .line 288
    if-eqz v6, :cond_e

    .line 289
    .line 290
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 291
    .line 292
    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 293
    .line 294
    .line 295
    :cond_e
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 296
    .line 297
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 298
    .line 299
    const-string v7, "  Destroying services:"

    .line 300
    .line 301
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 305
    .line 306
    :cond_f
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 307
    .line 308
    const-string v7, "  * Destroy "

    .line 309
    .line 310
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 314
    .line 315
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 319
    .line 320
    invoke-virtual {v5, v6, v2}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_10
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 327
    .line 328
    :cond_11
    iget-boolean v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    .line 329
    .line 330
    if-eqz v1, :cond_19

    .line 331
    .line 332
    iput-boolean v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 333
    .line 334
    move v1, v3

    .line 335
    :goto_6
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 336
    .line 337
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    .line 338
    .line 339
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    if-ge v1, v5, :cond_19

    .line 344
    .line 345
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 346
    .line 347
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    .line 348
    .line 349
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    check-cast v5, Ljava/util/ArrayList;

    .line 354
    .line 355
    move v6, v3

    .line 356
    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    if-ge v6, v7, :cond_18

    .line 361
    .line 362
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    check-cast v7, Lcom/android/server/am/ConnectionRecord;

    .line 367
    .line 368
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    .line 369
    .line 370
    iget-object v9, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 371
    .line 372
    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 373
    .line 374
    iget-object v10, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 375
    .line 376
    invoke-virtual {v8, v10, v9}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Landroid/content/ComponentName;Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v8

    .line 380
    if-nez v8, :cond_12

    .line 381
    .line 382
    goto/16 :goto_8

    .line 383
    .line 384
    :cond_12
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    .line 385
    .line 386
    if-eqz v8, :cond_13

    .line 387
    .line 388
    iget-object v9, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 389
    .line 390
    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 391
    .line 392
    if-eqz v9, :cond_17

    .line 393
    .line 394
    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 395
    .line 396
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 397
    .line 398
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v8

    .line 402
    if-nez v8, :cond_13

    .line 403
    .line 404
    goto :goto_8

    .line 405
    :cond_13
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 406
    .line 407
    iget-boolean v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 408
    .line 409
    if-nez v8, :cond_15

    .line 410
    .line 411
    iget-boolean v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 412
    .line 413
    if-eqz v8, :cond_14

    .line 414
    .line 415
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 416
    .line 417
    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    .line 418
    .line 419
    .line 420
    :cond_14
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 421
    .line 422
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 423
    .line 424
    const-string v9, "  Connection bindings to services:"

    .line 425
    .line 426
    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 430
    .line 431
    :cond_15
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 432
    .line 433
    const-string v9, "  * "

    .line 434
    .line 435
    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 439
    .line 440
    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 444
    .line 445
    new-instance v9, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    const-string v10, "    binding="

    .line 448
    .line 449
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    iget-object v10, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 453
    .line 454
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v9

    .line 461
    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    iget-object v9, v7, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 465
    .line 466
    if-eqz v9, :cond_16

    .line 467
    .line 468
    new-instance v10, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    const-string v11, "    activity="

    .line 471
    .line 472
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    iget-object v9, v9, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    .line 476
    .line 477
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v9

    .line 484
    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    :cond_16
    new-instance v9, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    const-string v10, "    conn="

    .line 490
    .line 491
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    iget-object v10, v7, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 495
    .line 496
    invoke-interface {v10}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    .line 497
    .line 498
    .line 499
    move-result-object v10

    .line 500
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    const-string v10, " flags=0x"

    .line 504
    .line 505
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    iget-wide v10, v7, Lcom/android/server/am/ConnectionRecord;->flags:J

    .line 509
    .line 510
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v7

    .line 514
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v7

    .line 521
    invoke-virtual {v8, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    :cond_17
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 525
    .line 526
    goto/16 :goto_7

    .line 527
    .line 528
    :cond_18
    add-int/lit8 v1, v1, 0x1

    .line 529
    .line 530
    goto/16 :goto_6

    .line 531
    .line 532
    :cond_19
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    .line 533
    .line 534
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    .line 535
    .line 536
    if-eqz v1, :cond_22

    .line 537
    .line 538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 539
    .line 540
    .line 541
    move-result-wide v5

    .line 542
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 543
    .line 544
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 545
    .line 546
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 547
    .line 548
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getUsers()[I

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    array-length v7, v1

    .line 553
    move v8, v3

    .line 554
    :goto_9
    if-ge v8, v7, :cond_22

    .line 555
    .line 556
    aget v9, v1, v8

    .line 557
    .line 558
    iget-object v10, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 559
    .line 560
    iget-object v10, v10, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 561
    .line 562
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v10

    .line 566
    check-cast v10, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 567
    .line 568
    if-nez v10, :cond_1a

    .line 569
    .line 570
    goto/16 :goto_c

    .line 571
    .line 572
    :cond_1a
    iget-object v11, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    .line 573
    .line 574
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 575
    .line 576
    .line 577
    move-result v11

    .line 578
    sub-int/2addr v11, v4

    .line 579
    move v12, v3

    .line 580
    :goto_a
    const-string v13, ":"

    .line 581
    .line 582
    if-ltz v11, :cond_1f

    .line 583
    .line 584
    iget-object v14, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    .line 585
    .line 586
    invoke-virtual {v14, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v14

    .line 590
    check-cast v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 591
    .line 592
    iget-object v15, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    .line 593
    .line 594
    if-eqz v15, :cond_1b

    .line 595
    .line 596
    iget-object v3, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    .line 597
    .line 598
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    if-nez v3, :cond_1b

    .line 603
    .line 604
    goto/16 :goto_b

    .line 605
    .line 606
    :cond_1b
    if-nez v12, :cond_1d

    .line 607
    .line 608
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 609
    .line 610
    iget-boolean v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 611
    .line 612
    if-eqz v3, :cond_1c

    .line 613
    .line 614
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 615
    .line 616
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 617
    .line 618
    .line 619
    :cond_1c
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 620
    .line 621
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 622
    .line 623
    const-string v12, "Active foreground apps - user "

    .line 624
    .line 625
    invoke-virtual {v3, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 629
    .line 630
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 631
    .line 632
    .line 633
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 634
    .line 635
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    move v12, v4

    .line 639
    :cond_1d
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 640
    .line 641
    const-string v13, "  #"

    .line 642
    .line 643
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 647
    .line 648
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 649
    .line 650
    .line 651
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 652
    .line 653
    const-string v13, ": "

    .line 654
    .line 655
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 659
    .line 660
    iget-object v13, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    .line 661
    .line 662
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 666
    .line 667
    const-string v13, "    mNumActive="

    .line 668
    .line 669
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 673
    .line 674
    iget v13, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    .line 675
    .line 676
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 677
    .line 678
    .line 679
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 680
    .line 681
    const-string v13, " mAppOnTop="

    .line 682
    .line 683
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 687
    .line 688
    iget-boolean v13, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 689
    .line 690
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Z)V

    .line 691
    .line 692
    .line 693
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 694
    .line 695
    const-string v13, " mShownWhileTop="

    .line 696
    .line 697
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 701
    .line 702
    iget-boolean v13, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    .line 703
    .line 704
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Z)V

    .line 705
    .line 706
    .line 707
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 708
    .line 709
    const-string v13, " mShownWhileScreenOn="

    .line 710
    .line 711
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 715
    .line 716
    iget-boolean v13, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    .line 717
    .line 718
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->println(Z)V

    .line 719
    .line 720
    .line 721
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 722
    .line 723
    const-string v13, "    mStartTime="

    .line 724
    .line 725
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    move v3, v12

    .line 729
    iget-wide v12, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    .line 730
    .line 731
    sub-long/2addr v12, v5

    .line 732
    iget-object v15, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 733
    .line 734
    invoke-static {v12, v13, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 735
    .line 736
    .line 737
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 738
    .line 739
    const-string v13, " mStartVisibleTime="

    .line 740
    .line 741
    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    iget-wide v12, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    .line 745
    .line 746
    sub-long/2addr v12, v5

    .line 747
    iget-object v15, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 748
    .line 749
    invoke-static {v12, v13, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 750
    .line 751
    .line 752
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 753
    .line 754
    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    .line 755
    .line 756
    .line 757
    iget-wide v12, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 758
    .line 759
    const-wide/16 v16, 0x0

    .line 760
    .line 761
    cmp-long v12, v12, v16

    .line 762
    .line 763
    if-eqz v12, :cond_1e

    .line 764
    .line 765
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 766
    .line 767
    const-string v13, "    mEndTime="

    .line 768
    .line 769
    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    iget-wide v12, v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 773
    .line 774
    sub-long/2addr v12, v5

    .line 775
    iget-object v14, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 776
    .line 777
    invoke-static {v12, v13, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 778
    .line 779
    .line 780
    iget-object v12, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 781
    .line 782
    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    .line 783
    .line 784
    .line 785
    :cond_1e
    move v12, v3

    .line 786
    :goto_b
    add-int/lit8 v11, v11, -0x1

    .line 787
    .line 788
    const/4 v3, 0x0

    .line 789
    goto/16 :goto_a

    .line 790
    .line 791
    :cond_1f
    invoke-virtual {v10}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    .line 792
    .line 793
    .line 794
    move-result v3

    .line 795
    if-eqz v3, :cond_21

    .line 796
    .line 797
    iget-boolean v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 798
    .line 799
    if-eqz v3, :cond_20

    .line 800
    .line 801
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 802
    .line 803
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 804
    .line 805
    .line 806
    :cond_20
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 807
    .line 808
    iput-boolean v4, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 809
    .line 810
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 811
    .line 812
    const-string v11, "  Handler - user "

    .line 813
    .line 814
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 818
    .line 819
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 820
    .line 821
    .line 822
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 823
    .line 824
    invoke-virtual {v3, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    new-instance v3, Landroid/util/PrintWriterPrinter;

    .line 828
    .line 829
    iget-object v9, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 830
    .line 831
    invoke-direct {v3, v9}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v10, v3, v2}, Landroid/os/Handler;->dumpMine(Landroid/util/Printer;Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    :cond_21
    :goto_c
    add-int/lit8 v8, v8, 0x1

    .line 838
    .line 839
    const/4 v3, 0x0

    .line 840
    goto/16 :goto_9

    .line 841
    .line 842
    :cond_22
    iget-boolean v1, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 843
    .line 844
    if-nez v1, :cond_23

    .line 845
    .line 846
    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 847
    .line 848
    const-string v1, "  (nothing)"

    .line 849
    .line 850
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    :cond_23
    return-void
.end method

.method public final dumpServiceClient(Lcom/android/server/am/ServiceRecord;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 12
    .line 13
    const-string v2, "    Client:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 21
    .line 22
    .line 23
    :try_start_0
    new-instance v1, Lcom/android/internal/os/TransferPipe;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 26
    .line 27
    .line 28
    :try_start_1
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->args:[Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v0, v2, p1, v3}, Landroid/app/IApplicationThread;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string p1, "      "

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->fd:Ljava/io/FileDescriptor;

    .line 43
    .line 44
    const-wide/16 v2, 0x7d0

    .line 45
    .line 46
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    :try_start_2
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception p1

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 57
    .line 58
    .line 59
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 60
    :catch_1
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 61
    .line 62
    const-string v0, "      Got a RemoteException while dumping the service"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "      Failure while dumping the service: "

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 89
    .line 90
    return-void
.end method

.method public final dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V
    .locals 7

    .line 1
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 18
    .line 19
    const-string v3, "  User "

    .line 20
    .line 21
    const-string v4, " active services:"

    .line 22
    .line 23
    invoke-static {v0, v1, v3, v4}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 27
    .line 28
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 40
    .line 41
    const-string v1, "  * "

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpAll:Z

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 56
    .line 57
    const-string v1, "    "

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 67
    .line 68
    const-string v1, "    app="

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 74
    .line 75
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 81
    .line 82
    const-string v1, "    created="

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 88
    .line 89
    iget-wide v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->nowReal:J

    .line 90
    .line 91
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 92
    .line 93
    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 97
    .line 98
    const-string v1, " started="

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 104
    .line 105
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 111
    .line 112
    const-string v1, " connections="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 118
    .line 119
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-lez v0, :cond_6

    .line 133
    .line 134
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 135
    .line 136
    const-string v1, "    Connections:"

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const/4 v0, 0x0

    .line 142
    move v1, v0

    .line 143
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-ge v1, v2, :cond_6

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Ljava/util/ArrayList;

    .line 154
    .line 155
    move v3, v0

    .line 156
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-ge v3, v4, :cond_5

    .line 161
    .line 162
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 167
    .line 168
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 169
    .line 170
    const-string v6, "      "

    .line 171
    .line 172
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 176
    .line 177
    iget-object v6, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 178
    .line 179
    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    .line 180
    .line 181
    iget-object v6, v6, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 182
    .line 183
    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {v6, v0, v0, v0, v0}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 195
    .line 196
    const-string v6, " -> "

    .line 197
    .line 198
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v4, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 202
    .line 203
    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 204
    .line 205
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 206
    .line 207
    if-eqz v4, :cond_4

    .line 208
    .line 209
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    goto :goto_2

    .line 214
    :cond_4
    const-string/jumbo v4, "null"

    .line 215
    .line 216
    .line 217
    :goto_2
    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    add-int/lit8 v3, v3, 0x1

    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_6
    :goto_3
    return-void
.end method

.method public final dumpUserRemainsLocked(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    move v3, v1

    .line 17
    :goto_0
    const-string v4, "  User "

    .line 18
    .line 19
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpPackage:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->matcher:Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    if-ge v3, v2, :cond_4

    .line 25
    .line 26
    iget-object v8, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    check-cast v8, Lcom/android/server/am/ServiceRecord;

    .line 33
    .line 34
    iget-object v9, v8, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 35
    .line 36
    invoke-virtual {v6, v9, v8}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Landroid/content/ComponentName;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    if-eqz v5, :cond_1

    .line 44
    .line 45
    iget-object v6, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 46
    .line 47
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-nez v5, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 57
    .line 58
    if-nez v5, :cond_3

    .line 59
    .line 60
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 61
    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 70
    .line 71
    const-string v6, " delayed start services:"

    .line 72
    .line 73
    invoke-static {p1, v5, v4, v6}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 77
    .line 78
    :cond_3
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 79
    .line 80
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 81
    .line 82
    const-string v5, "  * Delayed start "

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 88
    .line 89
    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 96
    .line 97
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    :goto_2
    if-ge v1, v2, :cond_9

    .line 104
    .line 105
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 112
    .line 113
    iget-object v8, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 114
    .line 115
    invoke-virtual {v6, v8, v3}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Landroid/content/ComponentName;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-nez v8, :cond_5

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    if-eqz v5, :cond_6

    .line 123
    .line 124
    iget-object v8, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 125
    .line 126
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-nez v8, :cond_6

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_6
    iget-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 136
    .line 137
    if-nez v8, :cond_8

    .line 138
    .line 139
    iget-boolean v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 140
    .line 141
    if-eqz v8, :cond_7

    .line 142
    .line 143
    iget-object v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 144
    .line 145
    invoke-virtual {v8}, Ljava/io/PrintWriter;->println()V

    .line 146
    .line 147
    .line 148
    :cond_7
    iget-object v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 149
    .line 150
    const-string v9, " starting in background:"

    .line 151
    .line 152
    invoke-static {p1, v8, v4, v9}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 156
    .line 157
    :cond_8
    iput-boolean v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printedAnything:Z

    .line 158
    .line 159
    iget-object v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 160
    .line 161
    const-string v9, "  * Starting bg "

    .line 162
    .line 163
    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object v8, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->pw:Ljava/io/PrintWriter;

    .line 167
    .line 168
    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_9
    return-void
.end method

.method public final dumpWithClient()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpHeaderLocked()V

    .line 10
    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 13
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 14
    .line 15
    .line 16
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    array-length v1, v0

    .line 27
    const/4 v2, 0x0

    .line 28
    move v3, v2

    .line 29
    :goto_0
    if-ge v3, v1, :cond_4

    .line 30
    .line 31
    aget v4, v0, v3

    .line 32
    .line 33
    move v5, v2

    .line 34
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-ge v5, v6, :cond_0

    .line 41
    .line 42
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 49
    .line 50
    iget v6, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 51
    .line 52
    if-eq v6, v4, :cond_0

    .line 53
    .line 54
    add-int/lit8 v5, v5, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    goto :goto_4

    .line 59
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 60
    .line 61
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-ge v5, v6, :cond_3

    .line 68
    .line 69
    iput-boolean v2, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 70
    .line 71
    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-ge v5, v6, :cond_2

    .line 78
    .line 79
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->services:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 86
    .line 87
    add-int/lit8 v5, v5, 0x1

    .line 88
    .line 89
    iget v7, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 90
    .line 91
    if-eq v7, v4, :cond_1

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 95
    .line 96
    iget-object v7, v7, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 97
    .line 98
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 99
    .line 100
    .line 101
    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceLocalLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 103
    .line 104
    .line 105
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpServiceClient(Lcom/android/server/am/ServiceRecord;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :cond_2
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 120
    .line 121
    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->printed:Z

    .line 122
    .line 123
    or-int/2addr v5, v6

    .line 124
    iput-boolean v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->needSep:Z

    .line 125
    .line 126
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 127
    .line 128
    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 129
    .line 130
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 131
    .line 132
    .line 133
    monitor-enter v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 134
    :try_start_6
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpUserRemainsLocked(I)V

    .line 135
    .line 136
    .line 137
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 138
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 139
    .line 140
    .line 141
    add-int/lit8 v3, v3, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :catchall_1
    move-exception v0

    .line 145
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 146
    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 147
    .line 148
    .line 149
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 150
    :goto_4
    const-string v1, "ActivityManager"

    .line 151
    .line 152
    const-string v2, "Exception in dumpServicesLocked"

    .line 153
    .line 154
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    .line 156
    .line 157
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceDumper;->this$0:Lcom/android/server/am/ActiveServices;

    .line 158
    .line 159
    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 160
    .line 161
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 162
    .line 163
    .line 164
    monitor-enter v1

    .line 165
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$ServiceDumper;->dumpRemainsLocked()V

    .line 166
    .line 167
    .line 168
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 169
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :catchall_2
    move-exception p0

    .line 174
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 175
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 176
    .line 177
    .line 178
    throw p0

    .line 179
    :catchall_3
    move-exception p0

    .line 180
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 181
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 182
    .line 183
    .line 184
    throw p0
.end method
