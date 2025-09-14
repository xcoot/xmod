.class public final synthetic Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda0;->f$0:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda0;->f$0:J

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v2, ","

    .line 16
    .line 17
    invoke-static {p1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    array-length v3, v2

    .line 22
    const/4 v4, 0x4

    .line 23
    const-string v5, "AS.SoundDoseHelper"

    .line 24
    .line 25
    if-eq v3, v4, :cond_1

    .line 26
    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "Expecting 4 fields for a SoundDoseRecord, parsed "

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    array-length v0, v2

    .line 35
    invoke-static {p1, v0, v5}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v3, Landroid/media/SoundDoseRecord;

    .line 40
    .line 41
    invoke-direct {v3}, Landroid/media/SoundDoseRecord;-><init>()V

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    :try_start_0
    aget-object v4, v2, v4

    .line 46
    .line 47
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    sub-long/2addr v6, v0

    .line 52
    iput-wide v6, v3, Landroid/media/SoundDoseRecord;->timestamp:J

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    aget-object v0, v2, v0

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, v3, Landroid/media/SoundDoseRecord;->duration:I

    .line 62
    .line 63
    const/4 v0, 0x2

    .line 64
    aget-object v0, v2, v0

    .line 65
    .line 66
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, v3, Landroid/media/SoundDoseRecord;->value:F

    .line 71
    .line 72
    const/4 v0, 0x3

    .line 73
    aget-object v0, v2, v0

    .line 74
    .line 75
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, v3, Landroid/media/SoundDoseRecord;->averageMel:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    move-object p0, v3

    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v1, "Unable to parse persisted SoundDoseRecord: "

    .line 85
    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v5, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    :cond_2
    :goto_0
    return-object p0
.end method
