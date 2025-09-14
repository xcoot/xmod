.class public final Lcom/android/server/enterprise/application/ProcessStats$Stats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public active:Z

.field public added:Z

.field public baseName:Ljava/lang/String;

.field public base_majfaults:J

.field public base_minfaults:J

.field public base_stime:J

.field public base_utime:J

.field public final cmdlineFile:Ljava/lang/String;

.field public interesting:Z

.field public name:Ljava/lang/String;

.field public final pid:I

.field public rel_stime:I

.field public rel_utime:I

.field public removed:Z

.field public final statFile:Ljava/lang/String;

.field public final threadStats:Ljava/util/ArrayList;

.field public final threadsDir:Ljava/lang/String;

.field public working:Z

.field public final workingThreads:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    .line 5
    .line 6
    const-string/jumbo v0, "task"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "stat"

    .line 10
    .line 11
    .line 12
    const-string v2, "/proc"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-gez p2, :cond_0

    .line 16
    .line 17
    new-instance p2, Ljava/io/File;

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p2, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Ljava/io/File;

    .line 27
    .line 28
    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    .line 36
    .line 37
    new-instance p1, Ljava/io/File;

    .line 38
    .line 39
    const-string/jumbo v1, "cmdline"

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    .line 50
    .line 51
    new-instance p1, Ljava/io/File;

    .line 52
    .line 53
    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v3, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    .line 63
    .line 64
    iput-object v3, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance v4, Ljava/io/File;

    .line 68
    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {v4, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance p2, Ljava/io/File;

    .line 77
    .line 78
    new-instance v2, Ljava/io/File;

    .line 79
    .line 80
    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p2, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Ljava/io/File;

    .line 91
    .line 92
    invoke-direct {p1, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    .line 100
    .line 101
    iput-object v3, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    .line 102
    .line 103
    iput-object v3, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    .line 104
    .line 105
    iput-object v3, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    .line 106
    .line 107
    iput-object v3, p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    .line 108
    .line 109
    :goto_0
    return-void
.end method
