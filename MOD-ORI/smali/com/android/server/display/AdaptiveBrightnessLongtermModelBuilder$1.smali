.class public final Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .line 1
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 7
    .line 8
    check-cast p2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    cmpl-float p0, p0, v0

    .line 19
    .line 20
    if-lez p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    cmpg-float p0, p0, p1

    .line 33
    .line 34
    if-gez p0, :cond_1

    .line 35
    .line 36
    const/4 p0, -0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    :goto_0
    return p0

    .line 40
    :pswitch_0
    check-cast p1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 41
    .line 42
    check-cast p2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    cmpl-float p0, p0, v0

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    if-lez p0, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    cmpg-float p0, p0, v1

    .line 67
    .line 68
    const/4 v1, -0x1

    .line 69
    if-gez p0, :cond_3

    .line 70
    .line 71
    :goto_1
    move v0, v1

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLastUserBrightnessTime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLastUserBrightnessTime()J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    cmp-long p0, v2, v4

    .line 82
    .line 83
    if-lez p0, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLastUserBrightnessTime()J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    invoke-virtual {p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLastUserBrightnessTime()J

    .line 91
    .line 92
    .line 93
    move-result-wide p0

    .line 94
    cmp-long p0, v2, p0

    .line 95
    .line 96
    if-gez p0, :cond_5

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_5
    const/4 v0, 0x0

    .line 100
    :goto_2
    return v0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
