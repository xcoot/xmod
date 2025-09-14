.class public final Lcom/android/server/knox/zt/devicetrust/data/ProcData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final event:I


# direct methods
.method public constructor <init>(ILcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;-><init>(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcData;->event:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getTypeChecked()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcData;->event:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;->realData:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 8
    .line 9
    instance-of v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExecData;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;->realData:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 15
    .line 16
    instance-of v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;->realData:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 22
    .line 23
    instance-of v0, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessForkData;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
