.class public final Lcom/android/server/display/config/SupportedModeData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final refreshRate:F

.field public final vsyncRate:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/display/config/SupportedModeData;->refreshRate:F

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/display/config/SupportedModeData;->vsyncRate:F

    .line 7
    .line 8
    return-void
.end method

.method public static load(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;

    .line 27
    .line 28
    new-instance v2, Lcom/android/server/display/config/SupportedModeData;

    .line 29
    .line 30
    iget-object v3, v1, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->first:Ljava/math/BigDecimal;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    iget-object v1, v1, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->second:Ljava/math/BigDecimal;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-direct {v2, v3, v1}, Lcom/android/server/display/config/SupportedModeData;-><init>(FF)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SupportedModeData{refreshRate= "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/display/config/SupportedModeData;->refreshRate:F

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", vsyncRate= "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/display/config/SupportedModeData;->vsyncRate:F

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 p0, 0x7d

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
