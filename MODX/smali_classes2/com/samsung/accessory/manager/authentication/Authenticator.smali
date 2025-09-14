.class public abstract Lcom/samsung/accessory/manager/authentication/Authenticator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

.field public mContext:Landroid/content/Context;

.field public mType:I


# virtual methods
.method public final sendStopAuth()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendStopAuth()Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 2

    .line 1
    iget v0, p2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final setSessionState(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/Authenticator;->mConnectivity:Lcom/samsung/accessory/manager/connectivity/Connectivity;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    .line 6
    .line 7
    :cond_0
    return-void
.end method
