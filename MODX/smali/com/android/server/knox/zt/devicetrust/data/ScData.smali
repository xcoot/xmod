.class public final Lcom/android/server/knox/zt/devicetrust/data/ScData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TAG:Ljava/lang/String; = "ScData"


# instance fields
.field public final data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

.field public final nr:I


# direct methods
.method public constructor <init>(ILcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    .line 7
    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->nr:I

    .line 9
    iput-object p2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 11
    return-void
.end method


# virtual methods
.method public final adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 10
    move-result-object p0

    .line 11
    :cond_0
    return-object p0
.end method

.method public final getCloseData()Lcom/android/server/knox/zt/devicetrust/data/ScCloseData;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 3
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScCloseData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    return-object v0
.end method

.method public final getEvent()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getEvent()I

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final getExecveData()Lcom/android/server/knox/zt/devicetrust/data/ScExecveData;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 3
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScExecveData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    return-object v0
.end method

.method public final getFchmodData()Lcom/android/server/knox/zt/devicetrust/data/ScFchmodData;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 3
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScFchmodData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    return-object v0
.end method

.method public final getFchmodatData()Lcom/android/server/knox/zt/devicetrust/data/ScFchmodatData;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 3
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScFchmodatData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    return-object v0
.end method

.method public final getFchownData()Lcom/android/server/knox/zt/devicetrust/data/ScFchownData;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 3
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    return-object v0
.end method

.method public final getFchownatData()Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 3
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    return-object v0
.end method

.method public final getMemfdCreateData()Lcom/android/server/knox/zt/devicetrust/data/ScMemfdCreateData;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 3
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScMemfdCreateData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    return-object v0
.end method

.method public final getMountData()Lcom/android/server/knox/zt/devicetrust/data/ScMountData;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 3
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    return-object v0
.end method

.method public final getOpenData()Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->data:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 3
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->printCastError()V

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    return-object v0
.end method

.method public final getPid()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid()I

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final getTime()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 14
    return-wide v0
.end method

.method public final getUid()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid()I

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public final printCastError()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->TAG:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "Not castable(NR : "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->nr:I

    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string p0, ")"

    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public final self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ScData;->nr:I

    .line 3
    const/16 v1, 0x28

    .line 5
    if-eq v0, v1, :cond_2

    .line 7
    const/16 v1, 0xdd

    .line 9
    if-eq v0, v1, :cond_1

    .line 11
    const/16 v1, 0x117

    .line 13
    if-eq v0, v1, :cond_0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getCloseData()Lcom/android/server/knox/zt/devicetrust/data/ScCloseData;

    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getOpenData()Lcom/android/server/knox/zt/devicetrust/data/ScOpenData;

    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getFchownData()Lcom/android/server/knox/zt/devicetrust/data/ScFchownData;

    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getFchownatData()Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;

    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getFchmodatData()Lcom/android/server/knox/zt/devicetrust/data/ScFchmodatData;

    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getFchmodData()Lcom/android/server/knox/zt/devicetrust/data/ScFchmodData;

    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getMemfdCreateData()Lcom/android/server/knox/zt/devicetrust/data/ScMemfdCreateData;

    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getExecveData()Lcom/android/server/knox/zt/devicetrust/data/ScExecveData;

    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->getMountData()Lcom/android/server/knox/zt/devicetrust/data/ScMountData;

    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toBundle()Landroid/os/Bundle;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    .line 14
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 17
    return-object p0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toJson()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    .line 14
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 17
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final toLine()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toLine()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, ""

    .line 14
    return-object p0
.end method

.method public final toMap()Ljava/util/Map;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/ScData;->self()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toMap()Ljava/util/Map;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    .line 14
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 17
    return-object p0
.end method
