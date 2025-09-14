.class public final Lcom/android/server/am/mars/MARsBigData$UsageInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final batteryUsage:Ljava/lang/String;

.field public final disableLevelSize:Ljava/lang/String;

.field public final extras:Ljava/lang/String;

.field public final fasLevelSize:Ljava/lang/String;

.field public final forceStopLevelSize:Ljava/lang/String;

.field public final freecessLevelSize:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final totalSize:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "IllegalArgumentException"

    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->packageName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->totalSize:Ljava/lang/String;

    .line 4
    const-string v1, "0"

    iput-object v1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->freecessLevelSize:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->fasLevelSize:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->forceStopLevelSize:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->disableLevelSize:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->batteryUsage:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->extras:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/android/server/am/mars/MARsBigData$LevelInfo;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->packageName:Ljava/lang/String;

    if-nez p1, :cond_0

    move-object p1, v0

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->totalSize:Ljava/lang/String;

    const/4 p1, 0x0

    .line 13
    aget-object p1, p2, p1

    iget p1, p1, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->freecessLevelSize:Ljava/lang/String;

    const/4 p1, 0x1

    .line 14
    aget-object p1, p2, p1

    iget p1, p1, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->fasLevelSize:Ljava/lang/String;

    const/4 p1, 0x2

    .line 15
    aget-object p1, p2, p1

    iget p1, p1, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->forceStopLevelSize:Ljava/lang/String;

    const/4 p1, 0x3

    .line 16
    aget-object p1, p2, p1

    iget p1, p1, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->disableLevelSize:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->batteryUsage:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->extras:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "PKNA"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->packageName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "PKLV"

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->totalSize:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "COMA"

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->freecessLevelSize:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "COMS"

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->fasLevelSize:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "COMR"

    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->forceStopLevelSize:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "COMB"

    .line 47
    .line 48
    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->disableLevelSize:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "BATU"

    .line 55
    .line 56
    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->batteryUsage:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "EXTR"

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->extras:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const/4 v0, 0x1

    .line 79
    invoke-static {v0, v0, p0}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method
