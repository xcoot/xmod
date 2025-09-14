.class public final Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;


# instance fields
.field public final maxPendingTimeUs:J

.field public final minPendingTimeUs:J

.field public final minTimeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v7, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    .line 2
    .line 3
    const-wide v3, 0xd693a400L

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide v5, 0xd693a400L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v1, 0xd693a400L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    move-object v0, v7

    .line 19
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;-><init>(JJJ)V

    .line 20
    .line 21
    .line 22
    sput-object v7, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->DEFAULT:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minTimeUs:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->minPendingTimeUs:J

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->maxPendingTimeUs:J

    .line 9
    .line 10
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;
    .locals 12

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    array-length v0, p0

    .line 9
    sget-object v2, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;->DEFAULT:Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    aget-object v0, p0, v0

    .line 16
    .line 17
    const-wide v3, 0xd693a400L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    move-wide v6, v0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-wide v6, v3

    .line 29
    :goto_0
    const/4 v0, 0x1

    .line 30
    aget-object v0, p0, v0

    .line 31
    .line 32
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    move-wide v8, v0

    .line 37
    goto :goto_1

    .line 38
    :catch_1
    move-wide v8, v3

    .line 39
    :goto_1
    const/4 v0, 0x2

    .line 40
    aget-object p0, p0, v0

    .line 41
    .line 42
    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 46
    :catch_2
    move-wide v10, v3

    .line 47
    const-wide/16 v0, 0x0

    .line 48
    .line 49
    cmp-long p0, v0, v6

    .line 50
    .line 51
    if-gtz p0, :cond_1

    .line 52
    .line 53
    cmp-long p0, v6, v8

    .line 54
    .line 55
    if-gtz p0, :cond_1

    .line 56
    .line 57
    cmp-long p0, v8, v10

    .line 58
    .line 59
    if-gtz p0, :cond_1

    .line 60
    .line 61
    new-instance p0, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;

    .line 62
    .line 63
    move-object v5, p0

    .line 64
    invoke-direct/range {v5 .. v11}, Lcom/android/server/pm/PerPackageReadTimeouts$Timeouts;-><init>(JJJ)V

    .line 65
    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_1
    return-object v2
.end method
