.class public abstract Lcom/android/server/knox/zt/devicetrust/data/SchedClsData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final uid:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedClsData;->uid:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getPid()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedClsData;->uid:I

    .line 2
    .line 3
    return p0
.end method
